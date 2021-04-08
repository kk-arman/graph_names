import os
import pandas as pd
import numpy as np
from tqdm import tqdm
import subprocess
import zipfile
from pathlib import Path
script_location = Path(os.path.dirname(os.path.realpath(__file__)))


PATH_TO_BUILDED_PROJECTS = script_location / Path('../../data/builded_projects/unpacked_zips')
OUTPUT = script_location / Path('../../data/processed/class_graphs_dvc')
CSV_FILES = script_location / Path('../../data/processed/csv_files')
PATH_TO_JAVA_PARSER = script_location / Path('../../lib/javaparser-dloc-3.5.14-SNAPSHOT-jar-with-dependencies.jar')
projects = [x.absolute() for x in PATH_TO_BUILDED_PROJECTS.glob('*/') if x.is_dir()]
good_methods_names_df = pd.read_csv(script_location / '../../data/builded_projects/good_methods_names_df.csv')

for project_name in tqdm(projects):
    project_name = project_name.stem
    df = good_methods_names_df[good_methods_names_df['repo_name'] == project_name]
    for g, df_ind in tqdm(df.groupby(np.arange(len(df)) // 20), desc=project_name):
        df_ind.to_csv(os.path.join(CSV_FILES, project_name + f'{g}.csv'), index=False)
        
        os.makedirs(os.path.join(OUTPUT, project_name, 'control_flow'), exist_ok=True)
        os.makedirs(os.path.join(OUTPUT, project_name, 'call_graph'), exist_ok=True)
        os.makedirs(os.path.join(OUTPUT, project_name, 'gml'), exist_ok=True)
        
        build_place = PATH_TO_BUILDED_PROJECTS
        output_folder = os.path.join(OUTPUT, project_name)
        csv = os.path.join(CSV_FILES, project_name + f'{g}.csv')
        run_arguments=[ 'java', '-Xmx12g', '-XX:-UseGCOverheadLimit', '-jar', PATH_TO_JAVA_PARSER ]
        run_arguments.append(build_place)
        run_arguments.append(output_folder)
        run_arguments.append(csv)
        run_arguments.append(project_name)

        subprocess.call(run_arguments)
