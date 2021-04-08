import os
import pandas as pd
import numpy as np
from tqdm import tqdm
import subprocess
import zipfile

PATH_TO_BUILDED_PROJECTS = os.path.abspath('./../../data/builded_projects/unpacked_zips') 
OUTPUT_UNZIP = os.path.abspath('./../../data/builded_projects/unpacked_zips')
OUTPUT = os.path.abspath('./../../data/processed/new_class_graphs_10') 
CSV_FILES = os.path.abspath('./../../data/processed/csv_files_traces')
PATH_TO_JAVA_PARSER = os.path.abspath('./../../../Java2Graph/javaparser-dloc/target/javaparser-dloc-3.5.14-SNAPSHOT-jar-with-dependencies.jar') 
projects = list(filter(lambda x: x!= '.ipynb_checkpoints' and os.path.isdir(os.path.join(PATH_TO_BUILDED_PROJECTS, x)), os.listdir(PATH_TO_BUILDED_PROJECTS)))



for project_name in tqdm(projects):
    if project_name not in ['apache-ignite-2d2044a', 'flowable-flowable-engine-f9f4304']:
        continue
    
    directory_to_extract_to = os.path.join(OUTPUT_UNZIP, project_name)
    
    df = pd.read_csv('./../../data/builded_projects/good_methods_names_df.csv')
    df = df[df['repo_name'] == project_name]
    print(project_name)
    for g, df_ind in tqdm(df.groupby(np.arange(len(df)) // 100)):
        df_ind.to_csv(os.path.join(CSV_FILES, project_name + f'{g}.csv'), index=False)
        
        os.makedirs(os.path.join(OUTPUT, project_name), exist_ok=True)
#         os.makedirs(os.path.join(OUTPUT, project_name, 'call_graph'), exist_ok=True)
#         os.makedirs(os.path.join(OUTPUT, project_name, 'gml'), exist_ok=True)
        
        build_place = directory_to_extract_to
        output_folder = os.path.join(OUTPUT, project_name)
        csv = os.path.join(CSV_FILES, project_name + f'{g}.csv')
        run_arguments=[ 'java', '-Xmx12g', '-XX:-UseGCOverheadLimit', '-jar', PATH_TO_JAVA_PARSER ]
        run_arguments.append(build_place)
        run_arguments.append(output_folder)
        run_arguments.append(csv)
        run_arguments.append(build_place)
        run_arguments.append(project_name)

        subprocess.call(run_arguments)
