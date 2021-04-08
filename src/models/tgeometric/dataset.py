import networkx as nx
import numpy as np
import torch
import re
import os

from tqdm import tqdm
from .graph2torch_geomtric import Graph2TorchGeometric
from sklearn.preprocessing import OneHotEncoder
from torch_geometric.data import Dataset


class Preporcessor:
    
    def remove_test_identitifiers(self, graph):
        for idx, (node_id, node) in enumerate(graph.nodes(data=True)):
            if 'isTest' in node and 'identifier' in node:
                node['identifier'] = ''

            if 'is_test' in node and 'identifier' in node:
                node['identifier'] = ''


class TorchGeometricDataset(Dataset):
    
    def __init__(self, root, vocabulary):
        super(TorchGeometricDataset, self).__init__(None)
        
        self.raw_files = []
        self.processed_files = []
        self.preprocessor = Preporcessor()
        self.vocabulary = vocabulary
        self.vectorizer = Graph2TorchGeometric(vocabulary)

        for root, dirs, files in os.walk(root):
            if '.ipynb_checkpoints' in root:
                continue
            for _file in files:
                if _file.endswith('.gml'):
                    self.raw_files += [os.path.join(root, _file)]

    def len(self):
        return len(self.raw_files)

    def get(self, idx):
        gpath = self.raw_files[idx]
        graph = nx.read_graphml(gpath)
        if '###' in gpath: 
            method_name = gpath.split('###')[-1].replace('.gml', '')
            cls_name = gpath.split('###')[0]
        else:
            method_name = gpath.split('______')[-1].replace('.gml', '')
            cls_name = gpath.split('______')[0].split('/')[-1]
        self.preprocessor.remove_test_identitifiers(graph) 
        data = self.vectorizer.get_torch_geometric_data(graph, method_name)
        data.gml_filepath = gpath
        return data