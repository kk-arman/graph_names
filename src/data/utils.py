import shutil
import zipfile
import networkx as nx
from collections import defaultdict
import pandas as pd
from tqdm import tqdm
from pathlib import Path

def archive(path, archive_path):
    shutil.make_archive(archive_path, 'zip', path)

def extract(archive_path, path):
    with zipfile.ZipFile(archive_path, 'r') as zip_ref:
        zip_ref.extractall(path)
        root_folder_info = zip_ref.filelist[0]
    return root_folder_info.filename

def get_dict_repo_to_gml(projects_fn_folder: Path):
    dict_repo_to_gml = defaultdict(list)
    for x in [x for x in projects_fn_folder.glob('*/') if x.is_dir()]:
        if x.stem in ['test', 'train', 'val']: continue #if it is not repo folder
        d = []
        for y in [x for x in x.glob('*/') if x.is_file()]:
            d.append(y.stem)
        dict_repo_to_gml[x.stem] = d
    return dict_repo_to_gml

def get_gml_to_java_df(gml_files_path: Path, java_repositories_path: Path, dict_repo_to_gml: defaultdict):
    pathes_df = pd.DataFrame(columns = {'gml_path': [] ,'java_file_path': [], 'method_name': []})
    more_than_one = []
    found_none = []
    for x in tqdm([x for x in gml_files_path.glob('*/') if x.is_file()]):
        for repo_name, repo_gml in dict_repo_to_gml.items():
            if x.stem in repo_gml: 
                filename = x.stem.split('______')[0] + '.java'
                repo_path = java_repositories_path / repo_name
                files = glob.glob(str(repo_path) + "/**/" + filename, recursive = True)
                if len(files) > 1:
                    print("MORE THAN 1 JAVA FILE for ", x.stem, len(files))
                    more_than_one.append(x)
                    continue
                if len(files) == 0:
                    print("FOUND NONE JAVA FILES for", x.stem, len(files))
                    found_none.append(x)
                    continue
                df2 = pd.DataFrame({"gml_path":[str(x)], 
                                    "java_file_path": [files[0]],
                                    "method_name":[x.stem.split('______')[-1]]}) 
                pathes_df = pathes_df.append(df2, ignore_index = True)
                break 
    return pathes_df

def get_code_snippet(gpath, pathes_df):
    graph = nx.read_graphml(gpath)
    min_line = 1e10
    max_line = 0
    for idx, (node_id, node) in enumerate(graph.nodes(data=True)):
        if 'is_test' in node or 'isTest' in node:
            line_n = int(node['lineID'])
            if line_n > max_line: max_line = line_n
            if line_n < min_line: min_line = line_n
    java_files = pathes_df[pathes_df.gml_path == str(gpath)].java_file_path.values

    if len(java_files) == 0: return "No java file was found."
    elif  len(java_files) == 1: java_file = java_files[0]
    else: return "More than one java file was found."

    lines = open(java_file, "r").readlines()[min_line:max_line]
    return '\n'.join(lines)