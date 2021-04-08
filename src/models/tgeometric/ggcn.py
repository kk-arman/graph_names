import torch

from torch import nn
from torch import functional as F
from .gated_graph_conv import GatedGraphConv
 


class GGCN(nn.Module):
    def __init__(self,
                 decoder,
                 vocabulary,
                 num_agg_steps,
                 node_type_embed_dim = 10,
                 node_attr_embed_dim = 10,
                 encoder_step_norm=False,
                 encoder_output_dim = 128):
        super(GGCN, self).__init__()
        self.node_annotation_dim = node_type_embed_dim  + node_attr_embed_dim
        self.node_type_embed_dim = node_type_embed_dim
        self.node_attr_embed_dim = node_attr_embed_dim
        self.attn_weight = None
        self.node_type_emb = nn.Embedding(vocabulary.num_node_types, node_type_embed_dim)
        self.node_attr_emb = nn.Embedding(vocabulary.num_node_attrs, node_attr_embed_dim)
        self.num_node_types = vocabulary.num_node_types
        self.encoder = GatedGraphConv(out_channels=self.node_annotation_dim,
                                      num_layers=num_agg_steps,
                                      normalize=encoder_step_norm,
                                      num_edge_types=vocabulary.num_edge_types).jittable()
        self.attn_layer = nn.Linear(self.node_annotation_dim, 1)
        self.attn_softmax = nn.Softmax(dim=-1)
        self.enc_layer = nn.Linear(
            self.node_annotation_dim * self.num_node_types,
            encoder_output_dim
        )
        self.decoder = decoder
        
    def device(self):
        return self.attn_layer.bias.device
    
    def forward(self, x_type, x_attrs, x_attrs_mask, edge_index, edge_attr, num_graphs, batch):
        x = self.encode_graph(x_type, x_attrs, x_attrs_mask, edge_index, edge_attr, num_graphs, batch)
        prediction = self.decoder(x)
        return prediction
    
    def encode_graph(self, x_type, x_attrs, x_attrs_mask, edge_index, edge_attr, num_graphs, batch):
        x_type_embed = self.node_type_emb(x_type)
        x_attr_embed = torch.zeros(x_type_embed.size(0),
                                   self.node_attr_embed_dim,
                                   device=self.device())
        x_attr_embed = self.compute_attrs_embed(x_attrs, x_attrs_mask, x_attr_embed)
        x = torch.cat((x_type_embed, x_attr_embed), 1)
        x = self.encoder(x, edge_index, edge_attr)

        agg_x = self.aggregate_enc(x, num_graphs, batch, x_type)
        agg_x = self.attn_calc(agg_x)
        agg_x = self.enc_layer(agg_x)
        
        return agg_x
    
    def attn_calc(self, agg_x):
        weight = self.attn_layer(agg_x)
        weight = weight.squeeze()
        self.attn_weight = self.attn_softmax(weight)
        self.attn_weight = self.attn_weight.unsqueeze(-1)
        self.attn_weight = self.attn_weight.expand(agg_x.size())
        attn_applied = self.attn_weight * agg_x
        return torch.flatten(attn_applied, start_dim=1)

    def aggregate_enc(self, x, batch_size, batch, x_type):
        result = torch.zeros(batch_size.item(), self.num_node_types, self.node_annotation_dim, device=self.device())
        for batch_i in range(int(batch_size.item())):
            x_node_feats = x[batch == batch_i,:] # node features of graph i 
            x_feat_types = x_type[batch == batch_i] # types of node_feature in graphs i 
            for type_j in range(self.num_node_types):
                x_feat = x_node_feats[x_feat_types==type_j,:]
                if x_feat.size(0) != 0:
                    mean_x_feat = torch.mean(x_feat,0) # we can try other aggregation methods
                    # max_x_feat, _ = torch.max(x_feat,0)
                    # min_x_feat, _ = torch.min(x_feat,0)
                    # std_x_feat = torch.std(x_feat,0)
                    # sum_x_feat = torch.sum(x_feat,0)
                    # result[batch_i,type_j,:] = torch.cat((mean_x_feat,max_x_feat,min_x_feat),-1)
                    result[batch_i,type_j,:] = mean_x_feat
        # result = torch.flatten(result, start_dim=1)
        return result
        
    
    def compute_attrs_embed(self, attribute_features, indices, attrs_embed):
        for i in range(len(indices)):
            emb = self.node_attr_emb(attribute_features[i,:indices[i]])
            attrs_embed[i] = torch.mean(emb,dim=0)
        return attrs_embed