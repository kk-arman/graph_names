package com.github.javaparser.ast.validator;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Problem;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.type.PrimitiveType;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static com.github.javaparser.ParseStart.*;
import static com.github.javaparser.Providers.provider;
import static com.github.javaparser.utils.TestUtils.assertNoProblems;
import static com.github.javaparser.utils.TestUtils.assertProblems;
import static org.junit.Assert.assertEquals;

public class Java1_0ValidatorTest {
    public static final JavaParser javaParser = new JavaParser(new ParserConfiguration().setValidator(new Java1_0Validator()));

    @Test
    public void tryWithoutResources() {
        ParseResult<Statement> result = javaParser.parse(STATEMENT, provider("try(X x=new Y()){}"));
        assertProblems(result,
                "(line 1,col 1) Catch with resource is not supported.",
                "(line 1,col 1) Try has no finally and no catch.");
    }

    @Test
    public void classExtendingMoreThanOne() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X extends Y, Z {}"));
        assertProblems(result, "(line 1,col 20) A class cannot extend more than one other class.");
    }

    @Test
    public void interfaceUsingImplements() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("interface X implements Y {}"));
        assertProblems(result, "(line 1,col 24) An interface cannot implement other interfaces.");
    }

    @Test
    public void interfaceWithInitializer() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("interface X {{}}"));
        assertProblems(result, "(line 1,col 14) An interface cannot have initializers.");
    }

    @Test
    public void defaultInClass() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X {default void a(){};}"));
        assertProblems(result, "(line 1,col 10) 'default' is not allowed here.");
    }

    @Test
    public void leftHandAssignmentCannotBeAConditional() {
        ParseResult<Expression> result = javaParser.parse(EXPRESSION, provider("(1==2)=3"));
        assertProblems(result, "(line 1,col 1) Illegal left hand side of an assignment.");
    }

    @Test
    public void leftHandAssignmentCannotBeEmptyBraces() {
        ParseResult<Expression> result = javaParser.parse(EXPRESSION, provider("()=3"));
        assertProblems(result,
                "(line 1,col 1) Illegal left hand side of an assignment.",
                "(line 1,col 1) Lambdas are not supported.");
    }

    @Test
    public void leftHandAssignmentCanBeInBraces() {
        ParseResult<Expression> result = javaParser.parse(EXPRESSION, provider("(i) += (i) += 1"));
        assertNoProblems(result);
    }

    @Test
    public void noInnerClasses() {
        ParseResult<CompilationUnit> result = javaParser.parse(COMPILATION_UNIT, provider("class X{class Y{}}"));
        assertProblems(result, "(line 1,col 9) inner classes or interfaces are not supported.");
    }

    @Test
    public void noReflection() {
        ParseResult<Expression> result = javaParser.parse(EXPRESSION, provider("Abc.class"));
        assertProblems(result, "(line 1,col 1) Reflection is not supported.");
    }

    @Test
    public void nonEmptyList() {
        ArrayCreationExpr expr = new ArrayCreationExpr(PrimitiveType.booleanType());
        List<Problem> problems= new ArrayList<>();
        new Java1_0Validator().accept(expr, new ProblemReporter(problems::add));
        assertEquals("ArrayCreationExpr.levels can not be empty.", problems.get(0).getMessage());
    }
}
