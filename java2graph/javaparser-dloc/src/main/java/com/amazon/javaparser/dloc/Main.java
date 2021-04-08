// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
package com.amazon.javaparser.dloc;

import com.amazon.javaparser.dloc.visualize.DataController;
import com.github.javaparser.ParseException;

import java.io.*;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.util.*;
import java.nio.file.Paths;
import java.nio.file.Files;

import com.opencsv.*; 
import org.apache.commons.lang3.math.NumberUtils;

/**
 * Created by sbadal on 4/4/18.
 */
public class Main {
    
    // args[0] - project folder
    // args[1] - output folder
    // ars[2] - csv with test methods
    // args[3] - dir with trace methods
    // args[4] - name of repo_name in csv
    public static void main(String[] args) throws IOException, ParseException, FileNotFoundException {
        HashMap<String, HashSet<String>> testDictionaries = getDictFromCSV(args[2], args[4]);
        HashMap<String, HashMap<String, ArrayList<String>>> traces = getTraces(args[3], testDictionaries);
        
        new DataController().process(args[0], testDictionaries, traces, args[1]);
    }
    
    public static HashMap<String, HashSet<String>> getDictFromCSV(String path, String clsName) throws IOException, ParseException {
        HashMap<String, HashSet<String>> dict = new HashMap<>();
        if (path.equals("NONE"))
            return dict;
        
        CSVReader csvReader = new CSVReaderBuilder(new FileReader(path)).withSkipLines(1).build(); 
        String[] nextRecord; 
        
        while ((nextRecord = csvReader.readNext()) != null) {
            if (nextRecord[1].equals(clsName)) {
                String[] tmp = nextRecord[2].split("/");
                String n = tmp[tmp.length - 1].replace(".java", "");
                HashSet<String> prev = dict.getOrDefault(n, new HashSet<String>());
                prev.add(nextRecord[3]);
                dict.put(n, prev);
            }
        }
        
        return dict;
    }
    
    public static HashMap<String, HashMap<String, ArrayList<String>>> getTraces(String dir, HashMap<String, HashSet<String>> testDictionaries) throws IOException {
        HashMap<String, HashMap<String, ArrayList<String>>> dict = new HashMap<>();
        
        Files.walk(Paths.get((new File(dir)).getAbsolutePath())).filter(Files::isRegularFile).forEach(file2 -> {
            File f2 = file2.toFile();
            if (!file2.toString().contains(".ipynb")) {
                if (file2.toString().contains("trace###")) {
                        try (BufferedReader br = new BufferedReader(new FileReader(f2))) {
                            String[] line = br.readLine().split("###");
                            String[] fullName = line[0].split("\\.");
                            String cls = fullName[fullName.length - 1];
                            String methodName;
                            if (line[1].contains("[")) {
                                methodName = line[1].split("[")[0];
                            }
                            else {
                                methodName = line[1];
                            }
                            if (testDictionaries.containsKey(cls)) {
                                if (testDictionaries.get(cls).contains(methodName)) {
                                    HashMap<String, ArrayList<String>> prev = dict.getOrDefault(cls, new HashMap<String, ArrayList<String>>());
                                    ArrayList<String> trace = new ArrayList<>();
                                    String line2;
                                    while((line2=br.readLine())!=null) {
                                        trace.add(line2);
                                    }

                                    prev.put(methodName, trace);
                                    dict.put(cls, prev);
                                }
                            }
                        }
                        catch (Exception ex) {
                        }
                }
            }
        });
        
        return dict;
    }
}
