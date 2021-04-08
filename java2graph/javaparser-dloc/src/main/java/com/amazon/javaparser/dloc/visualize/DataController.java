// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
package com.amazon.javaparser.dloc.visualize;

import com.amazon.javaparser.dloc.processor.SourceProcessor;
import com.github.javaparser.ParseException;
// import org.apache.tinkerpop.gremlin.tinkergraph.structure.io.graphml.GraphMLWriter;
// import org.apache.tinkerpop.gremlin.structure.io.graphson.GraphSONMode;
// import org.apache.tinkerpop.gremlin.tinkergraph.structure.io.graphson.GraphSONWriter;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;

/**
 * Created by sbadal on 2/13/18.
 */
@RestController
public class DataController {

    @RequestMapping("/process")
    public Set<String> process(@RequestParam("inputDir") String inputDir, @RequestParam("dict") HashMap<String, HashSet<String>> testDictionaries, @RequestParam("dict") HashMap<String, HashMap<String, ArrayList<String>>> traces, @RequestParam("outputDir") String outputDir) throws IOException, ParseException {        
        File sourceDirectory = new File(inputDir);
        File output = new File(outputDir);
        
        if (!output.exists()) {
            throw new RuntimeException("Output folder does not exist.");
        }
         else if (!sourceDirectory.exists()) {
            throw new RuntimeException("Input folder does not exist.");
        }

        String jdk = DataController.getLocation(ArrayList.class).getPath();

        SourceProcessor sourceFileInfoExtractor = new SourceProcessor(sourceDirectory, jdk, testDictionaries, traces);
        sourceFileInfoExtractor.parseSources(outputDir, sourceDirectory);
        
        return null;
    }


    public static URL getLocation(final Class<?> c) {
        if (c == null) return null; // could not load the class

        // try the easy way first
        try {
            final URL codeSourceLocation =
                    c.getProtectionDomain().getCodeSource().getLocation();
            if (codeSourceLocation != null) return codeSourceLocation;
        } catch (final SecurityException e) {
            // NB: Cannot access protection domain.
        } catch (final NullPointerException e) {
            // NB: Protection domain or code source is null.
        }

        // NB: The easy way failed, so we try the hard way. We ask for the class
        // itself as a resource, then strip the class's path from the URL string,
        // leaving the base path.

        // get the class's raw resource path
        final URL classResource = c.getResource(c.getSimpleName() + ".class");
        if (classResource == null) return null; // cannot find class resource

        final String url = classResource.toString();
        final String suffix = c.getCanonicalName().replace('.', '/') + ".class";
        if (!url.endsWith(suffix)) return null; // weird URL

        // strip the class's path from the URL string
        final String base = url.substring(0, url.length() - suffix.length());

        String path = base;

        // remove the "jar:" prefix and "!/" suffix, if present
        if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);

        try {
            return new URL(path);
        } catch (final MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
