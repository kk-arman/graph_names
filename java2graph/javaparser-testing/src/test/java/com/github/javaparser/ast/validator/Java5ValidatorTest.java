package com.github.javaparser.ast.validator;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParseStart;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.stmt.Statement;
import org.junit.Test;

import static com.github.javaparser.ParseStart.*;
import static com.github.javaparser.ParseStart.COMPILATION_UNIT;
import static com.github.javaparser.Providers.provider;
import static com.github.javaparser.ast.validator.Java1_1ValidatorTest.allModifiers;
import static com.github.javaparser.utils.TestUtils.assertNoProblems;
import static com.github.javaparser.utils.TestUtils.assertProblems;

public class Java5ValidatorTest {
    public static final JavaParser javaParser = new JavaParser(new ParserConfiguration().setValidator(new Java5Validator()));

    @Test
    public void genericsWithoutDiamond() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X<A>{List<String> b = new ArrayList<>();}"));
        assertProblems(result, "(line 1,col 33) The diamond operator is not supported.");
    }

    @Test
    public void topAnnotationDeclaration() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider(allModifiers + "@interface X{}"));
        assertProblems(result,
                "(line 1,col 1) Can have only one of 'public', 'protected', 'private'.",
                "(line 1,col 1) Can have only one of 'final', 'abstract'.",
                "(line 1,col 1) Can have only one of 'native', 'strictfp'.",
                "(line 1,col 1) 'transient' is not allowed here.",
                "(line 1,col 1) 'volatile' is not allowed here.",
                "(line 1,col 1) 'synchronized' is not allowed here.",
                "(line 1,col 1) 'default' is not allowed here.",
                "(line 1,col 1) 'native' is not allowed here.",
                "(line 1,col 1) 'transitive' is not allowed here.",
                "(line 1,col 1) 'static' is not allowed here.",
                "(line 1,col 1) 'final' is not allowed here.",
                "(line 1,col 1) 'private' is not allowed here.",
                "(line 1,col 1) 'protected' is not allowed here."
        );
    }

    @Test
    public void nestedAnnotationDeclaration() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X{" + allModifiers + "@interface I{}}"));
        assertProblems(result,
                "(line 1,col 9) Can have only one of 'public', 'protected', 'private'.",
                "(line 1,col 9) Can have only one of 'final', 'abstract'.",
                "(line 1,col 9) Can have only one of 'native', 'strictfp'.",
                "(line 1,col 9) 'transient' is not allowed here.",
                "(line 1,col 9) 'volatile' is not allowed here.",
                "(line 1,col 9) 'default' is not allowed here.",
                "(line 1,col 9) 'final' is not allowed here.",
                "(line 1,col 9) 'synchronized' is not allowed here.",
                "(line 1,col 9) 'native' is not allowed here.",
                "(line 1,col 9) 'transitive' is not allowed here."
        );
    }

    @Test
    public void annotationMember() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("@interface X{" + allModifiers + "int x();}"));
        assertProblems(result,
                "(line 1,col 14) Can have only one of 'public', 'protected', 'private'.",
                "(line 1,col 14) Can have only one of 'final', 'abstract'.",
                "(line 1,col 14) Can have only one of 'native', 'strictfp'.",
                "(line 1,col 14) 'transient' is not allowed here.",
                "(line 1,col 14) 'volatile' is not allowed here.",
                "(line 1,col 14) 'final' is not allowed here.",
                "(line 1,col 14) 'synchronized' is not allowed here.",
                "(line 1,col 14) 'default' is not allowed here.",
                "(line 1,col 14) 'native' is not allowed here.",
                "(line 1,col 14) 'protected' is not allowed here.",
                "(line 1,col 14) 'private' is not allowed here.",
                "(line 1,col 14) 'strictfp' is not allowed here.",
                "(line 1,col 14) 'static' is not allowed here.",
                "(line 1,col 14) 'transitive' is not allowed here."
        );
    }

    @Test
    public void topEnum() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider(allModifiers + "enum X{}"));
        assertProblems(result,
                "(line 1,col 1) Can have only one of 'public', 'protected', 'private'.",
                "(line 1,col 1) Can have only one of 'final', 'abstract'.",
                "(line 1,col 1) Can have only one of 'native', 'strictfp'.",
                "(line 1,col 1) 'transient' is not allowed here.",
                "(line 1,col 1) 'volatile' is not allowed here.",
                "(line 1,col 1) 'synchronized' is not allowed here.",
                "(line 1,col 1) 'default' is not allowed here.",
                "(line 1,col 1) 'native' is not allowed here.",
                "(line 1,col 1) 'transitive' is not allowed here.",
                "(line 1,col 1) 'static' is not allowed here.",
                "(line 1,col 1) 'abstract' is not allowed here.",
                "(line 1,col 1) 'final' is not allowed here.",
                "(line 1,col 1) 'private' is not allowed here.",
                "(line 1,col 1) 'protected' is not allowed here."
        );
    }

    @Test
    public void nestedEnum() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X{" + allModifiers + "enum I{}}"));
        assertProblems(result,
                "(line 1,col 9) Can have only one of 'public', 'protected', 'private'.",
                "(line 1,col 9) Can have only one of 'final', 'abstract'.",
                "(line 1,col 9) Can have only one of 'native', 'strictfp'.",
                "(line 1,col 9) 'transient' is not allowed here.",
                "(line 1,col 9) 'volatile' is not allowed here.",
                "(line 1,col 9) 'default' is not allowed here.",
                "(line 1,col 9) 'abstract' is not allowed here.",
                "(line 1,col 9) 'final' is not allowed here.",
                "(line 1,col 9) 'synchronized' is not allowed here.",
                "(line 1,col 9) 'native' is not allowed here.",
                "(line 1,col 9) 'transitive' is not allowed here."
        );
    }

    @Test
    public void varargs() {
        ParseResult<Parameter> result = javaParser.parse(PARAMETER, provider("String... x"));
        assertNoProblems(result);
    }

    @Test
    public void foreach() {
        ParseResult<Statement> result = javaParser.parse(STATEMENT, provider("for(X x: xs){}"));
        assertNoProblems(result);
    }

    @Test
    public void staticImport() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("import static x;import static x.*;import x.X;import x.*;"));
        assertNoProblems(result);
    }

    @Test
    public void noPrimitiveTypeArguments() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X extends Y<int> {}"));
        assertProblems(result, "(line 1,col 17) Type arguments may not be primitive.");
    }

    @Test
    public void enumAllowedAsIdentifier() {
        ParseResult<Statement> result = javaParser.parse(STATEMENT, provider("int enum;"));
        assertProblems(result, "(line 1,col 5) 'enum' cannot be used as an identifier as it is a keyword.");
    }
}
