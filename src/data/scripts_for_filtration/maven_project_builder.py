import os
import subprocess
from tqdm import tqdm
from datetime import datetime

start_dir = os.getcwd()

info_log = open('build_info.log', 'wb')
err_log = open('build_err.log', 'wb')

mvn_clean_cmd = 'mvn -B clean install -DskipTests=True'.split(' ')
gradlew_cmd = 'gradlew build'.split(' ')
mvn_deps_cmd = ('mvn -B org.apache.maven.plugins:maven-dependency-plugin:3.1.2:copy-dependencies'
                    ' -DoutputDirectory=PROJECT_DEPENDENCIES').split(' ')

info_log = open('build_info.log', 'wb')
err_log = open('build_err.log', 'wb')


def get_folders_with_file(path, filename):
    folders = []
    files_list = os.listdir(path)
    for repo in files_list: 
        repo_path = path / repo
        if len(sorted(repo_path.glob(filename))) > 0: folders.append(repo_path)
    return folders

def build_maven_proj(ext_dir):
    print('\r\n' + str(datetime.now()) + '*' * 100)
    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())

    print(f'Building {proj_name} ...')
    try:
        subprocess.run(mvn_clean_cmd, check=True, stderr=err_log, stdout=info_log)
    except subprocess.CalledProcessError as e :
        print(f'Building of {proj_name} is NOT successful ...')
        os.chdir(start_dir)
        return False
    os.chdir(start_dir)
    return True    

        
def copy_sep_maven_proj(ext_dir):
    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())
    
    print(f'Copying {proj_name} dependencies ...')
    try:
        subprocess.run(mvn_deps_cmd,  check=True, stderr=err_log, stdout=info_log)
    except subprocess.CalledProcessError as e :
        print(f'Copying of {proj_name} is NOT successful ...')
        return False
    return True

def build_and_copy_maven_reps(reps_path):
    builded = []
    not_builded = []
    for path in reps_path:
        if build_maven_proj(path) and copy_sep_maven_proj(path):
            builded.append(path.stem)
        else: not_builded.append(path.stem)
    return builded, not_builded