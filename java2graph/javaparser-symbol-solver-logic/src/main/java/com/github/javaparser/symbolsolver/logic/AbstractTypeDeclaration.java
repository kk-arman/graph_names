/*
 * Copyright 2016 Federico Tomassetti
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.github.javaparser.symbolsolver.logic;

import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.types.ResolvedReferenceType;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Common ancestor for most types.
 *
 * @author Federico Tomassetti
 */
public abstract class AbstractTypeDeclaration implements ResolvedReferenceTypeDeclaration {

    @Override
    public final Set<MethodUsage> getAllMethods() {
        Set<MethodUsage> methods = new HashSet<>();

        Set<String> methodsSignatures = new HashSet<>();

        for (ResolvedMethodDeclaration methodDeclaration : getDeclaredMethods()) {
            methods.add(new MethodUsage(methodDeclaration));
            methodsSignatures.add(methodDeclaration.getSignature());
        }

        for (ResolvedReferenceType ancestor : getAllAncestors()) {
            for (MethodUsage mu : ancestor.getDeclaredMethods()) {
                String signature = mu.getDeclaration().getSignature();
                if (!methodsSignatures.contains(signature)) {
                    methodsSignatures.add(signature);
                    methods.add(mu);
                }
            }
        }

        return methods;
    }

    @Override
    public final boolean isFunctionalInterface() {
        return FunctionalInterfaceLogic.getFunctionalMethod(this).isPresent();
    }

}
