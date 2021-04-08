import json
import os
import re
import networkx as nx
import glob
import pandas as pd
import numpy as np
import argparse
import xml.etree.ElementTree as etree
from shutil import copy

from pathlib import Path
from tqdm import tqdm

regex = re.compile('[^a-zA-Z]')
CURRENT_DIR = Path(__file__).parent.absolute()
CSV_FILE = CURRENT_DIR / '../../data/builded_projects/good_methods_names_df.csv'
CLASS_GRAPHS_DIR = CURRENT_DIR / '../../data/processed/class_graphs_dvc/'
OUTPUT_DIR = CURRENT_DIR / '../../data/processed/fn_graphs/'
OUTPUT_LOG = CURRENT_DIR / '../../data/processed/class_graphs_logs.csv'

def split_df(df, save_path, test_min = 2000, val_size = 0.1):
    reps = df.repo_name.unique()
    np.random.shuffle(reps)
    test_reps = []
    counter = 0
    for i, r in enumerate(reps):
        if counter > test_min: break
        counter += len(df[df.repo_name == r])
        test_reps.append(r)
    test_df = df[df.repo_name.apply(lambda x: x in test_reps)]
    train_test_df = df[df.repo_name.apply(lambda x: x in reps[i:])].sample(frac = 1)
    val_df = train_test_df.iloc[:round(len(train_test_df) * val_size)]
    train_df = train_test_df.iloc[round(len(train_test_df) * val_size):]
    print(f"Train size {len(train_df)}, val size: {len(val_df)}, test_size: {len(test_df)}")
    
    test_df.to_csv(save_path/'test.csv') 
    val_df.to_csv(save_path/'val.csv')
    train_df.to_csv(save_path/'train.csv')

def filter_extracted_methods(fn_folder, df):
    new_df = pd.DataFrame(columns = ['repo_name', 'file_name', 'method_name'])
    reps = [x for x in fn_folder.glob('*/') if x.is_dir()]
    for r in tqdm(reps):
        files_and_names = [ (x.stem.split('______')[0] , x.stem.split('______')[-1]) for x in r.glob('*.gml') if x.is_file()]
        counter = 0
        for index,row in df[df.repo_name == r.stem].iterrows():
            if (Path(row.file_name).stem, row.method_name) in files_and_names: 
                new_df = new_df.append(row, ignore_index=True)
    return new_df


def split_to_folders(csv, fn_folder, output_folder):
    reps = csv.repo_name.unique()
    output_folder.mkdir(parents=True, exist_ok=True)
    for r in reps:
        for index, row in csv[csv.repo_name == r].iterrows():
            name = Path(row.file_name).stem + "______" + row.method_name + ".gml"
            copy(fn_folder / Path(r).stem / name, output_folder)

def get_fn_graph(path2cls_gml, path2cf_fun):
    with open(path2cf_fun, 'r') as f:
        cf_graph = f.readlines()

    gml_graph = nx.read_graphml(path2cls_gml)
    
    line2node_id = {}
    deleted_nodes = []
    nodes = {}
    main_line_id = -10
    main_node = None
    
    for node in gml_graph.nodes(data=True):
        if node[1]['type'] == 'MethodDeclaration' and path2cf_fun.split("______")[1].replace('.txt', '') in node[1]['text']:
            nodes[int(node[1]['lineID'])] = node
            nodes[int(node[1]['lineID']) - 1] = node
            nodes[int(node[1]['lineID']) + 1] = node
        if 'lineID' in node[1]:
            if int(node[1]['lineID']) not in line2node_id:
                line2node_id[int(node[1]['lineID'])] = node[0]
            elif int(line2node_id[int(node[1]['lineID'])]) > int(node[0]):
                line2node_id[int(node[1]['lineID'])] = node[0]
        if 'reference' in node[1]:
            if node[1]['reference'] == 'userDefinedMethodName' and path2cf_fun.split("______")[1].replace('.txt', '') in node[1]['text']:
                main_line_id = int(node[1]['lineID'])
    
    if main_line_id in nodes:
        main_node = nodes[main_line_id]
    if main_node is None:
        return nx.Graph()
    
    for line in cf_graph:
        start, end = map(int, line.replace('\n', '').split(" "))
        if start in line2node_id and end in line2node_id:
            gml_graph.add_edge(line2node_id[start], line2node_id[end],  type='CONTROL_FLOW')
    
    for node in gml_graph.nodes(data=True):
        if 'text' not in node[1]:
            deleted_nodes += [node[0]]
        elif node[1]['text'] not in main_node[1]['text']:
            deleted_nodes += [node[0]]
        elif node[1]['type'] == 'NormalAnnotationExpr':
            deleted_nodes += [node[0]]
    
    gml_graph.remove_nodes_from(deleted_nodes)
    descendants = nx.descendants(gml_graph, main_node[0])
    gml_graph.remove_nodes_from([node for node, attrs in gml_graph.nodes(data=True) if node not in descendants and node != main_node[0]])
    
    return nx.relabel.convert_node_labels_to_integers(gml_graph, first_label=1)


def join_graphs(src, tgt, lineID, invoked_method):
    tgt = nx.relabel.convert_node_labels_to_integers(tgt, first_label=max(src.nodes()) + 1)
    start_node = None
    for node in src.nodes(data=True):
        if regex.sub('', invoked_method).lower() in regex.sub('', node[1]['text']).lower() and 'Expr' in node[1]['type']:
            start_node = node
            break
    
    end_node = None
    for node in tgt.nodes(data=True):
        if node[1]['type'] == 'MethodDeclaration':
            end_node = node
            break
    
    if None in [start_node, end_node]:
        return src
    
    G = nx.Graph()
    G.add_nodes_from(list(src.nodes(data=True)) + list(tgt.nodes(data=True)))
    G.add_edges_from(list(src.edges(data=True)) + list(tgt.edges(data=True)))
    G.add_edge(start_node[0], end_node[0], type= 'AST')
    
    return G


def make_gsc(graph):
    first_cap_re = re.compile('(.)([A-Z][a-z]+)')
    all_cap_re = re.compile('([a-z0-9])([A-Z])')
    added_nodes = set()
    for node, data in list(graph.nodes(data=True)):
        if data['type'] == 'SimpleName' and 'identifier' in data:
            name = data['identifier'].strip('_')
#             graph.nodes[node].pop('identifier', None)
            s1 = first_cap_re.sub(r'\1_\2', name)
            s2 = all_cap_re.sub(r'\1_\2', s1).lower()
            node_subtokens = [st for st in s2.split('_') if st != '']
            
            for st in node_subtokens:
                graph.add_node(st, identifier=st, type='WORD')
                graph.add_edge(node, st, type='WORD_USE')
                graph.add_edge(st, node, type='REV_WORD_USE')
                added_nodes.add(st)
    
    return nx.relabel.convert_node_labels_to_integers(graph, first_label=1)



def build_fn_graphs(csv_file, inp, out, out_log=None):
    log = {
        'Project': [],
        'Class': [],
        'Method': [],
        'Success': [],
        'Reason': []
    }

    df_global = pd.read_csv(csv_file)
    projects = list(filter(lambda x: x!= '.ipynb_checkpoints', next(os.walk(inp))[1]))
    
    for project in projects:
        print('Parse:', project)
        df = df_global[df_global['repo_name'] == project]
        out_dir = os.path.join(out, project)
        os.makedirs(out_dir, exist_ok=True)
        
        for row in tqdm(df.values, position=0, leave=True):
            cls = row[2].split('/')[-1].replace('.java', '')
            method = row[3]
            file_name = cls + "______" + method + ".txt"
            
            log['Class'] += [cls]
            log['Method'] += [method]
            log['Project'] += [project]
            log['Success'] += [True]
            log['Reason'] += ['-']
            
            if not os.path.exists(os.path.join(inp, project, 'control_flow', file_name)):
                log['Success'][-1] = False
                log['Reason'][-1] = f'Control flow file {os.path.join(inp, project, "control_flow", file_name)} does not exist'
                continue
            elif not os.path.exists(os.path.join(inp, project, 'call_graph', file_name)):
                log['Success'][-1] = False
                log['Reason'][-1] = f'Call graph file {os.path.join(inp, project, "call_graph", file_name)} does not exist'
                continue

            try:
                base_graph = get_fn_graph(os.path.join(inp, project, 'gml', cls + '.gml'), 
                                        os.path.join(inp, project, 'control_flow', file_name))
            except etree.ParseError as e:
                print(f"Bad XML format filename: {file_name}")

            if len(base_graph.nodes) == 0:
                log['Success'][-1] = False
                log['Reason'][-1] = f'Test body parsing failed'
                continue
            
            for tnode in base_graph.nodes():
                # base_graph.nodes[tnode].pop('identifier', None)
                base_graph.nodes[tnode]['is_test'] = 'true'
            
            last_size = len(base_graph.nodes())
            with open(os.path.join(inp, project, 'call_graph', file_name), 'r') as f:     
                for line in f.readlines():
                    invoke_method, line_id = line.split('---')
                    invoke_method = invoke_method.replace(" ", "")
                    cls2, method_name = invoke_method.split('______')

                    method2 = os.path.join(inp, project, 'control_flow', invoke_method + '.txt')
                    cls2 = os.path.join(inp, project, 'gml', cls2 + '.gml')
                    try:
                        if os.path.exists(method2) and os.path.exists(cls2):
                            inv_graph = get_fn_graph(cls2, method2)
                            base_graph = join_graphs(base_graph, inv_graph, int(line_id), method_name)
                    except etree.ParseError as e:
                        print(f"Bad XML format method: {method_name}, filename: {file_name}")

            if not (len(base_graph.nodes()) - last_size == 0):
                # base_graph = make_gsc(base_graph)
                nx.write_graphml(base_graph, os.path.join(out_dir, cls + "______" + method + ".gml"))
            else:
                log['Success'][-1] = False
                log['Reason'][-1] = f'Invoked methods parsing failed'
    
    if out_log:
        pd.DataFrame.from_dict(log).to_csv(out_log)
        
if __name__ == "__main__":
    build_fn_graphs(CSV_FILE, CLASS_GRAPHS_DIR, OUTPUT_DIR, OUTPUT_LOG)
    new_df = filter_extracted_methods(OUTPUT_DIR, pd.read_csv(CSV_FILE))
    new_df.to_csv(OUTPUT_DIR / "good_names_after_graph_extraction.csv")
    split_df(new_df, OUTPUT_DIR)
    split_to_folders(pd.read_csv(OUTPUT_DIR/'test.csv'), OUTPUT_DIR, OUTPUT_DIR/'test')
    split_to_folders(pd.read_csv(OUTPUT_DIR/'val.csv'), OUTPUT_DIR, OUTPUT_DIR/'val')
    split_to_folders(pd.read_csv(OUTPUT_DIR/'train.csv'), OUTPUT_DIR, OUTPUT_DIR/'train')
