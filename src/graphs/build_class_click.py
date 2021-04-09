import os
import pandas as pd
import numpy as np
from tqdm import tqdm
import subprocess
import zipfile
from pathlib import Path
import click

script_location = Path(os.path.dirname(os.path.realpath(__file__)))
PATH_TO_BUILDED_PROJECTS = script_location / Path('../../data/builded_projects/unpacked_zips')
OUTPUT = script_location / Path('../../data/processed/class_graphs_dvc')
CSV_FILES = script_location / Path('../../data/processed/csv_files')
PATH_TO_JAVA_PARSER = script_location / Path('../../lib/javaparser-dloc-3.5.14-SNAPSHOT-jar-with-dependencies.jar')
good_methods_names_df = script_location / '../../data/builded_projects/good_methods_names_df.csv'


@click.command()
@click.option('--path-to-builded-projects', '-b', default=PATH_TO_BUILDED_PROJECTS, help='Path to folder with builded projects.')
@click.option('--csv-files-folder', '-c', default=CSV_FILES, help='Folder foe csv files')
@click.option('--path-to-java-parser', '-j', default=PATH_TO_JAVA_PARSER, help='Path to .jar with java parser')
@click.option('--output', '-o', default=OUTPUT, help='output_path')
@click.option('--good-method-df-path', '-g', default=good_methods_names_df, help='Path to csv with goof method names')
def build_class_graphs(path_to_builded_projects, csv_files_folder, path_to_java_parser, output, good_method_df_path):
    path_to_builded_projects = Path(path_to_builded_projects)
    projects = [x.absolute() for x in path_to_builded_projects.glob('*/') if x.is_dir()]
    good_methods_names_df = pd.read_csv(good_method_df_path)

    for project_name in tqdm(projects):
        project_name = project_name.stem
        df = good_methods_names_df[good_methods_names_df['repo_name'] == project_name]
        for g, df_ind in tqdm(df.groupby(np.arange(len(df)) // 20), desc=project_name):
            df_ind.to_csv(os.path.join(csv_files_folder, project_name + f'{g}.csv'), index=False)
            
            os.makedirs(os.path.join(output, project_name, 'control_flow'), exist_ok=True)
            os.makedirs(os.path.join(output, project_name, 'call_graph'), exist_ok=True)
            os.makedirs(os.path.join(output, project_name, 'gml'), exist_ok=True)
            
            build_place = path_to_builded_projects
            output_folder = os.path.join(output, project_name)
            csv = os.path.join(csv_files_folder, project_name + f'{g}.csv')
            run_arguments=[ 'java', '-Xmx12g', '-XX:-UseGCOverheadLimit', '-jar', path_to_java_parser ]
            run_arguments.append(build_place)
            run_arguments.append(output_folder)
            run_arguments.append(csv)
            run_arguments.append(project_name)

            subprocess.call(run_arguments)

if __name__ == '__main__':
    build_class_graphs()