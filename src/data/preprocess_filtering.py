import os
import click
from pathlib import Path
import datetime
from tqdm import tqdm
import stanza 
import pandas as pd
import shutil

from scripts_for_filtration.filter_repo import get_good_methods
from utils import extract

dirname = os.path.dirname(__file__)
zips_folder = os.path.join(dirname,'../../data/builded_projects/')

@click.command()
@click.option('--zips-folder', '-z', default=zips_folder, help='Path to folder with zips.')
@click.option('--extraction-folder', '-e', default='Default', help='Path to exctract archives')
@click.option('--delete-extracted', '-d',type=click.Choice(['True', 'False'], case_sensitive=False), default='False', help='If True then all extracted files will be deleted')
def main(zips_folder, extraction_folder, delete_extracted):
    if extraction_folder == 'Default': extraction_folder = Path(zips_folder) / 'unpacked_zips'
    zips_folder = Path(zips_folder)

    print("Start extracting archives...")
    now = datetime.datetime.now()
    archives = [x for x in zips_folder.glob('*.zip') if x.is_file()]

    extraction_folder = zips_folder / 'unpacked_zips'

    for archive in tqdm(archives):
        extract(str(archive), extraction_folder)

    print("Start extracting reps...")
    archives = [x for x in extraction_folder.glob('*.zip') if x.is_file()]
    for archive in tqdm(archives):
        extract(str(archive), extraction_folder / archive.stem)

    print("Start parsing reps...")
    good_methods_df = pd.DataFrame(columns = ['repo_name', 'file_name', 'method_name'])
    
    nlp_pos = stanza.Pipeline('en', processors='tokenize,pos', use_gpu = True)
    extracted_folders = [x for x in extraction_folder.glob('*/') if x.is_dir()] 
    for folder in tqdm(extracted_folders):
        repo_name = folder.stem
        print('\r\n Parsing: ' + repo_name + '*' * 100)
        good_methods = get_good_methods(folder, nlp_pos)
        for file_name, method_name_arr in good_methods.items():
            for method_name in method_name_arr: 
                df_to_append = pd.DataFrame({'repo_name':[repo_name], 'file_name':[file_name[file_name.find(repo_name):]], 'method_name':[method_name]})
                good_methods_df = good_methods_df.append(df_to_append, ignore_index = True)

    good_methods_df.to_csv(zips_folder / 'good_methods_names_df.csv')

    if delete_extracted == 'True':   
        print("Deleting extracted reps...")
        shutil.rmtree(extraction_folder)


if __name__ == '__main__':
    main()