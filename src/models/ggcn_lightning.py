import sys
import os

import torch
import torch.nn as nn
import pytorch_lightning as pl
import torch.optim as torch_optim
import torch_optimizer as external_optim

from pathlib import Path
from statistics import mean
from torch.optim.lr_scheduler import ReduceLROnPlateau
from torch.optim.lr_scheduler import CyclicLR
from torch_geometric.data import DataLoader

from .tgeometric.ggcn import GGCN
from .tgeometric import decoders
from .tgeometric.utils import print_prediction

os.environ['TOKENIZERS_PARALLELISM'] = 'true'
jtnames_src_path = Path(__file__).parent.parent
sys.path.append(jtnames_src_path.absolute())

from utility.metrics import get_sentence_similarity, get_similarity, set_sentence_model, acc_without_test, get_rouge_scores


class GGCNLightning(pl.LightningModule):

    def __init__(self,
                 vocabulary,
                 pad_index,
                 hparams,
                 train_df,
                 val_df,
                 test_df,
                 ):
        super().__init__()
        enc_output_dim = hparams['encoder_output_dim']
        node_type_embed_dim = hparams['node_type_embed_dim']
        node_attr_embed_dim = hparams['node_attr_embed_dim']
        node_annotation_dim = node_type_embed_dim  + node_attr_embed_dim 
        decoder_hidden_size = hparams['decoder_hidden_size'] 
        decoder_num_layers = hparams['decoder_num_layers']

        self.learning_rate = hparams['lr']
        self.metric_to_track = hparams['lr_scheduler_metric']
        self.optimizer = hparams['optimizer']
        self.lr_scheduler = hparams['lr_scheduler']

        self.train_df = train_df
        self.test_df = test_df
        self.val_df = val_df

        decoder = hparams['decoder']
        if decoder == 'simple':
            self.decoder = decoders.SimpleDecoder(vocabulary, enc_output_dim)  
        elif decoder == 'simple_improved':
            self.decoder = decoders.SimpleDecoderImproved(vocabulary, enc_output_dim)  
        elif decoder == 'rnn':
            self.decoder = decoders.RNN(vocabulary, enc_output_dim, decoder_hidden_size, decoder_num_layers)  
        elif decoder == 'gru_cell':
            self.decoder = decoders.GRUCellUnit(vocabulary, enc_output_dim)  
        else:
            self.decoder = hparams['decoder']
        
        self.criteria = nn.NLLLoss(ignore_index=pad_index, reduction='sum')
        set_sentence_model(hparams['sentence_encoder'])
        self.model = GGCN(self.decoder,
                          vocabulary, 
                          num_agg_steps=hparams['num_agg_steps'], 
                          node_type_embed_dim=node_type_embed_dim, 
                          node_attr_embed_dim=node_attr_embed_dim,
                          encoder_output_dim=enc_output_dim,
                          encoder_step_norm=hparams['encoder_step_norm']
                          ).to(self.device)
        self.batch_size = hparams['batch_size']
        self.vocabulary = vocabulary
        self.accuracy = pl.metrics.Accuracy()
        self.test_index = vocabulary.token_encoder['test']

        self.log('Model initialization', self)

        self.validation_avg = 0 
        self.validation_size = 0
        
    def get_optimizer(self, parameters):
        if self.optimizer == 'Adam':
            return torch_optim.Adam(parameters, self.learning_rate)
        if self.optimizer == 'Yogi':
            return external_optim.Yogi(parameters, self.learning_rate)
    
    def get_scheduler(self, optimizer):
        if self.lr_scheduler == 'ReduceLROnPlateau':
            return ReduceLROnPlateau(optimizer, 'min', patience=10, verbose = True)   
        if self.lr_scheduler == 'CyclicLR':
            return CyclicLR(optimizer, base_lr=0.0001, max_lr=0.01, verbose = True)

    def configure_optimizers(self):
        nets = [self.model, self.decoder]        
        parameters = set()
        for net in nets:
            parameters |= set(net.parameters())
        optimizer = self.get_optimizer(parameters)            
        lr_scheduler = self.get_scheduler(optimizer)
        return {
            'optimizer': optimizer,
            'lr_scheduler': lr_scheduler,
            'monitor': self.metric_to_track
            }
        
    def train_dataloader(self):
        return DataLoader(
            self.train_df,
            batch_size=self.batch_size,
            shuffle=True,
            num_workers=16,
            pin_memory=True, 
            drop_last=True
        )
    
    def test_dataloader(self):
        return DataLoader(self.test_df, batch_size=self.batch_size,
                          pin_memory=True, num_workers=4, drop_last=True)
    
    def val_dataloader(self):
        return DataLoader(self.val_df, batch_size=self.batch_size,
                          pin_memory=True, num_workers=4, drop_last=True)
        
    def forward(self, x_type, x_attrs, x_attrs_mask, edge_index, edge_attr, num_graphs, batch):
        return self.model(x_type, x_attrs, x_attrs_mask,  edge_index, edge_attr, num_graphs, batch)

    def _fwd(self, batch):
        return self.model(
            batch.x_type, 
            batch.x_attrs, 
            batch.x_attrs_mask, 
            batch.edge_index, 
            batch.edge_attr, 
            torch.tensor([batch.num_graphs]),
            batch.batch)
    
    def calc_loss(self, out, y):
        loss = 0
        for i in range(out.size(0)):
            loss += self.criteria(out[i], y[i]) 
        return loss

    def get_sim(self, logits, y): 
        return get_similarity(logits, y, self.vocabulary, self.test_index)

    def get_rouge(self, logits, y, avg = True): 
        return get_rouge_scores(logits, y, self.vocabulary, self.test_index, avg)

    def training_step(self, batch, batch_idx):
        out = self._fwd(batch)
        logits = out.argmax(2)
        loss = self.calc_loss(out, batch.y)  
        acc = self.accuracy(logits.masked_select(batch.y_mask),
                            batch.y.masked_select(batch.y_mask))
        acc_no_test = acc_without_test(logits.masked_select(batch.y_mask),
                                       batch.y.masked_select(batch.y_mask), self.test_index)

        self.log('train_loss', loss, prog_bar=True, on_epoch=True, on_step=True)                     
        self.log('train_acc', acc, prog_bar=True, on_epoch=True, on_step=True)
        self.log('train_acc_no_test', acc_no_test, prog_bar=True, on_epoch=True, on_step=True)

        # rouge = self.get_rouge(logits, batch.y)
        # self.log('train_rouge-1_f', rouge['rouge-1']['f'], prog_bar=False, on_epoch=True, on_step=False)
        # self.log('train_rouge-2_f', rouge['rouge-2']['f'], prog_bar=False, on_epoch=True, on_step=False)
        # self.log('train_rouge-l_r', rouge['rouge-l']['f'], prog_bar=False, on_epoch=True, on_step=False)
        return loss

    def validation_epoch_end(self, outputs):
        self.log("val_acc_by_token", self.validation_avg / self.validation_size)
        self.validation_avg = 0 
        self.validation_size = 0

    def validation_step(self, batch, batch_idx):
        out = self._fwd(batch)
        logits = out.argmax(2)
        loss = self.calc_loss(out, batch.y)
        acc = self.accuracy(logits.masked_select(batch.y_mask),
                            batch.y.masked_select(batch.y_mask))
        acc_no_test = acc_without_test(logits.masked_select(batch.y_mask),
                                       batch.y.masked_select(batch.y_mask), self.test_index)
        sim = self.get_sim(logits, batch.y)

        # self.validation_correct += sum(logits.masked_select(batch.y_mask) == batch.y.masked_select(batch.y_mask))
        self.validation_size += len(batch.y_mask)

        avg = 0
        for i,m in enumerate(batch.y_mask):
            avg += sum(logits[i].masked_select(m) == batch.y[i].masked_select(m)).item()/ len(batch.y[i].masked_select(m))

        self.validation_avg += avg
        
        self.log('val_loss', loss, prog_bar=False, on_epoch=True, on_step=False)
        self.log('val_acc', acc, prog_bar=False, on_epoch=True, on_step=False)
        self.log('val_acc_no_test', acc_no_test, prog_bar=True, on_epoch=True, on_step=False)
        self.log('val_sim', sim, prog_bar=False, on_epoch=True, on_step=False)

        rouge = self.get_rouge(logits, batch.y)
        self.log('val_rouge-1_f', rouge['rouge-1']['f'], prog_bar=False, on_epoch=True, on_step=False)
        self.log('val_rouge-2_f', rouge['rouge-2']['f'], prog_bar=False, on_epoch=True, on_step=False)
        self.log('val_rouge-l_f', rouge['rouge-l']['f'], prog_bar=False, on_epoch=True, on_step=False)
        return loss

    def test_step(self, batch, batch_idx):
        out = self._fwd(batch)
        logits = out.argmax(2)
        loss = self.calc_loss(out, batch.y)
        acc = self.accuracy(logits.masked_select(batch.y_mask),
                            batch.y.masked_select(batch.y_mask))
        acc_no_test = acc_without_test(logits.masked_select(batch.y_mask),
                                batch.y.masked_select(batch.y_mask), self.test_index)
        sim = self.get_sim(logits, batch.y)

        self.log('test_acc', acc, prog_bar=True, on_epoch=True, on_step=False)
        self.log('test_acc_no_test', acc_no_test, prog_bar=True, on_epoch=True, on_step=True)
        self.log('test_sim', sim, prog_bar=True, on_epoch=True, on_step=False)

        rouge = self.get_rouge(logits, batch.y)
        self.log('test_rouge-1_f', rouge['rouge-1']['f'], prog_bar=False, on_epoch=True, on_step=False)
        self.log('test_rouge-2_f', rouge['rouge-2']['f'], prog_bar=False, on_epoch=True, on_step=False)
        self.log('test_rouge-l_r', rouge['rouge-l']['f'], prog_bar=False, on_epoch=True, on_step=False)
        return loss