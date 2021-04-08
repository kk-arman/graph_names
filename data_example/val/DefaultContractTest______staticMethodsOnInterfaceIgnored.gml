<?xml version='1.0' encoding='utf-8'?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd"><key id="d8" for="edge" attr.name="type" attr.type="string"/>
<key id="d7" for="node" attr.name="modifier" attr.type="string"/>
<key id="d6" for="node" attr.name="is_test" attr.type="string"/>
<key id="d5" for="node" attr.name="parentType" attr.type="string"/>
<key id="d4" for="node" attr.name="type" attr.type="string"/>
<key id="d3" for="node" attr.name="text" attr.type="string"/>
<key id="d2" for="node" attr.name="lineID" attr.type="string"/>
<key id="d1" for="node" attr.name="identifier" attr.type="string"/>
<key id="d0" for="node" attr.name="reference" attr.type="string"/>
<graph edgedefault="undirected"><node id="1">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">staticMethodsOnInterfaceIgnored</data>
  <data key="d2">883</data>
  <data key="d3">staticMethodsOnInterfaceIgnored</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="2">
  <data key="d1">Test</data>
  <data key="d2">882</data>
  <data key="d3">Test</data>
  <data key="d4">Name</data>
  <data key="d5">MarkerAnnotationExpr</data>
  <data key="d6">true</data>
</node>
<node id="3">
  <data key="d2">882</data>
  <data key="d3">@Test</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="4">
  <data key="d7">public</data>
  <data key="d2">882</data>
  <data key="d3">@Test
public void staticMethodsOnInterfaceIgnored() throws Exception {
    final List&lt;MethodMetadata&gt; mds = contract.parseAndValidateMetadata(StaticMethodOnInterface.class);
    assertThat(mds).hasSize(1);
    final MethodMetadata md = mds.get(0);
    assertThat(md.configKey()).isEqualTo("StaticMethodOnInterface#get(String)");
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="5">
  <data key="d2">883</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="6">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Exception</data>
  <data key="d2">883</data>
  <data key="d3">Exception</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="7">
  <data key="d0">UnknownType</data>
  <data key="d1">mds</data>
  <data key="d2">884</data>
  <data key="d3">mds</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="8">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">MethodMetadata</data>
  <data key="d2">884</data>
  <data key="d3">MethodMetadata</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="9">
  <data key="d2">884</data>
  <data key="d3">MethodMetadata</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="10">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">List</data>
  <data key="d2">884</data>
  <data key="d3">List</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="11">
  <data key="d2">884</data>
  <data key="d3">List&lt;MethodMetadata&gt;</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="12">
  <data key="d2">884</data>
  <data key="d3">mds = contract.parseAndValidateMetadata(StaticMethodOnInterface.class)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="13">
  <data key="d7">final</data>
  <data key="d2">884</data>
  <data key="d3">final List&lt;MethodMetadata&gt; mds = contract.parseAndValidateMetadata(StaticMethodOnInterface.class)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="14">
  <data key="d2">883</data>
  <data key="d3">{
    final List&lt;MethodMetadata&gt; mds = contract.parseAndValidateMetadata(StaticMethodOnInterface.class);
    assertThat(mds).hasSize(1);
    final MethodMetadata md = mds.get(0);
    assertThat(md.configKey()).isEqualTo("StaticMethodOnInterface#get(String)");
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="15">
  <data key="d2">883</data>
  <data key="d3">Exception</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="16">
  <data key="d0">otherMethodCall</data>
  <data key="d1">hasSize</data>
  <data key="d2">886</data>
  <data key="d3">hasSize</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="17">
  <data key="d2">886</data>
  <data key="d3">assertThat(mds)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="18">
  <data key="d2">886</data>
  <data key="d3">assertThat(mds).hasSize(1)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="19">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">StaticMethodOnInterface</data>
  <data key="d2">885</data>
  <data key="d3">StaticMethodOnInterface</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="20">
  <data key="d2">885</data>
  <data key="d3">StaticMethodOnInterface</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassExpr</data>
  <data key="d6">true</data>
</node>
<node id="21">
  <data key="d2">885</data>
  <data key="d3">StaticMethodOnInterface.class</data>
  <data key="d4">ClassExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="22">
  <data key="d0">otherMethodCall</data>
  <data key="d1">parseAndValidateMetadata</data>
  <data key="d2">885</data>
  <data key="d3">parseAndValidateMetadata</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="23">
  <data key="d0">UnknownType</data>
  <data key="d1">contract</data>
  <data key="d2">885</data>
  <data key="d3">contract</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="24">
  <data key="d2">885</data>
  <data key="d3">contract.parseAndValidateMetadata(StaticMethodOnInterface.class)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="25">
  <data key="d0">UnknownType</data>
  <data key="d1">mds</data>
  <data key="d2">886</data>
  <data key="d3">mds</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="26">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertThat</data>
  <data key="d2">886</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="27">
  <data key="d2">888</data>
  <data key="d3">assertThat(md.configKey()).isEqualTo("StaticMethodOnInterface#get(String)")</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="28">
  <data key="d1">0</data>
  <data key="d2">887</data>
  <data key="d3">0</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="29">
  <data key="d0">UnknownType</data>
  <data key="d1">mds</data>
  <data key="d2">887</data>
  <data key="d3">mds</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="30">
  <data key="d2">887</data>
  <data key="d3">mds.get(0)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="31">
  <data key="d0">UnknownType</data>
  <data key="d1">md</data>
  <data key="d2">887</data>
  <data key="d3">md</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="32">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">MethodMetadata</data>
  <data key="d2">887</data>
  <data key="d3">MethodMetadata</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="33">
  <data key="d2">887</data>
  <data key="d3">MethodMetadata</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="34">
  <data key="d2">887</data>
  <data key="d3">md = mds.get(0)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="35">
  <data key="d7">final</data>
  <data key="d2">887</data>
  <data key="d3">final MethodMetadata md = mds.get(0)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="36">
  <data key="d1">1</data>
  <data key="d2">886</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="37">
  <data key="d0">otherMethodCall</data>
  <data key="d1">get</data>
  <data key="d2">887</data>
  <data key="d3">get</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="38">
  <data key="d1">StaticMethodOnInterface#get(String)</data>
  <data key="d2">888</data>
  <data key="d3">"StaticMethodOnInterface#get(String)"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="39">
  <data key="d0">otherMethodCall</data>
  <data key="d1">isEqualTo</data>
  <data key="d2">888</data>
  <data key="d3">isEqualTo</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="40">
  <data key="d0">otherMethodCall</data>
  <data key="d1">configKey</data>
  <data key="d2">888</data>
  <data key="d3">configKey</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="41">
  <data key="d0">UnknownType</data>
  <data key="d1">md</data>
  <data key="d2">888</data>
  <data key="d3">md</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="42">
  <data key="d2">888</data>
  <data key="d3">md.configKey()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="43">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertThat</data>
  <data key="d2">888</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="44">
  <data key="d2">888</data>
  <data key="d3">assertThat(md.configKey())</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="45">
  <data key="d2">21</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="46">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplateAssert</data>
  <data key="d2">21</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="47">
  <data key="d2">21</data>
  <data key="d3">{
    return new RequestTemplateAssert(actual);
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="48">
  <data key="d2">22</data>
  <data key="d3">return new RequestTemplateAssert(actual);</data>
  <data key="d4">ReturnStmt</data>
  <data key="d5">BlockStmt</data>
</node>
<node id="49">
  <data key="d2">22</data>
  <data key="d3">new RequestTemplateAssert(actual)</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">ReturnStmt</data>
</node>
<node id="50">
  <data key="d2">22</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ObjectCreationExpr</data>
</node>
<node id="51">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplateAssert</data>
  <data key="d2">22</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="52">
  <data key="d0">UnknownType</data>
  <data key="d1">actual</data>
  <data key="d2">22</data>
  <data key="d3">actual</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="53">
  <data key="d7">public,static</data>
  <data key="d2">21</data>
  <data key="d3">public static RequestTemplateAssert assertThat(RequestTemplate actual) {
    return new RequestTemplateAssert(actual);
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="54">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">assertThat</data>
  <data key="d2">21</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="55">
  <data key="d2">21</data>
  <data key="d3">RequestTemplate actual</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="56">
  <data key="d2">21</data>
  <data key="d3">RequestTemplate</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="57">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplate</data>
  <data key="d2">21</data>
  <data key="d3">RequestTemplate</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="58">
  <data key="d0">UnknownType</data>
  <data key="d1">actual</data>
  <data key="d2">21</data>
  <data key="d3">actual</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="59">
  <data key="d2">21</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="60">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplateAssert</data>
  <data key="d2">21</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="61">
  <data key="d2">21</data>
  <data key="d3">{
    return new RequestTemplateAssert(actual);
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="62">
  <data key="d2">22</data>
  <data key="d3">return new RequestTemplateAssert(actual);</data>
  <data key="d4">ReturnStmt</data>
  <data key="d5">BlockStmt</data>
</node>
<node id="63">
  <data key="d2">22</data>
  <data key="d3">new RequestTemplateAssert(actual)</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">ReturnStmt</data>
</node>
<node id="64">
  <data key="d2">22</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ObjectCreationExpr</data>
</node>
<node id="65">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplateAssert</data>
  <data key="d2">22</data>
  <data key="d3">RequestTemplateAssert</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="66">
  <data key="d0">UnknownType</data>
  <data key="d1">actual</data>
  <data key="d2">22</data>
  <data key="d3">actual</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="67">
  <data key="d7">public,static</data>
  <data key="d2">21</data>
  <data key="d3">public static RequestTemplateAssert assertThat(RequestTemplate actual) {
    return new RequestTemplateAssert(actual);
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="68">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">assertThat</data>
  <data key="d2">21</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="69">
  <data key="d2">21</data>
  <data key="d3">RequestTemplate actual</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="70">
  <data key="d2">21</data>
  <data key="d3">RequestTemplate</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="71">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">RequestTemplate</data>
  <data key="d2">21</data>
  <data key="d3">RequestTemplate</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="72">
  <data key="d0">UnknownType</data>
  <data key="d1">actual</data>
  <data key="d2">21</data>
  <data key="d3">actual</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<edge source="1" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="3">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="3">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="25">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="7" target="29">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="35">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="18" target="24">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="29">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="27" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="35">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="30" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="41">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="53">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="58">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="53" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="67">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="72">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="67" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>