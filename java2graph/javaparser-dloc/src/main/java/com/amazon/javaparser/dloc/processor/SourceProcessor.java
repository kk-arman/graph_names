package com.amazon.javaparser.dloc.processor;

import com.amazon.javaparser.dloc.preprocessor.FieldPreProcessor;
import com.amazon.javaparser.dloc.preprocessor.ComputedFromPreProcessor;
import com.amazon.javaparser.dloc.preprocessor.LastFieldLexPreprocessor;
import com.amazon.javaparser.dloc.preprocessor.LastLexicalUsePreProcessor;
import com.amazon.javaparser.dloc.preprocessor.readwrite.LastReadWritePreProcessorV2;
import com.amazon.javaparser.dloc.preprocessor.NextTokenPreProcessor;
import com.amazon.javaparser.dloc.preprocessor.NodePreProcessor;
import com.amazon.javaparser.dloc.preprocessor.ReturnToTokenPreProcessor;
import com.amazon.javaparser.dloc.preprocessor.TypePreProcessor;
import com.amazon.javaparser.dloc.converter.GraphManager;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseException;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Node;
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JarTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.Files;

import com.google.common.util.concurrent.SimpleTimeLimiter;
import com.google.common.util.concurrent.TimeLimiter;
import fj.P;
import javassist.tools.rmi.ObjectNotFoundException;

import org.apache.tinkerpop.gremlin.structure.Vertex;
import org.apache.tinkerpop.gremlin.structure.io.IoCore;
import org.apache.tinkerpop.gremlin.tinkergraph.structure.TinkerGraph;
import org.apache.commons.io.FilenameUtils;

import soot.*;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;
import soot.options.Options;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;

import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;


public class SourceProcessor {

    private NextTokenPreProcessor nextTokenPreProcessor;
    private TypePreProcessor typePreProcessor;
    private NodePreProcessor nodePreProcessor;
    private ReturnToTokenPreProcessor returnToTokenPreProcessor;
    private ComputedFromPreProcessor computedFromPreProcessor;
    private LastReadWritePreProcessorV2 lastReadWritePreProcessor;
    private LastLexicalUsePreProcessor lastLexicalUsePreProcessor;
    private FieldPreProcessor fieldPreProcessor;
    private LastFieldLexPreprocessor lastFieldLexPreprocessor;
    private String jdk;
    private HashMap<String, HashSet<String>> testDictionary;

    private Map<String, File> javaFile2Path = new HashMap<>();
    private Map<String, File> classFile2Path = new HashMap<>();
    private Map<String, GraphManager> graphManagerCache = new HashMap<>();
    private File sourceDirectory;
    private ArrayList<String> sourceDirectories;
    private List<File> jars;

    public SourceProcessor(File sourceDirectory, String jdk, HashMap<String,
            HashSet<String>> testDictionary, HashMap<String,
            HashMap<String, ArrayList<String>>> traces) throws IOException {
        this.sourceDirectory = sourceDirectory;
        this.jdk = jdk;
        this.testDictionary = testDictionary;
        this.sourceDirectories = new ArrayList<>();
        this.update();

        setupSoot(sourceDirectories);
    }

    public void update() throws IOException {
        this.jars = new ArrayList<>();
        CombinedTypeSolver combinedTypeSolver = new CombinedTypeSolver();

        combinedTypeSolver.add(new ReflectionTypeSolver());
        jars.add(new File(this.jdk));

        Files.walk(Paths.get(this.sourceDirectory.getAbsolutePath())).filter(Files::isRegularFile).forEach(file2 -> {
            File f2 = file2.toFile();
            if (!file2.toString().contains(".ipynb")) {
                if (file2.toString().endsWith(".jar")) {
                    jars.add(f2);
//                    this.sourceDirectories.add("/" + FilenameUtils.getPath(f2.getAbsolutePath()));
                }
                else if (file2.toString().endsWith(".java")) {
                    String cls = f2.getName().replace(".java", "");
                    javaFile2Path.put(cls, f2);
                }
                else if (file2.toString().endsWith(".class")) {
                    String cls = f2.getName().replace(".class", "");
                    classFile2Path.put(cls, f2);
//                    this.sourceDirectories.add("/" + FilenameUtils.getPath(f2.getAbsolutePath()));
                }
            }
        });
        for(String cls : testDictionary.keySet())  {
            File classPath = classFile2Path.get(cls);
            if (classPath != null) {
                this.sourceDirectories.add("/" + FilenameUtils.getPath(classPath.getAbsolutePath()));
            }
        }

        for(File jar: jars) {
            try {
                combinedTypeSolver.add(new JarTypeSolver(jar.getAbsolutePath()));
            }
            catch (Exception ignored) {
            }
        }
        combinedTypeSolver.add(new JavaParserTypeSolver(this.sourceDirectory));

        this.returnToTokenPreProcessor = new ReturnToTokenPreProcessor();
        this.nextTokenPreProcessor = new NextTokenPreProcessor();
        this.typePreProcessor = new TypePreProcessor(combinedTypeSolver);
        this.nodePreProcessor = new NodePreProcessor();
        this.lastReadWritePreProcessor = new LastReadWritePreProcessorV2();
        this.computedFromPreProcessor = new ComputedFromPreProcessor();
        this.lastLexicalUsePreProcessor = new LastLexicalUsePreProcessor();
        this.fieldPreProcessor = new FieldPreProcessor();
        this.lastFieldLexPreprocessor = new LastFieldLexPreprocessor();
    }

    public void process(Node node) throws IOException, ParseException {
        nodePreProcessor.process(node);
        lastFieldLexPreprocessor.process(node);
        fieldPreProcessor.process(node);
        lastLexicalUsePreProcessor.process(node);
        computedFromPreProcessor.process(node);
        lastReadWritePreProcessor.process(node);
        returnToTokenPreProcessor.process(node);
        nextTokenPreProcessor.process(node);
        typePreProcessor.process(node);
    }

    public void parseSources(String outputDir, File file) {
        for(String cls : testDictionary.keySet())  {
            try {
//                SootClass sootClass = Scene.v().getSootClass(FilenameUtils.getBaseName(classPath.getAbsolutePath()));
                SootClass sootClass = null;

                for (SootClass clazz2: Scene.v().getClasses()) {
                    if (clazz2.getJavaStyleName().equals(cls)) {
                        sootClass = clazz2;
                        break;
                    }
                }
                for(SootMethod sm: sootClass.getMethods()) {
                    if (!testDictionary.get(cls).contains(sm.getName()))
                        continue;

                    File outFile = new File(outputDir + File.separator + cls + "###" + sm.getName() + ".gml");
                    if (!outFile.exists()) {
                        GraphManager graphManager = parse_method(sm, 0, 1);
                        saveGraph(graphManager.graphs.get(sm.getName()), (outputDir +
                                File.separator + cls + "###" + sm.getName() + ".gml"));
                    }
                }
            }
            catch (Exception | StackOverflowError ignored) {
            }
        }
    }

    public GraphManager parse_method(SootMethod sm, int cur_depth, int max_depth) {
        if (cur_depth > max_depth) {
            return null;
        }
        String cls = sm.getDeclaringClass().getShortJavaStyleName();
        GraphManager graphManager = null;

        // Parse GML with control flow
        try {
            if (javaFile2Path.get(cls) != null) {
                graphManager = getGraphManager(javaFile2Path.get(cls));

                if (cur_depth == 0) {
                    markAsTest(graphManager.graphs.get(sm.getName()));
                }
                addControlFlow(sm, graphManager);
            }
        }
        catch (Exception | StackOverflowError e) {
            System.err.println("[GML] Failed parse method: " + sm.getName());
            e.printStackTrace();
        }

        if (graphManager == null) {
            return null;
        }

        // Parse call graph
        if (cur_depth >= max_depth) {
            return graphManager;
        }

        try {
            List<SootMethod> entryPoints = new ArrayList<>();
            entryPoints.add(sm);
            Scene.v().setEntryPoints(entryPoints);
            PackManager.v().runPacks();
            CallGraph gr = Scene.v().getCallGraph();

            for(Iterator<Edge> it = gr.edgesOutOf(sm); it.hasNext(); ) {
                try {
                    Edge edge = it.next();
                    GraphManager graphManager1 = parse_method(edge.tgt().method(), cur_depth + 1, max_depth);
                    joinGraphs(graphManager, graphManager1, sm.getName(),
                            edge.tgt().method().getName(), edge.tgt().getJavaSourceStartLineNumber());
                }
                catch (Exception ignore) {
                }
            }
        }
        catch (Exception | StackOverflowError e) {
            System.err.println("[Call graph] Failed parse method: " + sm.getName());
            e.printStackTrace();
        }

        return graphManager;
    }

    private void saveGraph(TinkerGraph graph, String outGMLFile) throws IOException {
        if (graph.vertices().hasNext()) {
            graph.io(IoCore.graphml()).writeGraph(outGMLFile);
        }
    }

    private GraphManager getGraphManager(File javaPath) throws Exception {
        if (graphManagerCache.containsKey(javaPath.getAbsolutePath())) {
            return graphManagerCache.get(javaPath.getAbsolutePath());
        }
        ExecutorService es = Executors.newSingleThreadExecutor();
        GraphManager graphManager;

        try {
            graphManager = SimpleTimeLimiter.create(es).callWithTimeout(() -> {
                CompilationUnit cu = JavaParser.parse(javaPath);
                GraphManager graphManager2 = new GraphManager();
                this.process(cu);
                graphManager2.process(cu);

                return graphManager2;
            }, 10, TimeUnit.SECONDS);
        } finally {
            es.shutdownNow();
        }
        graphManagerCache.put(javaPath.getAbsolutePath(), graphManager);

        return graphManager;
    }

    private void joinGraphs(GraphManager graphManager1, GraphManager graphManager2,
                           String srcMethod, String tgtMethod, int lineID) {
        if (graphManager1 == null || graphManager2 == null) {
            return;
        }
        Vertex startVertex = graphManager1.line2vertex.get(srcMethod + String.valueOf(lineID));
        Vertex endVertex = null;
        Map<String, Vertex> ids = new HashMap<>();

        TinkerGraph g1 = graphManager1.graphs.get(srcMethod);

        if (startVertex == null) {
            for (Iterator<Vertex> vertices = g1.vertices(); vertices.hasNext();) {
                Vertex v = vertices.next();
                if (v.property("text").value().toString().contains(tgtMethod) &&
                        v.property("type").value().toString().contains("Expr")) {
                    startVertex = v;
                    break;
                }
            }
        }
        if (startVertex == null) {
            return;
        }

        TinkerGraph g2 = graphManager2.graphs.get(tgtMethod);
        for (Iterator<org.apache.tinkerpop.gremlin.structure.Edge> edges = g2.edges(); edges.hasNext();) {
            org.apache.tinkerpop.gremlin.structure.Edge edge = edges.next();
            Vertex out2 = edge.outVertex();
            Vertex in2 = edge.inVertex();
            Vertex out1 = getOrAddVertex(graphManager1, srcMethod, tgtMethod, ids, out2);
            Vertex in1 = getOrAddVertex(graphManager1, srcMethod, tgtMethod, ids, in2);
            setAttributes(out2, out1);
            setAttributes(in2, in1);

            org.apache.tinkerpop.gremlin.structure.Edge newEdge = out1.addEdge(edge.property("type").value().toString(), in1);
            newEdge.property("type", edge.property("type").value().toString());

            if (out1.property("type").value().toString().equals("MethodDeclaration")) {
                endVertex = out1;
            }
            else if (in1.property("type").value().toString().equals("MethodDeclaration")) {
                endVertex = in1;
            }
        }
        org.apache.tinkerpop.gremlin.structure.Edge newEdge = startVertex.addEdge("AST", endVertex);
        newEdge.property("type", "AST");
    }

    private Vertex getOrAddVertex(GraphManager graphManager1, String decl1, String decl2, Map<String, Vertex> ids, Vertex vertex) {
        if (!ids.containsKey(vertex.id().toString())) {
            Vertex out = graphManager1.graphs.get(decl1).addVertex(Integer.toString(graphManager1.vertexIds.get(decl1) + 1));
            graphManager1.vertexIds.put(decl1, graphManager1.vertexIds.get(decl1) + 1);
            try {
                graphManager1.line2vertex.put(decl2 + vertex.property("lineID").value().toString(), out);
            }
            catch (Exception ignore) {
            }

            ids.put(vertex.id().toString(), out);

            return out;
        }
        else {
            return ids.get(vertex.id().toString());
        }
    }

    private void setAttributes(Vertex from, Vertex to) {
        for(String key : from.keys()) {
            to.property(key, from.property(key).value().toString());
        }
    }

    private void markAsTest(TinkerGraph graph) {
        for (Iterator<Vertex> vertices = graph.vertices(); vertices.hasNext();) {
            Vertex v = vertices.next();
            v.property("isTest", "true");
        }
    }

    private void addControlFlow(SootMethod sm, GraphManager graphManager) {
        UnitGraph ug = new ClassicCompleteUnitGraph(sm.retrieveActiveBody());

        for (Unit unit : ug) {
            for (Unit suc : ug.getSuccsOf(unit)) {
                int unitLineNum = unit.getJavaSourceStartLineNumber();
                int sucLineNum = suc.getJavaSourceStartLineNumber();

                if (unitLineNum != -1 && sucLineNum != -1) {
                    Vertex from = graphManager.line2vertex.get(sm.getName() + String.valueOf(unitLineNum));
                    Vertex to = graphManager.line2vertex.get(sm.getName() + String.valueOf(sucLineNum));

                    if (from != null && to != null) {
                        org.apache.tinkerpop.gremlin.structure.Edge edge = from.addEdge("CONTROL_FLOW", to);
                        edge.property("type", "CONTROL_FLOW");
                    }
                }
            }
        }
    }

    private void setupSoot(List<String> sourceDirectories) {
        G.reset();

        String cp = "";
        for (File jar: this.jars) {
            if (!cp.equals("")) {
                cp += File.pathSeparator;
            }
            cp += jar.getAbsolutePath();
        }
//        System.out.println(cp);
        Options.v().set_soot_classpath(cp);
        Options.v().set_keep_line_number(true);
        Options.v().set_allow_phantom_refs(true);

        Options.v().set_src_prec(Options.src_prec_only_class);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_ignore_classpath_errors(true);

        Options.v().set_process_dir(sourceDirectories);
        Options.v().set_whole_program(true);

        Scene.v().loadNecessaryClasses();

        for (SootClass clazz : Scene.v().getClasses()) {
            if (clazz.resolvingLevel() < SootClass.HIERARCHY)
                clazz.setResolvingLevel(SootClass.HIERARCHY);
        }

        PackManager.v().runPacks();
    }
}


//package com.amazon.javaparser.dloc.processor;
//
//import com.amazon.javaparser.dloc.preprocessor.FieldPreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.ComputedFromPreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.LastFieldLexPreprocessor;
//import com.amazon.javaparser.dloc.preprocessor.LastLexicalUsePreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.readwrite.LastReadWritePreProcessorV2;
//import com.amazon.javaparser.dloc.preprocessor.NextTokenPreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.NodePreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.ReturnToTokenPreProcessor;
//import com.amazon.javaparser.dloc.preprocessor.TypePreProcessor;
//import com.github.javaparser.JavaParser;
//import com.github.javaparser.ParseException;
//import com.github.javaparser.ast.CompilationUnit;
//import com.github.javaparser.ast.Node;
//
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.OutputStream;
//import java.util.*;
//
//import com.github.javaparser.ast.body.MethodDeclaration;
//import com.google.common.util.concurrent.SimpleTimeLimiter;
//import com.google.common.util.concurrent.TimeLimiter;
//import org.apache.tinkerpop.gremlin.structure.Direction;
//import org.apache.tinkerpop.gremlin.structure.Vertex;
//import org.apache.tinkerpop.gremlin.structure.io.IoCore;
//import org.apache.tinkerpop.gremlin.structure.io.graphml.GraphMLWriter;
//
//import org.apache.commons.io.FilenameUtils;
//
//import javassist.tools.rmi.ObjectNotFoundException;
//
//import java.nio.file.Paths;
//import java.nio.file.Files;
//import java.util.concurrent.Callable;
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;
//import java.util.concurrent.TimeUnit;
//
//import com.amazon.javaparser.dloc.converter.GraphManager;
//import org.apache.tinkerpop.gremlin.tinkergraph.structure.TinkerGraph;
//import com.jcabi.aspects.Timeable;
//
//import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
//import com.github.javaparser.symbolsolver.resolution.typesolvers.JarTypeSolver;
//import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver;
//import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver;
//
///**
// * Created by sbadal on 2/9/18.
// */
//public class SourceProcessor {
//
//    private NextTokenPreProcessor nextTokenPreProcessor;
//    private TypePreProcessor typePreProcessor;
//    private NodePreProcessor nodePreProcessor;
//    private ReturnToTokenPreProcessor returnToTokenPreProcessor;
//    private ComputedFromPreProcessor computedFromPreProcessor;
//    private LastReadWritePreProcessorV2 lastReadWritePreProcessor;
//    private LastLexicalUsePreProcessor lastLexicalUsePreProcessor;
//    private FieldPreProcessor fieldPreProcessor;
//    private LastFieldLexPreprocessor lastFieldLexPreprocessor;
//    private String jdk;
//    private HashMap<String, HashSet<String>> testDictionary;
//    private HashMap<String, HashMap<String, ArrayList<String>>> traces;
//
//    private Map<String, File> javaFile2Path = new HashMap<>();
//    private Map<String, GraphManager> graphManagerCache = new HashMap<>();
//    private Map<String, File> classFile2Path = new HashMap<>();
//    private File sourceDirectory;
//    private ArrayList<String> sourceDirectories;
//
//    public SourceProcessor(File sourceDirectory, String jdk, HashMap<String, HashSet<String>> testDictionary, HashMap<String, HashMap<String, ArrayList<String>>> traces) throws IOException {
//        this.sourceDirectory = sourceDirectory;
//        this.jdk = jdk;
//        this.testDictionary = testDictionary;
//        this.traces = traces;
//        this.sourceDirectories = new ArrayList<>();
//        this.update();
//
//        for (String cls :  testDictionary.keySet()) {
//            File classPath = classFile2Path.get(cls);
//            if (classPath != null) {
//                sourceDirectories.add(("/" + FilenameUtils.getPath(classPath.getAbsolutePath())));
//            }
//        }
//        for (String cls :  traces.keySet()) {
//            if (testDictionary.containsKey(cls)) {
//                continue;
//            }
//            File classPath = classFile2Path.get(cls);
//            if (classPath != null) {
//                sourceDirectories.add(("/" + FilenameUtils.getPath(classPath.getAbsolutePath())));
//            }
//        }
//    }
//
//    public void update() throws IOException {
//        CombinedTypeSolver combinedTypeSolver = new CombinedTypeSolver();
//        combinedTypeSolver.add(new ReflectionTypeSolver());
//        try {
//            combinedTypeSolver.add(new JarTypeSolver(this.jdk));
//        }
//        catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        List<File> jars = new ArrayList<>();
//        Files.walk(Paths.get(sourceDirectory.getAbsolutePath())).filter(Files::isRegularFile).forEach(file2 -> {
//            File f2 = file2.toFile();
//            if (!file2.toString().contains(".ipynb")) {
//                if (file2.toString().endsWith(".jar")) {
//                    jars.add(f2);
//                }
//                else if (file2.toString().endsWith(".java")) {
//                    String cls = f2.getName().replace(".java", "");
//                    javaFile2Path.put(cls, f2);
//                }
//                else if (file2.toString().endsWith(".class")) {
//                    String cls = f2.getName().replace(".class", "");
//                    classFile2Path.put(cls, f2);
//                    this.sourceDirectories.add("/" + FilenameUtils.getPath(f2.getAbsolutePath()));
//                }
//            }
//        });
//
//        for(File jar: jars) {
//            try {
//                combinedTypeSolver.add(new JarTypeSolver(jar.getAbsolutePath()));
//                break;
//            }
//            catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        combinedTypeSolver.add(new JavaParserTypeSolver(this.sourceDirectory));
//
//        this.returnToTokenPreProcessor = new ReturnToTokenPreProcessor();
//        this.nextTokenPreProcessor = new NextTokenPreProcessor();
//        this.typePreProcessor = new TypePreProcessor(combinedTypeSolver);
//        this.nodePreProcessor = new NodePreProcessor();
//        this.lastReadWritePreProcessor = new LastReadWritePreProcessorV2();
//        this.computedFromPreProcessor = new ComputedFromPreProcessor();
//        this.lastLexicalUsePreProcessor = new LastLexicalUsePreProcessor();
//        this.fieldPreProcessor = new FieldPreProcessor();
//        this.lastFieldLexPreprocessor = new LastFieldLexPreprocessor();
//    }
//
//    public void process(Node node) throws IOException, ParseException {
//        nodePreProcessor.process(node);
//        lastFieldLexPreprocessor.process(node);
//        fieldPreProcessor.process(node);
//        lastLexicalUsePreProcessor.process(node);
//        computedFromPreProcessor.process(node);
//        lastReadWritePreProcessor.process(node);
//        returnToTokenPreProcessor.process(node);
//        nextTokenPreProcessor.process(node);
//        typePreProcessor.process(node);
//    }
//
//    public void parseSources(String outputDir, File file) {
//        for(String cls : traces.keySet())  {
//            for(String method: traces.get(cls).keySet()) {
//                File outFile = new File(outputDir + File.separator + cls + "###" + method + ".gml");
//                if (!outFile.exists()) {
//                    GraphManager graphManager = parse_method(cls, method, 0, 1);
//                    if (graphManager != null && graphManager.graphs.get(method) != null) {
//                        try {
//                            saveGraph(graphManager.graphs.get(method), (outputDir +
//                                File.separator + cls + "###" + method + ".gml"));
//                        }
//                        catch (Exception e) {
//                            e.printStackTrace();
//                        }
//                    }
//                    else {
//                        try {
//                            outFile.createNewFile();
//                        }
//                        catch (Exception e) {
//                            e.printStackTrace();
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//    public GraphManager parse_method(String cls, String methodName2, int cur_depth, int max_depth) {
//        if (cur_depth > max_depth) {
//            return null;
//        }
//        GraphManager graphManager = null;
//
//        try {
//            if (javaFile2Path.get(cls) != null) {
//                graphManager = getGraphManager(javaFile2Path.get(cls));
//
//                if (cur_depth == 0) {
//                    markAsTest(graphManager.graphs.get(methodName2));
//                }
//            }
//        }
//        catch (Exception e) {
//            System.err.println("Failed parse method: " + methodName2);
//            e.printStackTrace();
//        }
//        catch(StackOverflowError e){
//            System.err.println("Overflow!");
//            e.printStackTrace();
//        }
//
//        if (graphManager == null) {
//            return null;
//        }
//        HashMap<String, GraphManager> cache = new HashMap<>();
//        HashMap<String, String> cache2 = new HashMap<>();
//
//        cache.put(cls + methodName2, graphManager);
//        cache2.put(cls + methodName2, methodName2);
//
//        // Parse trace graph
//        if (cur_depth < max_depth) {
//            int traceNum = 0;
//            int prevNum = -1;
//            String fromDecl = "";
//            String toDecl = "";
//
//            if (traces.containsKey(cls) && traces.get(cls).containsKey(methodName2)) { ;
//                for (String line: traces.get(cls).get(methodName2)) {
//                    try {
//                        String tmp = line.split("###")[1];
//                        String methodName = tmp.split(":")[0];
//                        int lineNum = Integer.parseInt(tmp.split(": ")[1]);
//                        String cls2 = line.split("###")[0].replace(".java", "");
//
//                        try {
//                            if (!cache.containsKey(cls2 + methodName)) {
//                                GraphManager graphManager1 = parse_method(cls2, methodName, cur_depth + 1, max_depth);
//                                joinGraphs(graphManager, graphManager1, methodName2, methodName, methodName);
//                                cache.put(cls2 + methodName, graphManager1);
//                                cache2.put(cls2 + methodName, methodName);
//                            }
//                        }
//                        catch(Exception e){
//                        }
//                        if (cache.get(cls2 + methodName) == null) {
//                            continue;
//                        }
//                        toDecl = cache2.get(cls2 + methodName);
//
//                        if (prevNum == -1) {
//                            prevNum = lineNum;
//                            fromDecl = toDecl;
//                            continue;
//                        }
//                        else if (prevNum == lineNum) {
//                            continue;
//                        }
//
//                        Vertex from = graphManager.line2vertex.get(fromDecl + String.valueOf(prevNum));
//                        Vertex to = graphManager.line2vertex.get(toDecl + String.valueOf(lineNum));
//
//                        if (from != null && to != null) {
//                            org.apache.tinkerpop.gremlin.structure.Edge edge = from.addEdge("TRACE", to);
//                            edge.property("type", "TRACE");
//                            edge.property("traceNum", Integer.toString(traceNum));
//                            traceNum += 1;
//                            prevNum = lineNum;
//                            fromDecl = toDecl;
//                        }
//                    }
//                    catch(Exception e){
//                    }
//                }
//            }
//        }
//
//        return graphManager;
//    }
//
//    private void saveGraph(TinkerGraph graph, String outGMLFile) throws IOException {
//        if (graph.vertices().hasNext()) {
//            graph.io(IoCore.graphml()).writeGraph(outGMLFile);
//        }
//    }
//
//    private GraphManager getGraphManager(File javaPath) throws Exception {
//        if (graphManagerCache.containsKey(javaPath.getAbsolutePath())) {
//            return graphManagerCache.get(javaPath.getAbsolutePath());
//        }
//        ExecutorService es = Executors.newSingleThreadExecutor();
//        TimeLimiter tl = SimpleTimeLimiter.create(es);
//        GraphManager graphManager = null;
//
//        try {
//            graphManager =  tl.callWithTimeout(() -> {
//                CompilationUnit cu = JavaParser.parse(javaPath);
//                GraphManager graphManager2 = new GraphManager();
//                this.process(cu);
//                graphManager2.process(cu);
//
//                return graphManager2;
//            }, 10, TimeUnit.SECONDS);
//        } finally {
//            es.shutdownNow();
//        }
//
////        CompilationUnit cu = JavaParser.parse(javaPath);
////        GraphManager graphManager = new GraphManager();
////        this.process(cu);
////        graphManager.process(cu);
//        graphManagerCache.put(javaPath.getAbsolutePath(), graphManager);
//        return graphManager;
//    }
//
//    private void joinGraphs(GraphManager graphManager1, GraphManager graphManager2,
//                            String decl1, String decl2, String method) {
//        if (graphManager1 == null || graphManager2 == null) {
//            return;
//        }
//        Vertex startVertex = null;
//        Vertex endVertex = null;
//        Map<String, Vertex> ids = new HashMap<>();
//
//        TinkerGraph g1 = graphManager1.graphs.get(decl1);
//        for (Iterator<Vertex> vertices = g1.vertices(); vertices.hasNext();) {
//            Vertex v = vertices.next();
//
//            if (v.property("text").value().toString().contains(method) &&
//                    v.property("type").value().toString().contains("Expr")) {
//                startVertex = v;
//                break;
//            }
//        }
//        if (startVertex == null)
//            return;
//
//        TinkerGraph g2 = graphManager2.graphs.get(decl2);
//        for (Iterator<org.apache.tinkerpop.gremlin.structure.Edge> edges = g2.edges(); edges.hasNext();) {
//            org.apache.tinkerpop.gremlin.structure.Edge edge = edges.next();
//            Vertex out2 = edge.outVertex();
//            Vertex in2 = edge.inVertex();
//            Vertex out1 = getOrAddVertex(graphManager1, decl1, decl2, ids, out2);
//            Vertex in1 = getOrAddVertex(graphManager1, decl1, decl2, ids, in2);
//            setAttributes(out2, out1);
//            setAttributes(in2, in1);
//
//            org.apache.tinkerpop.gremlin.structure.Edge newEdge = out1.addEdge(edge.property("type").value().toString(), in1);
//            newEdge.property("type", edge.property("type").value().toString());
//
//            if (out1.property("type").value().toString().equals("MethodDeclaration")) {
//                endVertex = out1;
//            }
//            else if (in1.property("type").value().toString().equals("MethodDeclaration")) {
//                endVertex = in1;
//            }
//        }
//        org.apache.tinkerpop.gremlin.structure.Edge newEdge = startVertex.addEdge("AST", endVertex);
//        newEdge.property("type", "AST");
//    }
//
//    private Vertex getOrAddVertex(GraphManager graphManager1, String decl1, String decl2, Map<String, Vertex> ids, Vertex vertex) {
//        if (!ids.containsKey(vertex.id().toString())) {
//            Vertex out = graphManager1.graphs.get(decl1).addVertex(Integer.toString(graphManager1.vertexIds.get(decl1) + 1));
//            graphManager1.vertexIds.put(decl1, graphManager1.vertexIds.get(decl1) + 1);
//            graphManager1.line2vertex.put(decl2 + vertex.property("lineID").value().toString(), out);
//
//            ids.put(vertex.id().toString(), out);
//
//            return out;
//        }
//        else {
//            return ids.get(vertex.id().toString());
//        }
//    }
//
//    private void setAttributes(Vertex from, Vertex to) {
//        for(String key : from.keys()) {
//            to.property(key, from.property(key).value().toString());
//        }
//    }
//
//    private void markAsTest(TinkerGraph graph) {
//        for (Iterator<Vertex> vertices = graph.vertices(); vertices.hasNext();) {
//            Vertex v = vertices.next();
//            v.property("isTest", "true");
//        }
//    }
//}