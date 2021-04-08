import os 
from pathlib import Path
import subprocess
from datetime import datetime
from shutil import copytree, rmtree
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

task = """
task printTestClasspath {
    doLast {
        println(sourceSets.test.runtimeClasspath.asPath)
    }
}
"""


def copy_dependencies(ext_dir):
    os.chdir(ext_dir.as_posix())
    subprocess.run(gradlew_test_debug_cmd)

def build_gradle_proj(ext_dir, output_folder):
    print('\r\n' + str(datetime.now()) + '*' * 100)
    proj_name = ext_dir.stem
    os.chdir(ext_dir.as_posix())

    print(f'Building {proj_name} ...')
    try:
        subprocess.run(chmod_cmd, check=True, stderr=err_log, stdout=info_log )
        subprocess.run(gradlew_cmd, check=True, stderr=err_log, stdout=info_log)
        print(f'Building of {proj_name} is successful ...', file=build_log)
        copytree(ext_dir, Path(output_folder) / proj_name)
        rmtree(ext_dir)
    except subprocess.CalledProcessError as e :
        print(f'Building of {proj_name} is NOT successful ...', file=build_log)
        print(f'Building of {proj_name} is NOT successful ...')
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