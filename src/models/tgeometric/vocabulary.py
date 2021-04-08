import os
import json
import pickle
import javalang
import numpy as np
import networkx as nx

from tqdm import tqdm
from pathlib import Path
from pqdm.processes import pqdm
from typing import Optional, Tuple, Set
from sklearn.preprocessing import LabelEncoder

from .utils import node_has_tokens


FileData = Tuple[str, Set[str], Set[str], Set[str]]


class Vocabulary:

    def __init__(
        self,
        directories,
        split_fun,
        nan_val=0,
        special_tokens=['<pad>', '<SOS>', '<EOS>']):
        self.max_count_tokens = 0
        self.max_name_length = 0
        self.split_fun = split_fun
        
        tokens = set(special_tokens)
        labels = set()
        node_types = set()
        edge_types = set()
        all_files = set()

        for directory in directories:
            all_files.update(set(directory.iterdir()))

        data = pqdm(all_files, Vocabulary.extract_data, int(os.cpu_count() / 1.5))

        for fmethod_name, fnode_texts, fnode_types, fedge_types in data:
            labels.add(fmethod_name)
            tokens.update(split_fun(fmethod_name))
            node_types.update(fnode_types)
            edge_types.update(fedge_types)
            for node_text in fnode_texts:
                node_tokens = split_fun(node_text)
                tokens.update(node_tokens)
                self.max_count_tokens = max(len(node_tokens), self.max_count_tokens)
            self.max_name_length = max(len(split_fun(fmethod_name)), self.max_name_length)
        
        self.label_encoder = {item:val for val,item in enumerate(labels)}
        self.token_encoder = {item:val for val,item in enumerate(tokens)}
        self.node_type_encoder = {item:val for val,item in enumerate(node_types)}
        self.edge_type_encoder = {item:val for val,item in enumerate(edge_types)}
        
        self.inv_label_encoder = {v: k for k, v in self.label_encoder.items()}
        self.inv_token_encoder = {v: k for k, v in self.token_encoder.items()}
        self.inv_node_type_encoder = {v: k for k, v in self.node_type_encoder.items()}
        self.inv_edge_type_encoder = {v: k for k, v in self.edge_type_encoder.items()}

        self.num_edge_types = len(self.edge_type_encoder)
        self.num_node_types = len(self.node_type_encoder)
        self.num_node_attrs = len(self.token_encoder)

    @staticmethod
    def extract_data(_file: Path) -> Optional[FileData]:
        if not _file.suffix == '.gml':
            # print('not.gml', _file)
            return
        if '###' in _file.stem: method_name = _file.stem.split('###')[-1]
        else: method_name = _file.stem.split('______')[-1]
        edge_types = set()
        node_types = set()
        identifiers = set()
            
        graph = nx.read_graphml(_file.as_posix())

        for v1_idx, v2_idx, e in graph.edges(data=True):
            edge_types.add(e['type'])
            v1, v2 = graph.nodes[v1_idx], graph.nodes[v2_idx]
            for v in [v1, v2]:
                if 'type' in v: 
                    node_types.add(v['type'])
                else:
                    continue
                if node_has_tokens(v):
                    identifiers.add(v['identifier'])
        return method_name, identifiers, node_types, edge_types 

    def to_json(self, fname: str):
        data = {
            'encoders': {
                'token': self.token_encoder,
                'nodes_type': self.node_type_encoder,
                'edge_type': self.edge_type_encoder
            },
            'decoders': {
                'token': self.inv_token_encoder
            },
            'stats': {
                'num_edge_types': self.num_edge_types,
                'num_node_types': self.num_node_types,
                'num_node_attrs': self.num_node_attrs,
                'max_name_length': self.max_name_length,
                'max_count_tokens': self.max_count_tokens
            }
        }
        with open(fname, 'w') as fp:
            json.dump(data, fp, indent=2)

    @property
    def size(self):
        return len(self.token_encoder)
    
    def save(self, path: Path):
        with path.open('wb') as f:
            pickle.dump(self, f)

    @staticmethod
    def load(path: Path):
        with path.open('rb') as f:
            return pickle.load(f)