// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
package com.amazon.javaparser.dloc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by sbadal on 2/13/18.
 */
@SpringBootApplication
public class GraphVisualizerApplication {
    public static void main(String[] args) {
        System.out.println("Hello");
        SpringApplication.run(GraphVisualizerApplication.class, args);
    }
}
