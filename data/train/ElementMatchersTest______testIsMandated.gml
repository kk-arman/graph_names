<?xml version='1.0' encoding='utf-8'?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd"><key id="d8" for="edge" attr.name="type" attr.type="string"/>
<key id="d7" for="node" attr.name="identifier" attr.type="string"/>
<key id="d6" for="node" attr.name="reference" attr.type="string"/>
<key id="d5" for="node" attr.name="is_test" attr.type="string"/>
<key id="d4" for="node" attr.name="parentType" attr.type="string"/>
<key id="d3" for="node" attr.name="type" attr.type="string"/>
<key id="d2" for="node" attr.name="text" attr.type="string"/>
<key id="d1" for="node" attr.name="lineID" attr.type="string"/>
<key id="d0" for="node" attr.name="modifier" attr.type="string"/>
<graph edgedefault="undirected"><node id="1">
  <data key="d0">public</data>
  <data key="d1">647</data>
  <data key="d2">@Test
public void testIsMandated() throws Exception {
    ParameterDescription parameterDescription = mock(ParameterDescription.class);
    when(parameterDescription.getModifiers()).thenReturn(Opcodes.ACC_MANDATED);
    assertThat(ElementMatchers.isMandated().matches(parameterDescription), is(true));
    assertThat(ElementMatchers.isMandated().matches(mock(ParameterDescription.class)), is(false));
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">647</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d1">649</data>
  <data key="d2">ParameterDescription parameterDescription = mock(ParameterDescription.class)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d1">649</data>
  <data key="d2">parameterDescription = mock(ParameterDescription.class)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">649</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ParameterDescription</data>
  <data key="d1">649</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d6">UnknownType</data>
  <data key="d7">parameterDescription</data>
  <data key="d1">649</data>
  <data key="d2">parameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d7">Test</data>
  <data key="d1">647</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d6">userDefinedMethodName</data>
  <data key="d7">testIsMandated</data>
  <data key="d1">648</data>
  <data key="d2">testIsMandated</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">648</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">Exception</data>
  <data key="d1">648</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d1">648</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">648</data>
  <data key="d2">{
    ParameterDescription parameterDescription = mock(ParameterDescription.class);
    when(parameterDescription.getModifiers()).thenReturn(Opcodes.ACC_MANDATED);
    assertThat(ElementMatchers.isMandated().matches(parameterDescription), is(true));
    assertThat(ElementMatchers.isMandated().matches(mock(ParameterDescription.class)), is(false));
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">650</data>
  <data key="d2">when(parameterDescription.getModifiers()).thenReturn(Opcodes.ACC_MANDATED)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">650</data>
  <data key="d2">when(parameterDescription.getModifiers())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d6">otherMethodCall</data>
  <data key="d7">when</data>
  <data key="d1">650</data>
  <data key="d2">when</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d1">650</data>
  <data key="d2">parameterDescription.getModifiers()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d6">UnknownType</data>
  <data key="d7">parameterDescription</data>
  <data key="d1">650</data>
  <data key="d2">parameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d6">otherMethodCall</data>
  <data key="d7">getModifiers</data>
  <data key="d1">650</data>
  <data key="d2">getModifiers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d1">649</data>
  <data key="d2">mock(ParameterDescription.class)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d6">otherMethodCall</data>
  <data key="d7">mock</data>
  <data key="d1">649</data>
  <data key="d2">mock</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d1">649</data>
  <data key="d2">ParameterDescription.class</data>
  <data key="d3">ClassExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d1">649</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ParameterDescription</data>
  <data key="d1">649</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">651</data>
  <data key="d2">assertThat(ElementMatchers.isMandated().matches(parameterDescription), is(true))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d6">otherMethodCall</data>
  <data key="d7">assertThat</data>
  <data key="d1">651</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">651</data>
  <data key="d2">ElementMatchers.isMandated().matches(parameterDescription)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d1">651</data>
  <data key="d2">ElementMatchers.isMandated()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d6">UnknownType</data>
  <data key="d7">ElementMatchers</data>
  <data key="d1">651</data>
  <data key="d2">ElementMatchers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d6">otherMethodCall</data>
  <data key="d7">isMandated</data>
  <data key="d1">651</data>
  <data key="d2">isMandated</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d6">otherMethodCall</data>
  <data key="d7">matches</data>
  <data key="d1">651</data>
  <data key="d2">matches</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d6">otherMethodCall</data>
  <data key="d7">thenReturn</data>
  <data key="d1">650</data>
  <data key="d2">thenReturn</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d1">650</data>
  <data key="d2">Opcodes.ACC_MANDATED</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d6">UnknownType</data>
  <data key="d7">Opcodes</data>
  <data key="d1">650</data>
  <data key="d2">Opcodes</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d6">UnknownType</data>
  <data key="d7">ACC_MANDATED</data>
  <data key="d1">650</data>
  <data key="d2">ACC_MANDATED</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">true</data>
  <data key="d1">651</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">652</data>
  <data key="d2">assertThat(ElementMatchers.isMandated().matches(mock(ParameterDescription.class)), is(false))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d6">otherMethodCall</data>
  <data key="d7">assertThat</data>
  <data key="d1">652</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d1">652</data>
  <data key="d2">ElementMatchers.isMandated().matches(mock(ParameterDescription.class))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d1">652</data>
  <data key="d2">ElementMatchers.isMandated()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d6">UnknownType</data>
  <data key="d7">ElementMatchers</data>
  <data key="d1">652</data>
  <data key="d2">ElementMatchers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d6">otherMethodCall</data>
  <data key="d7">isMandated</data>
  <data key="d1">652</data>
  <data key="d2">isMandated</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d6">otherMethodCall</data>
  <data key="d7">matches</data>
  <data key="d1">652</data>
  <data key="d2">matches</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d6">UnknownType</data>
  <data key="d7">parameterDescription</data>
  <data key="d1">651</data>
  <data key="d2">parameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d1">651</data>
  <data key="d2">is(true)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d6">otherMethodCall</data>
  <data key="d7">is</data>
  <data key="d1">651</data>
  <data key="d2">is</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d1">652</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ParameterDescription</data>
  <data key="d1">652</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">652</data>
  <data key="d2">is(false)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d6">otherMethodCall</data>
  <data key="d7">is</data>
  <data key="d1">652</data>
  <data key="d2">is</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d7">false</data>
  <data key="d1">652</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d1">652</data>
  <data key="d2">ParameterDescription.class</data>
  <data key="d3">ClassExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d1">652</data>
  <data key="d2">mock(ParameterDescription.class)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d6">otherMethodCall</data>
  <data key="d7">mock</data>
  <data key="d1">652</data>
  <data key="d2">mock</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d0">public,static</data>
  <data key="d1">257</data>
  <data key="d2">/**
 * Matches a parameter description for a {@code mandated} parameter.
 *
 * @param &lt;T&gt; The type of the matched object.
 * @return A matcher for a {@code mandated} parameter.
 */
public static &lt;T extends ParameterDescription&gt; ElementMatcher.Junction&lt;T&gt; isMandated() {
    return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="56">
  <data key="d1">257</data>
  <data key="d2">T extends ParameterDescription</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="57">
  <data key="d6">runtimeGenericType</data>
  <data key="d7">T</data>
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="58">
  <data key="d1">257</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="59">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ParameterDescription</data>
  <data key="d1">257</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="60">
  <data key="d6">userDefinedMethodName</data>
  <data key="d7">isMandated</data>
  <data key="d1">257</data>
  <data key="d2">isMandated</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="61">
  <data key="d1">257</data>
  <data key="d2">ElementMatcher.Junction&lt;T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="62">
  <data key="d1">257</data>
  <data key="d2">ElementMatcher</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="63">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ElementMatcher</data>
  <data key="d1">257</data>
  <data key="d2">ElementMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="64">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">Junction</data>
  <data key="d1">257</data>
  <data key="d2">Junction</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="65">
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="66">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="67">
  <data key="d1">257</data>
  <data key="d2">{
    return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="68">
  <data key="d1">258</data>
  <data key="d2">return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="69">
  <data key="d1">258</data>
  <data key="d2">new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="70">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher&lt;T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
</node>
<node id="71">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ModifierMatcher</data>
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="72">
  <data key="d1">258</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="73">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">258</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="74">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher.Mode.MANDATED</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">ObjectCreationExpr</data>
</node>
<node id="75">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher.Mode</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="76">
  <data key="d6">UnknownType</data>
  <data key="d7">ModifierMatcher</data>
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="77">
  <data key="d6">UnknownType</data>
  <data key="d7">Mode</data>
  <data key="d1">258</data>
  <data key="d2">Mode</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="78">
  <data key="d6">UnknownType</data>
  <data key="d7">MANDATED</data>
  <data key="d1">258</data>
  <data key="d2">MANDATED</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="79">
  <data key="d0">public,static</data>
  <data key="d1">31</data>
  <data key="d2">public static &lt;T&gt; void assertThat(String reason, T actual, Matcher&lt;? super T&gt; matcher) {
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="80">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="81">
  <data key="d6">runtimeGenericType</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="82">
  <data key="d6">userDefinedMethodName</data>
  <data key="d7">assertThat</data>
  <data key="d1">31</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="83">
  <data key="d1">31</data>
  <data key="d2">String reason</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="84">
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="85">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">String</data>
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="86">
  <data key="d6">java.lang.String</data>
  <data key="d7">reason</data>
  <data key="d1">31</data>
  <data key="d2">reason</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="87">
  <data key="d1">31</data>
  <data key="d2">T actual</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="88">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="89">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="90">
  <data key="d6">UnknownType</data>
  <data key="d7">actual</data>
  <data key="d1">31</data>
  <data key="d2">actual</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="91">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt; matcher</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="92">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="93">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">Matcher</data>
  <data key="d1">31</data>
  <data key="d2">Matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="94">
  <data key="d1">31</data>
  <data key="d2">? super T</data>
  <data key="d3">WildcardType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="95">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">WildcardType</data>
</node>
<node id="96">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="97">
  <data key="d6">UnknownType</data>
  <data key="d7">matcher</data>
  <data key="d1">31</data>
  <data key="d2">matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="98">
  <data key="d1">31</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="99">
  <data key="d1">31</data>
  <data key="d2">{
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="100">
  <data key="d0">public,static</data>
  <data key="d1">257</data>
  <data key="d2">/**
 * Matches a parameter description for a {@code mandated} parameter.
 *
 * @param &lt;T&gt; The type of the matched object.
 * @return A matcher for a {@code mandated} parameter.
 */
public static &lt;T extends ParameterDescription&gt; ElementMatcher.Junction&lt;T&gt; isMandated() {
    return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="101">
  <data key="d1">257</data>
  <data key="d2">T extends ParameterDescription</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="102">
  <data key="d6">runtimeGenericType</data>
  <data key="d7">T</data>
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="103">
  <data key="d1">257</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="104">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ParameterDescription</data>
  <data key="d1">257</data>
  <data key="d2">ParameterDescription</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="105">
  <data key="d6">userDefinedMethodName</data>
  <data key="d7">isMandated</data>
  <data key="d1">257</data>
  <data key="d2">isMandated</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="106">
  <data key="d1">257</data>
  <data key="d2">ElementMatcher.Junction&lt;T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="107">
  <data key="d1">257</data>
  <data key="d2">ElementMatcher</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="108">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ElementMatcher</data>
  <data key="d1">257</data>
  <data key="d2">ElementMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="109">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">Junction</data>
  <data key="d1">257</data>
  <data key="d2">Junction</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="110">
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="111">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">257</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="112">
  <data key="d1">257</data>
  <data key="d2">{
    return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="113">
  <data key="d1">258</data>
  <data key="d2">return new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED);</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="114">
  <data key="d1">258</data>
  <data key="d2">new ModifierMatcher&lt;T&gt;(ModifierMatcher.Mode.MANDATED)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="115">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher&lt;T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
</node>
<node id="116">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">ModifierMatcher</data>
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="117">
  <data key="d1">258</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="118">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">258</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="119">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher.Mode.MANDATED</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">ObjectCreationExpr</data>
</node>
<node id="120">
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher.Mode</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="121">
  <data key="d6">UnknownType</data>
  <data key="d7">ModifierMatcher</data>
  <data key="d1">258</data>
  <data key="d2">ModifierMatcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="122">
  <data key="d6">UnknownType</data>
  <data key="d7">Mode</data>
  <data key="d1">258</data>
  <data key="d2">Mode</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="123">
  <data key="d6">UnknownType</data>
  <data key="d7">MANDATED</data>
  <data key="d1">258</data>
  <data key="d2">MANDATED</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="124">
  <data key="d0">public,static</data>
  <data key="d1">31</data>
  <data key="d2">public static &lt;T&gt; void assertThat(String reason, T actual, Matcher&lt;? super T&gt; matcher) {
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="125">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="126">
  <data key="d6">runtimeGenericType</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="127">
  <data key="d6">userDefinedMethodName</data>
  <data key="d7">assertThat</data>
  <data key="d1">31</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="128">
  <data key="d1">31</data>
  <data key="d2">String reason</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="129">
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="130">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">String</data>
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="131">
  <data key="d6">java.lang.String</data>
  <data key="d7">reason</data>
  <data key="d1">31</data>
  <data key="d2">reason</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="132">
  <data key="d1">31</data>
  <data key="d2">T actual</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="133">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="134">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="135">
  <data key="d6">UnknownType</data>
  <data key="d7">actual</data>
  <data key="d1">31</data>
  <data key="d2">actual</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="136">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt; matcher</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="137">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="138">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">Matcher</data>
  <data key="d1">31</data>
  <data key="d2">Matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="139">
  <data key="d1">31</data>
  <data key="d2">? super T</data>
  <data key="d3">WildcardType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="140">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">WildcardType</data>
</node>
<node id="141">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d7">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="142">
  <data key="d6">UnknownType</data>
  <data key="d7">matcher</data>
  <data key="d1">31</data>
  <data key="d2">matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="143">
  <data key="d1">31</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="144">
  <data key="d1">31</data>
  <data key="d2">{
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<edge source="1" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="14">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="3" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="7">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="18">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="7" target="44">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="9" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="25">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="15" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="44">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="37">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="25" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="68">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="91" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="100" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="113">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="101" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="105">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="102" target="103">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="103" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="106">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="106" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="112">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="107" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="109">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="109" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="110" target="111">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="113" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="119">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="119">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="116" target="117">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="117" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="120">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="123">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="123">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="121" target="122">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="124" target="125">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="136">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="127" target="128">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="128" target="129">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="132">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="129" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="131">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="136">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="135">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="142">
  <data key="d8">AST</data>
</edge>
<edge source="136" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="136" target="143">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="137" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="142">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="138" target="139">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="139" target="140">
  <data key="d8">AST</data>
</edge>
<edge source="140" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="144">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>