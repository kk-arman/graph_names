import networkx as nx
import collections
import numpy as np
import torch
import re
import os
from torch_geometric.data import Data
from .utils import node_has_tokens
from .utils import createTrace
from utility.relabel import convert_node_labels_to_integers

class Graph2TorchGeometric:
    
    def __init__(self, vocabulary):
        self.vocabulary = vocabulary
        self.max_name_length = vocabulary.max_name_length + 1
                   
    def get_torch_geometric_data(self, graph: nx.MultiDiGraph, method_name: str):
        num_nodes = len(graph.nodes())
        graph, mapping = convert_node_labels_to_integers(graph, first_label=0)
        edge_index = []
        edge_attr = []
        x_type = []
        x_attrs = [
            [self.vocabulary.token_encoder['<pad>']
             for _ in range(self.vocabulary.max_count_tokens)]
            for _ in range(num_nodes)]
        y_tokens = [
            [self.vocabulary.token_encoder['<pad>'] for _ in range(self.max_name_length)]
        ]
        x_attrs_mask = [1 for _ in range(num_nodes)]

        for idx, (node_id, node) in enumerate(graph.nodes(data=True)):
            # if 'type' not in node: continue
            x_type.append(self.vocabulary.node_type_encoder[node['type']])
            if node_has_tokens(node):
                subtokens = self.vocabulary.split_fun(node['identifier'])
                x_attrs[int(idx)][:len(subtokens)]  = [self.vocabulary.token_encoder[t] for t in subtokens]
                x_attrs_mask[int(idx)] = len(subtokens)+1

        edge_data = collections.OrderedDict()
        
        for n1, n2, data in graph.edges(data=True):  
            if (n1, n2) not in edge_data:
                edge_data[(n1, n2)] = []
            edge_data_list = edge_data.get((n1, n2))
            edge_data_list.append(data['type'])

        traces = self.get_traces(graph, mapping)
        
        edge_index = [[n1, n2] for n1, n2 in edge_data.keys()]
        edge_attr = np.zeros([len(edge_index), self.vocabulary.num_edge_types])
        for idx, (_, edata) in enumerate(edge_data.items()):
            for etype in edata:
                edge_attr[idx][self.vocabulary.edge_type_encoder[etype]] = 1
    
        y_label = [[self.vocabulary.label_encoder[method_name]]]
        subtokens = [self.vocabulary.token_encoder[t]
                     for t in self.vocabulary.split_fun(method_name) + ['<EOS>']]
        y_tokens[0][:len(subtokens)] = subtokens
        y_mask = torch.zeros([1, self.max_name_length], dtype=torch.bool)
        y_mask[0, :len(subtokens)-1] = 1
        edge_index = torch.tensor(edge_index, dtype=torch.long).permute(1, 0)
        edge_attr = torch.tensor(edge_attr, dtype=torch.long)
        x_type = torch.tensor(x_type, dtype=torch.long)
        x_attrs = torch.tensor(x_attrs, dtype=torch.long)
        x_attrs_mask = torch.tensor(x_attrs_mask, dtype=torch.long)
        y_label = torch.tensor(y_label, dtype=torch.long).permute(1, 0)
        y_tokens = torch.tensor(y_tokens, dtype=torch.long)
        trace = torch.tensor(traces, dtype=torch.long)
        data = Data(edge_index=edge_index,
                    edge_attr=edge_attr,
                    x_type=x_type,
                    x_attrs=x_attrs,
                    y=y_tokens,
                    y_mask=y_mask,
                    x_attrs_mask = x_attrs_mask,
                    method_name=method_name,
                    trace_sequence=trace
                    )
        data.num_nodes = num_nodes
        return data
    
    def get_traces(self, graph, mapping):
        traces_remapped =[]
        if 'TRACE_ORDER' in graph.graph:
            trace_sequence = [x for x in graph.graph['TRACE_ORDER'].split(',')]        
            for trace in trace_sequence:
                traces_remapped.append(mapping[trace])
        return traces_remapped
