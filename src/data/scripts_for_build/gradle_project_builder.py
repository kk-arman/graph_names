import os 
from pathlib import Path
import subprocess
from datetime import datetime
from shutil import copytree, rmtree, copy
import click
from tqdm import tqdm

start_dir = os.getcwd()
gradlew_cmd = './gradlew build'.split(' ')
gradlew_test_debug_cmd = './gradlew test --debug > debug.txt'.split(' ')
gradle_cmd = 'gradle build'.split(' ')
chmod_cmd = 'chmod 755 gradlew'.split(' ')

postfix = str(datetime.now())

info_log = open('build_info_'+postfix+'.log', 'wb')
err_log = open('build_err_'+postfix+'.log', 'wb')
build_log = open('build_'+postfix+'.log', 'w')

def copy_dependencies(ext_dir: Path):
    if not ext_dir.is_dir(): raise ValueError("Bad ext_dir, doesnt exist")

    os.chdir(ext_dir.as_posix())
    subprocess.run(gradlew_test_debug_cmd)
    dist = "./PROJECT_DEPENDENCIES/"
    if not os.path.exists(dist):
        os.makedirs(dist)

    file = open('debug.txt')
    for line in file: 
        if "application classpath" in line:
            n = line.find("application classpath") + len("application classpath") + 1
            new_line= line[n:].replace('[', '').replace(']','').replace('\n', '').split(', ')

            for f in new_line: 
                if f[-4:] == '.jar': copy(f, dist)

def build_gradle_proj(ext_dir:Path, output_folder: str):
    if not ext_dir.is_dir(): raise ValueError("Bad ext_dir, doesnt exist")
    if not Path(output_folder).is_dir(): raise ValueError("Bad output_folder, doesnt exist")
    
    print('\r\n' + str(datetime.now()) + '*' * 100)
    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())

    print(f'Building {proj_name} ...')
    try:
        subprocess.run(
            chmod_cmd, 
            check=True, 
            stderr=err_log, 
            stdout=info_log 
        )
        subprocess.run(
            gradlew_cmd, 
            check=True, 
            stderr=err_log, 
            stdout=info_log
        )
        print(
            f'Building of {proj_name} is successful ...', 
            file=build_log
        )
        copytree(
            ext_dir, 
            Path(output_folder) / proj_name
        )

        rmtree(ext_dir)
    except subprocess.CalledProcessError as e :
        print(
            f'Building of {proj_name} is NOT successful ...', 
            file=build_log
        )
        os.chdir(start_dir)
        return False
    os.chdir(start_dir)
    return True   

@click.command()
@click.option('--reps-path', '-f', help='Path to folder with reps.')
@click.option('--output-folder', '-o', help='Path to output folder for builded reps.')
def build__gradle_reps(reps_path, output_folder):
    reps_pathes = [x.absolute() for x in Path(reps_path).glob("*/") if x.is_dir()]
    builded = []
    not_builded = []
    for path in tqdm(reps_pathes):
        if build_gradle_proj(path, output_folder):
            builded.append(path.stem)
        else: not_builded.append(path.stem)
    print("BUILDED", builded)
    print("NOT BUILDED", not_builded)


if __name__ == '__main__':
    build__gradle_reps()