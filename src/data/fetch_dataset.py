import click
import logging
import urllib3
import zipfile
import requests
import pandas as pd
from tqdm import tqdm
from time import sleep
from pathlib import Path


urllib3.disable_warnings()

current_dir = Path(__file__).parent
jtnames_dir = current_dir / '../../'


def fetch_info():
    repos_dict = {}

    per_page = 100
    pbar = tqdm(range(0, 10))
    for page in pbar:
        query = ('https://api.github.com/search/repositories?'
                 'q=language:java'
                 f'&sort=stars&per_page={per_page}&page={page}')
        result = requests.get(query, verify=False)
        for idx, repo in enumerate(result.json()['items']):
            pbar.set_postfix_str(f' #{page * per_page + idx} ')
            pquery = ('https://api.github.com/search/code?'
                      f'q=junit+language:java+repo:{repo["full_name"]}'
                      '&per_page=10')
            presult = requests.get(pquery, verify=False)
            assert(presult.status_code == 200)
            junit_count = presult.json()['total_count']
            repo['junit_files_match'] = junit_count
            if repo['full_name'] in repos_dict:
                repos_dict[repo['full_name'] + '_repeat_'] = repo
            else:
                repos_dict[repo['full_name']] = repo
            sleep(6)

    cleaned_repos = []
    for _, v in repos_dict.items():
        clean_v = {pkey:pval for pkey, pval in v.items()
                if not (pkey.endswith('_url') or pkey in ('owner', 'license'))}
        cleaned_repos.append(clean_v)
    return pd.DataFrame.from_dict(cleaned_repos).drop_duplicates('full_name')


def filter_projects(df):
    top_df = df[df.junit_files_match > 100]
    fname_df = (top_df.full_name + ' / ' +  top_df.description.fillna(''))
    invalid_q = (
        fname_df.str.contains(' book')
        | (fname_df.str.contains('learn') 
           & ~(fname_df.str.contains('deep') | fname_df.str.contains('machine')))
        | fname_df.str.contains('blog')
        | fname_df.str.contains('test')
        | fname_df.str.contains('example')
        | fname_df.str.contains('tutorial')
    )
    valid_df = top_df.loc[fname_df[~invalid_q].index]
    return valid_df


def fetch_archives(df):

    name2path = {}
    def fname2path(name):
        return name2path[name]
    save_dir = jtnames_dir / 'data/raw/junit_top/archives'
    save_dir.mkdir(parents=True, exist_ok=True)
    for _, row in tqdm(df.iterrows()):
        archive_path = Path(save_dir / f'{row["name"]}.zip')
        if not archive_path.exists():
            url = f'https://api.github.com/repos/{row.full_name}/zipball/'
            r= requests.get(url, allow_redirects=True, verify=False)
            assert(r.status_code == 200)
            with archive_path.open('wb') as f:
                f.write(r.content)
        with zipfile.ZipFile(archive_path, 'r') as zip_ref:
            root_folder_info = zip_ref.filelist[0]
            assert(root_folder_info.filename.endswith('/'))
            name2path[row.full_name] = root_folder_info.filename[:-1]
        sleep(10)
    
    df['path'] = df.full_name.apply(fname2path)
    return df


@click.command()
def main():
    """ Runs scripts to fetch raw data
    """
    logger = logging.getLogger(__name__)
    logger.info('getting raw data')

    info_df = fetch_info()
    valid_df = filter_projects(info_df)
    valid_df = fetch_archives(valid_df)
    valid_df_path = jtnames_dir / 'data/raw/junit_top/valid_meta.parquet'
    valid_df.to_parquet(valid_df_path.as_posix())

if __name__ == '__main__':
    log_fmt = '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
    logging.basicConfig(level=logging.INFO, format=log_fmt)

    # not used in this stub but often useful for finding various files
    project_dir = Path(__file__).resolve().parents[2]

    main()