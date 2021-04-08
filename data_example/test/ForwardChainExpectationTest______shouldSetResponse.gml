<?xml version='1.0' encoding='utf-8'?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd"><key id="d8" for="edge" attr.name="type" attr.type="string"/>
<key id="d7" for="node" attr.name="modifier" attr.type="string"/>
<key id="d6" for="node" attr.name="identifier" attr.type="string"/>
<key id="d5" for="node" attr.name="reference" attr.type="string"/>
<key id="d4" for="node" attr.name="is_test" attr.type="string"/>
<key id="d3" for="node" attr.name="parentType" attr.type="string"/>
<key id="d2" for="node" attr.name="type" attr.type="string"/>
<key id="d1" for="node" attr.name="text" attr.type="string"/>
<key id="d0" for="node" attr.name="lineID" attr.type="string"/>
<graph edgedefault="undirected"><node id="1">
  <data key="d0">49</data>
  <data key="d1">{
    // given
    HttpResponse response = response();
    // when
    Expectation[] upsertedExpectations = forwardChainExpectation.respond(response);
    // then
    assertThat(upsertedExpectations, is(new Expectation[] { mockExpectation }));
    verify(mockExpectation).thenRespond(same(response));
    verify(mockAbstractClient).upsert(mockExpectation);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d0">51</data>
  <data key="d1">HttpResponse response = response()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d0">51</data>
  <data key="d1">response = response()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d0">51</data>
  <data key="d1">HttpResponse</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">HttpResponse</data>
  <data key="d0">51</data>
  <data key="d1">HttpResponse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d5">UnknownType</data>
  <data key="d6">response</data>
  <data key="d0">51</data>
  <data key="d1">response</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">51</data>
  <data key="d1">response()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d5">otherMethodCall</data>
  <data key="d6">response</data>
  <data key="d0">51</data>
  <data key="d1">response</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d0">54</data>
  <data key="d1">Expectation[] upsertedExpectations = forwardChainExpectation.respond(response)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d0">54</data>
  <data key="d1">upsertedExpectations = forwardChainExpectation.respond(response)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d0">54</data>
  <data key="d1">Expectation[]</data>
  <data key="d2">ArrayType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d0">54</data>
  <data key="d1">Expectation</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ArrayType</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Expectation</data>
  <data key="d0">54</data>
  <data key="d1">Expectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d5">UnknownType</data>
  <data key="d6">upsertedExpectations</data>
  <data key="d0">54</data>
  <data key="d1">upsertedExpectations</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">54</data>
  <data key="d1">forwardChainExpectation.respond(response)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d5">UnknownType</data>
  <data key="d6">forwardChainExpectation</data>
  <data key="d0">54</data>
  <data key="d1">forwardChainExpectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d5">otherMethodCall</data>
  <data key="d6">respond</data>
  <data key="d0">54</data>
  <data key="d1">respond</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d5">UnknownType</data>
  <data key="d6">response</data>
  <data key="d0">54</data>
  <data key="d1">response</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d0">57</data>
  <data key="d1">assertThat(upsertedExpectations, is(new Expectation[] { mockExpectation }))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d0">57</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d5">UnknownType</data>
  <data key="d6">upsertedExpectations</data>
  <data key="d0">57</data>
  <data key="d1">upsertedExpectations</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d0">57</data>
  <data key="d1">is(new Expectation[] { mockExpectation })</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d5">otherMethodCall</data>
  <data key="d6">is</data>
  <data key="d0">57</data>
  <data key="d1">is</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d0">57</data>
  <data key="d1">new Expectation[] { mockExpectation }</data>
  <data key="d2">ArrayCreationExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d0">57</data>
  <data key="d1">Expectation</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ArrayCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Expectation</data>
  <data key="d0">57</data>
  <data key="d1">Expectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d0">57</data>
  <data key="d1">[]</data>
  <data key="d2">ArrayCreationLevel</data>
  <data key="d3">ArrayCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d0">57</data>
  <data key="d1">{ mockExpectation }</data>
  <data key="d2">ArrayInitializerExpr</data>
  <data key="d3">ArrayCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d5">UnknownType</data>
  <data key="d6">mockExpectation</data>
  <data key="d0">57</data>
  <data key="d1">mockExpectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d0">58</data>
  <data key="d1">verify(mockExpectation).thenRespond(same(response))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d0">58</data>
  <data key="d1">verify(mockExpectation)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d5">otherMethodCall</data>
  <data key="d6">verify</data>
  <data key="d0">58</data>
  <data key="d1">verify</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d5">UnknownType</data>
  <data key="d6">mockExpectation</data>
  <data key="d0">58</data>
  <data key="d1">mockExpectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d5">otherMethodCall</data>
  <data key="d6">thenRespond</data>
  <data key="d0">58</data>
  <data key="d1">thenRespond</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d0">58</data>
  <data key="d1">same(response)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d5">otherMethodCall</data>
  <data key="d6">same</data>
  <data key="d0">58</data>
  <data key="d1">same</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d5">UnknownType</data>
  <data key="d6">response</data>
  <data key="d0">58</data>
  <data key="d1">response</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d0">59</data>
  <data key="d1">verify(mockAbstractClient).upsert(mockExpectation)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d0">59</data>
  <data key="d1">verify(mockAbstractClient)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d5">otherMethodCall</data>
  <data key="d6">verify</data>
  <data key="d0">59</data>
  <data key="d1">verify</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d5">UnknownType</data>
  <data key="d6">mockAbstractClient</data>
  <data key="d0">59</data>
  <data key="d1">mockAbstractClient</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d5">otherMethodCall</data>
  <data key="d6">upsert</data>
  <data key="d0">59</data>
  <data key="d1">upsert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d5">UnknownType</data>
  <data key="d6">mockExpectation</data>
  <data key="d0">59</data>
  <data key="d1">mockExpectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="44">
  <data key="d7">public</data>
  <data key="d0">48</data>
  <data key="d1">@Test
public void shouldSetResponse() {
    // given
    HttpResponse response = response();
    // when
    Expectation[] upsertedExpectations = forwardChainExpectation.respond(response);
    // then
    assertThat(upsertedExpectations, is(new Expectation[] { mockExpectation }));
    verify(mockExpectation).thenRespond(same(response));
    verify(mockAbstractClient).upsert(mockExpectation);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="45">
  <data key="d0">48</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="46">
  <data key="d6">Test</data>
  <data key="d0">48</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="47">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">shouldSetResponse</data>
  <data key="d0">49</data>
  <data key="d1">shouldSetResponse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="48">
  <data key="d0">49</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="49">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Expectation</data>
  <data key="d0">60</data>
  <data key="d1">Expectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="50">
  <data key="d0">60</data>
  <data key="d1">{
    expectation.thenRespond(httpTemplate);
    return mockServerClient.upsert(expectation);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="51">
  <data key="d0">61</data>
  <data key="d1">expectation.thenRespond(httpTemplate)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="52">
  <data key="d5">UnknownType</data>
  <data key="d6">expectation</data>
  <data key="d0">61</data>
  <data key="d1">expectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="53">
  <data key="d5">otherMethodCall</data>
  <data key="d6">thenRespond</data>
  <data key="d0">61</data>
  <data key="d1">thenRespond</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="54">
  <data key="d5">UnknownType</data>
  <data key="d6">httpTemplate</data>
  <data key="d0">61</data>
  <data key="d1">httpTemplate</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="55">
  <data key="d0">62</data>
  <data key="d1">return mockServerClient.upsert(expectation);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="56">
  <data key="d0">62</data>
  <data key="d1">mockServerClient.upsert(expectation)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="57">
  <data key="d5">UnknownType</data>
  <data key="d6">mockServerClient</data>
  <data key="d0">62</data>
  <data key="d1">mockServerClient</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="58">
  <data key="d5">otherMethodCall</data>
  <data key="d6">upsert</data>
  <data key="d0">62</data>
  <data key="d1">upsert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="59">
  <data key="d5">UnknownType</data>
  <data key="d6">expectation</data>
  <data key="d0">62</data>
  <data key="d1">expectation</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="60">
  <data key="d7">public</data>
  <data key="d0">60</data>
  <data key="d1">/**
 * Evaluate Velocity or JavaScript template to generate response
 * to return when expectation is matched
 *
 * @param httpTemplate Velocity or JavaScript template used to generate response
 * @return added or updated expectations
 */
public Expectation[] respond(final HttpTemplate httpTemplate) {
    expectation.thenRespond(httpTemplate);
    return mockServerClient.upsert(expectation);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="61">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">respond</data>
  <data key="d0">60</data>
  <data key="d1">respond</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="62">
  <data key="d7">final</data>
  <data key="d0">60</data>
  <data key="d1">final HttpTemplate httpTemplate</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="63">
  <data key="d0">60</data>
  <data key="d1">HttpTemplate</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="64">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">HttpTemplate</data>
  <data key="d0">60</data>
  <data key="d1">HttpTemplate</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="65">
  <data key="d5">UnknownType</data>
  <data key="d6">httpTemplate</data>
  <data key="d0">60</data>
  <data key="d1">httpTemplate</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="66">
  <data key="d0">60</data>
  <data key="d1">Expectation[]</data>
  <data key="d2">ArrayType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="67">
  <data key="d0">60</data>
  <data key="d1">Expectation</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ArrayType</data>
</node>
<node id="68">
  <data key="d7">public,static</data>
  <data key="d0">31</data>
  <data key="d1">public static &lt;T&gt; void assertThat(String reason, T actual, Matcher&lt;? super T&gt; matcher) {
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="69">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">TypeParameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="70">
  <data key="d5">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">TypeParameter</data>
</node>
<node id="71">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d0">31</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="72">
  <data key="d0">31</data>
  <data key="d1">String reason</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="73">
  <data key="d0">31</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="74">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d0">31</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="75">
  <data key="d5">java.lang.String</data>
  <data key="d6">reason</data>
  <data key="d0">31</data>
  <data key="d1">reason</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="76">
  <data key="d0">31</data>
  <data key="d1">T actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="77">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="78">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="79">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">31</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="80">
  <data key="d0">31</data>
  <data key="d1">Matcher&lt;? super T&gt; matcher</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="81">
  <data key="d0">31</data>
  <data key="d1">Matcher&lt;? super T&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="82">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Matcher</data>
  <data key="d0">31</data>
  <data key="d1">Matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="83">
  <data key="d0">31</data>
  <data key="d1">? super T</data>
  <data key="d2">WildcardType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="84">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">WildcardType</data>
</node>
<node id="85">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="86">
  <data key="d5">UnknownType</data>
  <data key="d6">matcher</data>
  <data key="d0">31</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="87">
  <data key="d0">31</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="88">
  <data key="d0">31</data>
  <data key="d1">{
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="3">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="7">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="8">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="6" target="18">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="6" target="37">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="18">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="19">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="9" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="21">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="37">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="54" target="65">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="60">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="56" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="76">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>