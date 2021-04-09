<?xml version='1.0' encoding='utf-8'?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd"><key id="d8" for="edge" attr.name="type" attr.type="string"/>
<key id="d7" for="node" attr.name="reference" attr.type="string"/>
<key id="d6" for="node" attr.name="identifier" attr.type="string"/>
<key id="d5" for="node" attr.name="is_test" attr.type="string"/>
<key id="d4" for="node" attr.name="parentType" attr.type="string"/>
<key id="d3" for="node" attr.name="type" attr.type="string"/>
<key id="d2" for="node" attr.name="text" attr.type="string"/>
<key id="d1" for="node" attr.name="lineID" attr.type="string"/>
<key id="d0" for="node" attr.name="modifier" attr.type="string"/>
<graph edgedefault="undirected"><node id="1">
  <data key="d0">public</data>
  <data key="d1">295</data>
  <data key="d2">@Test
public void testResolveDefault_xml() {
    // needed for the client
    HazelcastInstance member = HazelcastInstanceFactory.newHazelcastInstance(null);
    try {
        getClass().getClassLoader().getResource("hazelcast-client-default.xml");
        ClientConfig config = ClientConfig.load();
        assertEquals("dev", config.getClusterName());
    } finally {
        member.shutdown();
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">295</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">295</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testResolveDefault_xml</data>
  <data key="d1">296</data>
  <data key="d2">testResolveDefault_xml</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">296</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">296</data>
  <data key="d2">{
    // needed for the client
    HazelcastInstance member = HazelcastInstanceFactory.newHazelcastInstance(null);
    try {
        getClass().getClassLoader().getResource("hazelcast-client-default.xml");
        ClientConfig config = ClientConfig.load();
        assertEquals("dev", config.getClusterName());
    } finally {
        member.shutdown();
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">298</data>
  <data key="d2">HazelcastInstance member = HazelcastInstanceFactory.newHazelcastInstance(null)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">298</data>
  <data key="d2">member = HazelcastInstanceFactory.newHazelcastInstance(null)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">298</data>
  <data key="d2">HazelcastInstance</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HazelcastInstance</data>
  <data key="d1">298</data>
  <data key="d2">HazelcastInstance</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">UnknownType</data>
  <data key="d6">member</data>
  <data key="d1">298</data>
  <data key="d2">member</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d1">298</data>
  <data key="d2">HazelcastInstanceFactory.newHazelcastInstance(null)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d7">UnknownType</data>
  <data key="d6">HazelcastInstanceFactory</data>
  <data key="d1">298</data>
  <data key="d2">HazelcastInstanceFactory</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d7">otherMethodCall</data>
  <data key="d6">newHazelcastInstance</data>
  <data key="d1">298</data>
  <data key="d2">newHazelcastInstance</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">298</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d1">301</data>
  <data key="d2">getClass().getClassLoader().getResource("hazelcast-client-default.xml")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d1">301</data>
  <data key="d2">getClass().getClassLoader()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d1">301</data>
  <data key="d2">getClass()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getClass</data>
  <data key="d1">301</data>
  <data key="d2">getClass</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getClassLoader</data>
  <data key="d1">301</data>
  <data key="d2">getClassLoader</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getResource</data>
  <data key="d1">301</data>
  <data key="d2">getResource</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d6">hazelcast-client-default.xml</data>
  <data key="d1">301</data>
  <data key="d2">"hazelcast-client-default.xml"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d1">303</data>
  <data key="d2">ClientConfig config = ClientConfig.load()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d1">303</data>
  <data key="d2">config = ClientConfig.load()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">303</data>
  <data key="d2">ClientConfig</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">ClientConfig</data>
  <data key="d1">303</data>
  <data key="d2">ClientConfig</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">303</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d1">303</data>
  <data key="d2">ClientConfig.load()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">UnknownType</data>
  <data key="d6">ClientConfig</data>
  <data key="d1">303</data>
  <data key="d2">ClientConfig</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d7">otherMethodCall</data>
  <data key="d6">load</data>
  <data key="d1">303</data>
  <data key="d2">load</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d1">305</data>
  <data key="d2">assertEquals("dev", config.getClusterName())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">305</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d6">dev</data>
  <data key="d1">305</data>
  <data key="d2">"dev"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d1">305</data>
  <data key="d2">config.getClusterName()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">305</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getClusterName</data>
  <data key="d1">305</data>
  <data key="d2">getClusterName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">307</data>
  <data key="d2">member.shutdown()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d7">UnknownType</data>
  <data key="d6">member</data>
  <data key="d1">307</data>
  <data key="d2">member</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">otherMethodCall</data>
  <data key="d6">shutdown</data>
  <data key="d1">307</data>
  <data key="d2">shutdown</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">129</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="41">
  <data key="d1">130</data>
  <data key="d2">config.getInstanceName()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="42">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">130</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="43">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getInstanceName</data>
  <data key="d1">130</data>
  <data key="d2">getInstanceName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="44">
  <data key="d1">131</data>
  <data key="d2">new DefaultNodeContext()</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="45">
  <data key="d1">131</data>
  <data key="d2">DefaultNodeContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
</node>
<node id="46">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">DefaultNodeContext</data>
  <data key="d1">131</data>
  <data key="d2">DefaultNodeContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="47">
  <data key="d0">public,static</data>
  <data key="d1">123</data>
  <data key="d2">/**
 * Creates a new Hazelcast instance.
 *
 * @param config the configuration to use; if &lt;code&gt;null&lt;/code&gt;, the set of defaults
 *               as specified in the XSD for the configuration XML will be used.
 * @return the configured {@link HazelcastInstance}
 */
public static HazelcastInstance newHazelcastInstance(Config config) {
    if (config == null) {
        config = Config.load();
    }
    return newHazelcastInstance(config, config.getInstanceName(), new DefaultNodeContext());
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="48">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">newHazelcastInstance</data>
  <data key="d1">123</data>
  <data key="d2">newHazelcastInstance</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="49">
  <data key="d1">123</data>
  <data key="d2">Config config</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="50">
  <data key="d1">123</data>
  <data key="d2">Config</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="51">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Config</data>
  <data key="d1">123</data>
  <data key="d2">Config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="52">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">123</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="53">
  <data key="d1">123</data>
  <data key="d2">HazelcastInstance</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="54">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HazelcastInstance</data>
  <data key="d1">123</data>
  <data key="d2">HazelcastInstance</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="55">
  <data key="d1">123</data>
  <data key="d2">{
    if (config == null) {
        config = Config.load();
    }
    return newHazelcastInstance(config, config.getInstanceName(), new DefaultNodeContext());
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="56">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">124</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="57">
  <data key="d1">124</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="58">
  <data key="d7">UnknownType</data>
  <data key="d6">config</data>
  <data key="d1">125</data>
  <data key="d2">config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="59">
  <data key="d1">125</data>
  <data key="d2">Config.load()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">AssignExpr</data>
</node>
<node id="60">
  <data key="d7">UnknownType</data>
  <data key="d6">Config</data>
  <data key="d1">125</data>
  <data key="d2">Config</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="61">
  <data key="d7">otherMethodCall</data>
  <data key="d6">load</data>
  <data key="d1">125</data>
  <data key="d2">load</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="62">
  <data key="d1">128</data>
  <data key="d2">return newHazelcastInstance(config, config.getInstanceName(), new DefaultNodeContext());</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="63">
  <data key="d1">128</data>
  <data key="d2">newHazelcastInstance(config, config.getInstanceName(), new DefaultNodeContext())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="64">
  <data key="d7">otherMethodCall</data>
  <data key="d6">newHazelcastInstance</data>
  <data key="d1">128</data>
  <data key="d2">newHazelcastInstance</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<edge source="1" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="3">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="4">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="4" target="5">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="16">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="7" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="11" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="11" target="38">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="12" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="23">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="17" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="24" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="27">
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
<edge source="27" target="35">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="37">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="32" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="52">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="40" target="58">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="56">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="42">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="52">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="42" target="58">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="62">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="48" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="56">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="52" target="58">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="58">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="58" target="60">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
</graph></graphml>