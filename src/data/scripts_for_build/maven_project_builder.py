import os
import subprocess
from tqdm import tqdm
from datetime import datetime
from pathlib import Path
 
start_dir = os.getcwd()

mvn_clean_cmd = 'mvn -B clean install -DskipTests=True'.split(' ')
gradlew_cmd = 'gradlew build'.split(' ')
mvn_deps_cmd = ('mvn -B org.apache.maven.plugins:maven-dependency-plugin:3.1.2:copy-dependencies'
                    ' -DoutputDirectory=PROJECT_DEPENDENCIES').split(' ')

info_log = open('build_info.log', 'wb')
err_log = open('build_err.log', 'wb')


def get_folders_with_file(path: Path, filename: str):
    if not path.is_dir(): raise ValueError("Bad ext_dir, doesnt exist")
    
    folders = []
    files_list = os.listdir(path)
    for repo in files_list: 
        repo_path = path / repo
        if len(sorted(repo_path.glob(filename))) > 0: folders.append(repo_path)
    return folders

def build_maven_proj(ext_dir: Path):
    if not ext_dir.is_dir(): raise ValueError("Bad ext_dir, doesnt exist")

    print('\r\n' + str(datetime.now()) + '*' * 100)
    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())

    print(f'Building {proj_name} ...')
    try:
        subprocess.run(
            mvn_clean_cmd, 
            check=True, 
            stderr=err_log, 
            stdout=info_log)
    except subprocess.CalledProcessError as e :
        print(f'Building of {proj_name} is NOT successful ...')
        os.chdir(start_dir)
        return False
    os.chdir(start_dir)
    return True    

        
def copy_sep_maven_proj(ext_dir: Path):
    if not ext_dir.is_dir(): raise ValueError("Bad ext_dir, doesnt exist")

    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())
    
    print(f'Copying {proj_name} dependencies ...')
    try:
        subprocess.run(
            mvn_deps_cmd,  
            check=True, 
            stderr=err_log, 
            stdout=info_log)
    except subprocess.CalledProcessError as e :
        print(f'Copying of {proj_name} is NOT successful ...')
        return False
    return True

def build_and_copy_maven_reps(reps_path):
    builded = []
    not_builded = []
    for path in reps_path:
        if isinstance(path, str): path = Path(path)
        if build_maven_proj(path) and copy_sep_maven_proj(path):
            builded.append(path.stem)
        else: not_builded.append(path.stem)
    return builded, not_builded