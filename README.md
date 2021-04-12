# graph-names


pip install -r requirements.txt

pip install torch-sparse

pip install torch_scatter

## Trace plugin
1. `cd trace-plugin`
2. `mvn clean install -DskipTests=True`
3. `cd PATH_TO_PROJECT`
4. `mvn clean install -DskipTests=True`
5. `mvn -B org.apache.maven.plugins:maven-dependency-plugin:3.1.2:copy-dependencies -DoutputDirectory=PROJECT_DEPENDENCIES`
6. `mvn com.huawei:trace-plugin:0.0.1-SNAPSHOT:trace -Dcsv=PATH_TO_CSV -DrepoName=PROJECT_NAME`


## Java2Graph
1. `java -Xmx12g -XX:-UseGCOverheadLimit -jar Java2Graph/javaparser-dloc/target/javaparser-dloc-3.5.14-SNAPSHOT-jar-with-dependencies.jar PATH_TO_PROJECT OUTPUT_FOLDER PATH_TO_CSV NONE PROJECT_NAME`
