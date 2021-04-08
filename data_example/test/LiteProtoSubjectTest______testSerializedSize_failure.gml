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
  <data key="d0">272</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d5">otherMethodCall</data>
  <data key="d6">getSerializedSize</data>
  <data key="d0">273</data>
  <data key="d1">getSerializedSize</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d5">com.google.common.truth.extensions.proto.LiteProtoSubjectTest.Config</data>
  <data key="d6">config</data>
  <data key="d0">273</data>
  <data key="d1">config</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d0">273</data>
  <data key="d1">config.nonEmptyMessage()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d0">273</data>
  <data key="d1">config.nonEmptyMessage().getSerializedSize()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d5">int</data>
  <data key="d6">size</data>
  <data key="d0">273</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d6">int</data>
  <data key="d0">273</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d0">273</data>
  <data key="d1">size = config.nonEmptyMessage().getSerializedSize()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d0">273</data>
  <data key="d1">int size = config.nonEmptyMessage().getSerializedSize()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d0">272</data>
  <data key="d1">{
    int size = config.nonEmptyMessage().getSerializedSize();
    try {
        assertThat(config.nonEmptyMessage()).serializedSize().isGreaterThan(size);
        fail("Should have failed.");
    } catch (AssertionError e) {
        assertThat(e).factValue("value of").isEqualTo("liteProto.getSerializedSize()");
        assertThat(e).factValue("liteProto was").containsMatch("optional_int:\\s*3");
    }
    try {
        assertThat(config.defaultInstance()).serializedSize().isGreaterThan(0);
        fail("Should have failed.");
    } catch (AssertionError e) {
        assertThat(e).factValue("value of").isEqualTo("liteProto.getSerializedSize()");
        assertThat(e).factValue("liteProto was").contains("[empty proto]");
    }
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d5">otherMethodCall</data>
  <data key="d6">nonEmptyMessage</data>
  <data key="d0">273</data>
  <data key="d1">nonEmptyMessage</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d7">public</data>
  <data key="d0">271</data>
  <data key="d1">@Test
public void testSerializedSize_failure() {
    int size = config.nonEmptyMessage().getSerializedSize();
    try {
        assertThat(config.nonEmptyMessage()).serializedSize().isGreaterThan(size);
        fail("Should have failed.");
    } catch (AssertionError e) {
        assertThat(e).factValue("value of").isEqualTo("liteProto.getSerializedSize()");
        assertThat(e).factValue("liteProto was").containsMatch("optional_int:\\s*3");
    }
    try {
        assertThat(config.defaultInstance()).serializedSize().isGreaterThan(0);
        fail("Should have failed.");
    } catch (AssertionError e) {
        assertThat(e).factValue("value of").isEqualTo("liteProto.getSerializedSize()");
        assertThat(e).factValue("liteProto was").contains("[empty proto]");
    }
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d0">271</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d6">Test</data>
  <data key="d0">271</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">testSerializedSize_failure</data>
  <data key="d0">272</data>
  <data key="d1">testSerializedSize_failure</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d7">public</data>
  <data key="d0">228</data>
  <data key="d1">/**
 * Returns an {@link IntegerSubject} on the serialized size of the MessageLite.
 *
 * &lt;p&gt;Assertions can then be changed on the serialized size, to support checks such as {@code
 * assertThat(myProto).serializedSize().isAtLeast(16)}, etc.
 */
public IntegerSubject serializedSize() {
    return check("getSerializedSize()").that(actual.getSerializedSize());
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="17">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">serializedSize</data>
  <data key="d0">228</data>
  <data key="d1">serializedSize</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="18">
  <data key="d0">228</data>
  <data key="d1">IntegerSubject</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="19">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">IntegerSubject</data>
  <data key="d0">228</data>
  <data key="d1">IntegerSubject</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="20">
  <data key="d0">228</data>
  <data key="d1">{
    return check("getSerializedSize()").that(actual.getSerializedSize());
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="21">
  <data key="d0">229</data>
  <data key="d1">return check("getSerializedSize()").that(actual.getSerializedSize());</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="22">
  <data key="d0">229</data>
  <data key="d1">check("getSerializedSize()").that(actual.getSerializedSize())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="23">
  <data key="d0">229</data>
  <data key="d1">check("getSerializedSize()")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="24">
  <data key="d5">otherMethodCall</data>
  <data key="d6">check</data>
  <data key="d0">229</data>
  <data key="d1">check</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="25">
  <data key="d6">getSerializedSize()</data>
  <data key="d0">229</data>
  <data key="d1">"getSerializedSize()"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="26">
  <data key="d5">otherMethodCall</data>
  <data key="d6">that</data>
  <data key="d0">229</data>
  <data key="d1">that</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="27">
  <data key="d0">229</data>
  <data key="d1">actual.getSerializedSize()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="28">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">229</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="29">
  <data key="d5">otherMethodCall</data>
  <data key="d6">getSerializedSize</data>
  <data key="d0">229</data>
  <data key="d1">getSerializedSize</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="30">
  <data key="d7">public</data>
  <data key="d0">228</data>
  <data key="d1">/**
 * Returns an {@link IntegerSubject} on the serialized size of the MessageLite.
 *
 * &lt;p&gt;Assertions can then be changed on the serialized size, to support checks such as {@code
 * assertThat(myProto).serializedSize().isAtLeast(16)}, etc.
 */
public IntegerSubject serializedSize() {
    return check("getSerializedSize()").that(actual.getSerializedSize());
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="31">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">serializedSize</data>
  <data key="d0">228</data>
  <data key="d1">serializedSize</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="32">
  <data key="d0">228</data>
  <data key="d1">IntegerSubject</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="33">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">IntegerSubject</data>
  <data key="d0">228</data>
  <data key="d1">IntegerSubject</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="34">
  <data key="d0">228</data>
  <data key="d1">{
    return check("getSerializedSize()").that(actual.getSerializedSize());
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="35">
  <data key="d0">229</data>
  <data key="d1">return check("getSerializedSize()").that(actual.getSerializedSize());</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="36">
  <data key="d0">229</data>
  <data key="d1">check("getSerializedSize()").that(actual.getSerializedSize())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="37">
  <data key="d0">229</data>
  <data key="d1">check("getSerializedSize()")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="38">
  <data key="d5">otherMethodCall</data>
  <data key="d6">check</data>
  <data key="d0">229</data>
  <data key="d1">check</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="39">
  <data key="d6">getSerializedSize()</data>
  <data key="d0">229</data>
  <data key="d1">"getSerializedSize()"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="40">
  <data key="d5">otherMethodCall</data>
  <data key="d6">that</data>
  <data key="d0">229</data>
  <data key="d1">that</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="41">
  <data key="d0">229</data>
  <data key="d1">actual.getSerializedSize()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="42">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">229</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="43">
  <data key="d5">otherMethodCall</data>
  <data key="d6">getSerializedSize</data>
  <data key="d0">229</data>
  <data key="d1">getSerializedSize</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="44">
  <data key="d0">56</data>
  <data key="d1">@Override
MessageLite nonEmptyMessageOfOtherType() {
    return nonEmptyMessageOfOtherType;
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="45">
  <data key="d0">56</data>
  <data key="d1">@Override</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="46">
  <data key="d6">Override</data>
  <data key="d0">56</data>
  <data key="d1">Override</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="47">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">nonEmptyMessageOfOtherType</data>
  <data key="d0">57</data>
  <data key="d1">nonEmptyMessageOfOtherType</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="48">
  <data key="d0">57</data>
  <data key="d1">MessageLite</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="49">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">MessageLite</data>
  <data key="d0">57</data>
  <data key="d1">MessageLite</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="50">
  <data key="d0">57</data>
  <data key="d1">{
    return nonEmptyMessageOfOtherType;
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="51">
  <data key="d0">58</data>
  <data key="d1">return nonEmptyMessageOfOtherType;</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="52">
  <data key="d5">UnknownType</data>
  <data key="d6">nonEmptyMessageOfOtherType</data>
  <data key="d0">58</data>
  <data key="d1">nonEmptyMessageOfOtherType</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="53">
  <data key="d0">56</data>
  <data key="d1">@Override
MessageLite nonEmptyMessageOfOtherType() {
    return nonEmptyMessageOfOtherType;
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="54">
  <data key="d0">56</data>
  <data key="d1">@Override</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="55">
  <data key="d6">Override</data>
  <data key="d0">56</data>
  <data key="d1">Override</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="56">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">nonEmptyMessageOfOtherType</data>
  <data key="d0">57</data>
  <data key="d1">nonEmptyMessageOfOtherType</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="57">
  <data key="d0">57</data>
  <data key="d1">MessageLite</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="58">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">MessageLite</data>
  <data key="d0">57</data>
  <data key="d1">MessageLite</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="59">
  <data key="d0">57</data>
  <data key="d1">{
    return nonEmptyMessageOfOtherType;
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="60">
  <data key="d0">58</data>
  <data key="d1">return nonEmptyMessageOfOtherType;</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="61">
  <data key="d5">UnknownType</data>
  <data key="d6">nonEmptyMessageOfOtherType</data>
  <data key="d0">58</data>
  <data key="d1">nonEmptyMessageOfOtherType</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<edge source="1" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="4">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="21">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="17" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="30" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="35">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="31" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="50">
  <data key="d8">AST</data>
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
<edge source="44" target="51">
  <data key="d8">RETURNS_TO</data>
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
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="60">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
</graph></graphml>