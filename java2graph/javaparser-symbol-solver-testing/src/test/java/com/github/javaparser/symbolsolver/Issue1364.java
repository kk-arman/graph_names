package com.github.javaparser.symbolsolver;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParseStart;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Providers;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.resolution.UnsolvedSymbolException;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.symbolsolver.javaparsermodel.declarations.JavaParserClassDeclaration;
import com.github.javaparser.symbolsolver.model.resolution.SymbolReference;
import com.github.javaparser.symbolsolver.model.resolution.TypeSolver;
import com.github.javaparser.symbolsolver.resolution.AbstractResolutionTest;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

/**
 * @author Dominik Hardtke
 * @since 02.02.2018
 */
public class Issue1364 extends AbstractResolutionTest {
    private JavaParser javaParser;

    @Before
    public void setup() {
        ClassOrInterfaceDeclaration fakeObject = new ClassOrInterfaceDeclaration();
        fakeObject.setName(new SimpleName("java.lang.Object"));

        TypeSolver typeSolver = new TypeSolver() {
            @Override
            public TypeSolver getParent() {
                return null;
            }

            @Override
            public void setParent(TypeSolver parent) {
            }

            @Override
            public SymbolReference<ResolvedReferenceTypeDeclaration> tryToSolveType(String name) {
                if ("java.lang.Object".equals(name)) {
                    // custom handling
                    return SymbolReference.solved(new JavaParserClassDeclaration(fakeObject, this));
                }

                return SymbolReference.unsolved(ResolvedReferenceTypeDeclaration.class);
            }
        };

        ParserConfiguration config = new ParserConfiguration();
        config.setSymbolResolver(new JavaSymbolSolver(typeSolver));
        javaParser = new JavaParser(config);
    }

    @Test(timeout = 1000)
    public void resolveSubClassOfObject() {
        String code = String.join(System.lineSeparator(),
                "package graph;",
                "public class Vertex {",
                "    public static void main(String[] args) {",
                "        System.out.println();",
                "    }",
                "}"
        );

        ParseResult<CompilationUnit> parseResult = javaParser.parse(ParseStart.COMPILATION_UNIT, Providers.provider(code));
        assertTrue(parseResult.isSuccessful());
        assertTrue(parseResult.getResult().isPresent());

        List<MethodCallExpr> methodCallExprs = parseResult.getResult().get().findAll(MethodCallExpr.class);
        assertEquals(1, methodCallExprs.size());

        try {
            methodCallExprs.get(0).calculateResolvedType();
            fail("An UnsolvedSymbolException should be thrown");
        } catch (UnsolvedSymbolException ignored) {
            // all is fine if an UnsolvedSymbolException is thrown
        }
    }
}

