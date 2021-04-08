// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
package com.amazon.javaparser.dloc.converter;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.OtherLinkType;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.body.MethodDeclaration;
import org.apache.tinkerpop.gremlin.structure.Edge;
import org.apache.tinkerpop.gremlin.structure.Vertex;
import org.apache.tinkerpop.gremlin.tinkergraph.structure.TinkerGraph;
import org.apache.commons.collections4.set.ListOrderedSet;
import org.apache.commons.lang.StringUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


public class GraphManager {

    private GraphAttributeParser graphAttributeParser = new GraphAttributeParser();
    public Map<String, TinkerGraph> graphs = new HashMap<>();
    public Map<String, Map<Integer, Vertex>> vertexCaches = new HashMap<>();
    public Map<String, Integer> vertexIds = new HashMap<>();
    public Map<String, Vertex> line2vertex = new HashMap<>();
    public Map<Integer, String> node2method = new HashMap<>();
    
    public GraphManager() {
    }

    public void process(Node node) {
        collectNode(node, TinkerGraph.open(), "", "");
        processEdge(node);
    }

    private void processEdge(Node node) {
        String fromDecl = node2method.get(node.hashCode(true));
        Vertex from = null;

        if (fromDecl != null && vertexCaches.get(fromDecl) != null) {
            from = vertexCaches.get(fromDecl).get(node.hashCode(true));
        }
        
        for (Map.Entry<OtherLinkType, ListOrderedSet<Node>> entry : node.getOthersNodes().entrySet()) {
            if (entry.getKey() == OtherLinkType.TYPE) {
                List<String> referenceList = entry.getValue().asList().stream().map(n -> {
                    if (n instanceof SimpleName) {
                        return ((SimpleName) n).getIdentifier();
                    }
                    throw new RuntimeException("Not expected.");
                }).collect(Collectors.toList());
                setReference(from, referenceList);
            } else {
                for (Node child : entry.getValue().asList()) {
                    String toDecl = node2method.get(child.hashCode(true));
                    Vertex to = null;
                    if (toDecl != null && vertexCaches.get(toDecl) != null) {
                        to = vertexCaches.get(toDecl).get(child.hashCode(true));
                    }
                    if (from != null && to != null) {
                        Edge edge = from.addEdge(entry.getKey().name(), to);
                        edge.property("type", entry.getKey().name());
                    }

                    if (entry.getKey() == OtherLinkType.AST) {
                        processEdge(child);
                    }
                }
            }
        }
    }

    private void collectNode(Node node, TinkerGraph graph, String body, String decl) {
        Vertex vertex = null;
//         System.out.println(decl);
        if (node.getClass().getSimpleName().equals("MethodDeclaration")) {
            body = node.toString();
            graph = TinkerGraph.open();
            decl = ((MethodDeclaration) node).getNameAsString();
            
            vertex = createVertex(node, graph, 1);
            Map<Integer, Vertex> vertexCache = new HashMap<>();

            graphs.put(decl, graph);
            vertexIds.put(decl, 1);
            vertexCache.put(node.hashCode(true), vertex);
            vertexCaches.put(decl, vertexCache);
        }
        else if (body.contains(node.toString()) && vertexIds.containsKey(decl)) {
            vertex = createVertex(node, graph, vertexIds.get(decl) + 1);
            Map<Integer, Vertex> vertexCache = vertexCaches.get(decl);

            vertexIds.put(decl, vertexIds.get(decl) + 1);
            vertexCache.put(node.hashCode(true), vertex);
        }

        if(node.getBegin().isPresent()) {
            if ((!line2vertex.containsKey(decl + String.valueOf(node.getBegin().get().line))) && vertex != null) {
                line2vertex.put(decl + String.valueOf(node.getBegin().get().line), vertex);
            }
        }

        node2method.put(node.hashCode(true), decl);
        for (Node child : node.getOthersNodes().get(OtherLinkType.AST).asList()) {
            collectNode(child, graph, body, decl);
        }
    }

    private Vertex createVertex(Node node, TinkerGraph graph, int id) {
        Vertex vertex = graph.addVertex(Integer.toString(id));
        setAttributes(node, vertex);
        return vertex;
    }

    private void setAttributes(Node node, Vertex vertex) {
        vertex.property("type", node.getClass().getSimpleName());
        if(node.getBegin().isPresent()) {
            vertex.property("lineID", String.valueOf(node.getBegin().get().line));
        }
        if(node.getParentNode().isPresent()) {
            vertex.property("parentType", node.getParentNode().get().getClass().getSimpleName());
        }
        vertex.property("text", node.toString());
        for (Map.Entry<String, String> entry : graphAttributeParser.getAttributes(node).entrySet()) {
            vertex.property(entry.getKey(), entry.getValue());
        }
    }

    private void setReference(Vertex vertex, List<String> references) {
        if (vertex != null) {
            vertex.property("reference", StringUtils.join(references, ","));
        }
    }
}
