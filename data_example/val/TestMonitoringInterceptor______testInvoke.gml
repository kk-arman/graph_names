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
  <data key="d1">109</data>
  <data key="d2">/**
 * Test.
 * @throws Exception e
 */
@Test
public void testInvoke() throws Exception {
    final Counter ejbCounter = MonitoringProxy.getEjbCounter();
    ejbCounter.clear();
    final MonitoringInterceptor interceptor = new MonitoringInterceptor();
    ejbCounter.setDisplayed(false);
    interceptor.intercept(new InvokeContext(false));
    assertSame("requestsCount", 0, ejbCounter.getRequestsCount());
    ejbCounter.setDisplayed(true);
    interceptor.intercept(new InvokeContext(false));
    assertSame("requestsCount", 1, ejbCounter.getRequestsCount());
    ejbCounter.clear();
    try {
        interceptor.intercept(new InvokeContext(true));
    } catch (final Error e) {
        assertSame("requestsCount", 1, ejbCounter.getRequestsCount());
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">109</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">109</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testInvoke</data>
  <data key="d1">110</data>
  <data key="d2">testInvoke</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">110</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">110</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">110</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">110</data>
  <data key="d2">{
    final Counter ejbCounter = MonitoringProxy.getEjbCounter();
    ejbCounter.clear();
    final MonitoringInterceptor interceptor = new MonitoringInterceptor();
    ejbCounter.setDisplayed(false);
    interceptor.intercept(new InvokeContext(false));
    assertSame("requestsCount", 0, ejbCounter.getRequestsCount());
    ejbCounter.setDisplayed(true);
    interceptor.intercept(new InvokeContext(false));
    assertSame("requestsCount", 1, ejbCounter.getRequestsCount());
    ejbCounter.clear();
    try {
        interceptor.intercept(new InvokeContext(true));
    } catch (final Error e) {
        assertSame("requestsCount", 1, ejbCounter.getRequestsCount());
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d0">final</data>
  <data key="d1">111</data>
  <data key="d2">final Counter ejbCounter = MonitoringProxy.getEjbCounter()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">111</data>
  <data key="d2">ejbCounter = MonitoringProxy.getEjbCounter()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d1">111</data>
  <data key="d2">Counter</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Counter</data>
  <data key="d1">111</data>
  <data key="d2">Counter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">111</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">111</data>
  <data key="d2">MonitoringProxy.getEjbCounter()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d7">UnknownType</data>
  <data key="d6">MonitoringProxy</data>
  <data key="d1">111</data>
  <data key="d2">MonitoringProxy</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getEjbCounter</data>
  <data key="d1">111</data>
  <data key="d2">getEjbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d1">112</data>
  <data key="d2">ejbCounter.clear()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">112</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d7">otherMethodCall</data>
  <data key="d6">clear</data>
  <data key="d1">112</data>
  <data key="d2">clear</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d0">final</data>
  <data key="d1">113</data>
  <data key="d2">final MonitoringInterceptor interceptor = new MonitoringInterceptor()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d1">113</data>
  <data key="d2">interceptor = new MonitoringInterceptor()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d1">113</data>
  <data key="d2">MonitoringInterceptor</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">MonitoringInterceptor</data>
  <data key="d1">113</data>
  <data key="d2">MonitoringInterceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d7">UnknownType</data>
  <data key="d6">interceptor</data>
  <data key="d1">113</data>
  <data key="d2">interceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">113</data>
  <data key="d2">new MonitoringInterceptor()</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d1">113</data>
  <data key="d2">MonitoringInterceptor</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">MonitoringInterceptor</data>
  <data key="d1">113</data>
  <data key="d2">MonitoringInterceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d1">115</data>
  <data key="d2">ejbCounter.setDisplayed(false)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">115</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setDisplayed</data>
  <data key="d1">115</data>
  <data key="d2">setDisplayed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d6">false</data>
  <data key="d1">115</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">116</data>
  <data key="d2">interceptor.intercept(new InvokeContext(false))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d7">UnknownType</data>
  <data key="d6">interceptor</data>
  <data key="d1">116</data>
  <data key="d2">interceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">otherMethodCall</data>
  <data key="d6">intercept</data>
  <data key="d1">116</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d1">116</data>
  <data key="d2">new InvokeContext(false)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d1">116</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvokeContext</data>
  <data key="d1">116</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d6">false</data>
  <data key="d1">116</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d1">117</data>
  <data key="d2">assertSame("requestsCount", 0, ejbCounter.getRequestsCount())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertSame</data>
  <data key="d1">117</data>
  <data key="d2">assertSame</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d6">requestsCount</data>
  <data key="d1">117</data>
  <data key="d2">"requestsCount"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d6">0</data>
  <data key="d1">117</data>
  <data key="d2">0</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d1">117</data>
  <data key="d2">ejbCounter.getRequestsCount()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">117</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRequestsCount</data>
  <data key="d1">117</data>
  <data key="d2">getRequestsCount</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d1">119</data>
  <data key="d2">ejbCounter.setDisplayed(true)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">119</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setDisplayed</data>
  <data key="d1">119</data>
  <data key="d2">setDisplayed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d6">true</data>
  <data key="d1">119</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d1">120</data>
  <data key="d2">interceptor.intercept(new InvokeContext(false))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d7">UnknownType</data>
  <data key="d6">interceptor</data>
  <data key="d1">120</data>
  <data key="d2">interceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d7">otherMethodCall</data>
  <data key="d6">intercept</data>
  <data key="d1">120</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d1">120</data>
  <data key="d2">new InvokeContext(false)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d1">120</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvokeContext</data>
  <data key="d1">120</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="56">
  <data key="d6">false</data>
  <data key="d1">120</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="57">
  <data key="d1">121</data>
  <data key="d2">assertSame("requestsCount", 1, ejbCounter.getRequestsCount())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="58">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertSame</data>
  <data key="d1">121</data>
  <data key="d2">assertSame</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="59">
  <data key="d6">requestsCount</data>
  <data key="d1">121</data>
  <data key="d2">"requestsCount"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="60">
  <data key="d6">1</data>
  <data key="d1">121</data>
  <data key="d2">1</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="61">
  <data key="d1">121</data>
  <data key="d2">ejbCounter.getRequestsCount()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="62">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">121</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="63">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRequestsCount</data>
  <data key="d1">121</data>
  <data key="d2">getRequestsCount</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="64">
  <data key="d1">123</data>
  <data key="d2">ejbCounter.clear()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="65">
  <data key="d7">UnknownType</data>
  <data key="d6">ejbCounter</data>
  <data key="d1">123</data>
  <data key="d2">ejbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="66">
  <data key="d7">otherMethodCall</data>
  <data key="d6">clear</data>
  <data key="d1">123</data>
  <data key="d2">clear</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="67">
  <data key="d1">125</data>
  <data key="d2">interceptor.intercept(new InvokeContext(true))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="68">
  <data key="d7">UnknownType</data>
  <data key="d6">interceptor</data>
  <data key="d1">125</data>
  <data key="d2">interceptor</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="69">
  <data key="d7">otherMethodCall</data>
  <data key="d6">intercept</data>
  <data key="d1">125</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="70">
  <data key="d1">125</data>
  <data key="d2">new InvokeContext(true)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="71">
  <data key="d1">125</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="72">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvokeContext</data>
  <data key="d1">125</data>
  <data key="d2">InvokeContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="73">
  <data key="d6">true</data>
  <data key="d1">125</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="74">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">intercept</data>
  <data key="d1">67</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="75">
  <data key="d1">67</data>
  <data key="d2">InvocationContext context</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="76">
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="77">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvocationContext</data>
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="78">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">67</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="79">
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="80">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="81">
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="82">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Object</data>
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="83">
  <data key="d1">67</data>
  <data key="d2">{
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="84">
  <data key="d1">70</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="85">
  <data key="d1">70</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="86">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">70</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="87">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">70</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="88">
  <data key="d0">final</data>
  <data key="d1">73</data>
  <data key="d2">final String requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="89">
  <data key="d1">73</data>
  <data key="d2">requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="90">
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="91">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="92">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">73</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="93">
  <data key="d1">73</data>
  <data key="d2">getRequestName(context)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="94">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRequestName</data>
  <data key="d1">73</data>
  <data key="d2">getRequestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="95">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">73</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="96">
  <data key="d1">75</data>
  <data key="d2">boolean systemError = false</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="97">
  <data key="d1">75</data>
  <data key="d2">systemError = false</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="98">
  <data key="d6">boolean</data>
  <data key="d1">75</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="99">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">75</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="100">
  <data key="d6">false</data>
  <data key="d1">75</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="101">
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER.bindContextIncludingCpu(requestName)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="102">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="103">
  <data key="d7">otherMethodCall</data>
  <data key="d6">bindContextIncludingCpu</data>
  <data key="d1">77</data>
  <data key="d2">bindContextIncludingCpu</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="104">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">77</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="105">
  <data key="d1">78</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="106">
  <data key="d1">78</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="107">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">78</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="108">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">78</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="109">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">82</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="110">
  <data key="d6">true</data>
  <data key="d1">82</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">AssignExpr</data>
</node>
<node id="111">
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER.addRequestForCurrentContext(systemError)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="112">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="113">
  <data key="d7">otherMethodCall</data>
  <data key="d6">addRequestForCurrentContext</data>
  <data key="d1">86</data>
  <data key="d2">addRequestForCurrentContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="114">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">86</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="115">
  <data key="d0">public</data>
  <data key="d1">66</data>
  <data key="d2">/**
 * Intercepte une exécution de méthode sur un ejb.
 * @param context InvocationContext
 * @return Object
 * @throws Exception e
 */
@AroundInvoke
public Object intercept(InvocationContext context) throws Exception {
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="116">
  <data key="d1">66</data>
  <data key="d2">@AroundInvoke</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="117">
  <data key="d6">AroundInvoke</data>
  <data key="d1">66</data>
  <data key="d2">AroundInvoke</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="118">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">intercept</data>
  <data key="d1">67</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="119">
  <data key="d1">67</data>
  <data key="d2">InvocationContext context</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="120">
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="121">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvocationContext</data>
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="122">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">67</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="123">
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="124">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="125">
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="126">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Object</data>
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="127">
  <data key="d1">67</data>
  <data key="d2">{
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="128">
  <data key="d1">70</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="129">
  <data key="d1">70</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="130">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">70</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="131">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">70</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="132">
  <data key="d0">final</data>
  <data key="d1">73</data>
  <data key="d2">final String requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="133">
  <data key="d1">73</data>
  <data key="d2">requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="134">
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="135">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="136">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">73</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="137">
  <data key="d1">73</data>
  <data key="d2">getRequestName(context)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="138">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRequestName</data>
  <data key="d1">73</data>
  <data key="d2">getRequestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="139">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">73</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="140">
  <data key="d1">75</data>
  <data key="d2">boolean systemError = false</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="141">
  <data key="d1">75</data>
  <data key="d2">systemError = false</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="142">
  <data key="d6">boolean</data>
  <data key="d1">75</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="143">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">75</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="144">
  <data key="d6">false</data>
  <data key="d1">75</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="145">
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER.bindContextIncludingCpu(requestName)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="146">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="147">
  <data key="d7">otherMethodCall</data>
  <data key="d6">bindContextIncludingCpu</data>
  <data key="d1">77</data>
  <data key="d2">bindContextIncludingCpu</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="148">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">77</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="149">
  <data key="d1">78</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="150">
  <data key="d1">78</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="151">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">78</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="152">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">78</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="153">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">82</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="154">
  <data key="d6">true</data>
  <data key="d1">82</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">AssignExpr</data>
</node>
<node id="155">
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER.addRequestForCurrentContext(systemError)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="156">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="157">
  <data key="d7">otherMethodCall</data>
  <data key="d6">addRequestForCurrentContext</data>
  <data key="d1">86</data>
  <data key="d2">addRequestForCurrentContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="158">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">86</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="159">
  <data key="d0">public</data>
  <data key="d1">66</data>
  <data key="d2">/**
 * Intercepte une exécution de méthode sur un ejb.
 * @param context InvocationContext
 * @return Object
 * @throws Exception e
 */
@AroundInvoke
public Object intercept(InvocationContext context) throws Exception {
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="160">
  <data key="d1">66</data>
  <data key="d2">@AroundInvoke</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="161">
  <data key="d6">AroundInvoke</data>
  <data key="d1">66</data>
  <data key="d2">AroundInvoke</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="162">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">intercept</data>
  <data key="d1">67</data>
  <data key="d2">intercept</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="163">
  <data key="d1">67</data>
  <data key="d2">InvocationContext context</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="164">
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="165">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InvocationContext</data>
  <data key="d1">67</data>
  <data key="d2">InvocationContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="166">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">67</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="167">
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="168">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">67</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="169">
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="170">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Object</data>
  <data key="d1">67</data>
  <data key="d2">Object</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="171">
  <data key="d1">67</data>
  <data key="d2">{
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="172">
  <data key="d1">70</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="173">
  <data key="d1">70</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="174">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">70</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="175">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">70</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="176">
  <data key="d0">final</data>
  <data key="d1">73</data>
  <data key="d2">final String requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="177">
  <data key="d1">73</data>
  <data key="d2">requestName = getRequestName(context)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="178">
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="179">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">73</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="180">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">73</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="181">
  <data key="d1">73</data>
  <data key="d2">getRequestName(context)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="182">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRequestName</data>
  <data key="d1">73</data>
  <data key="d2">getRequestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="183">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">73</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="184">
  <data key="d1">75</data>
  <data key="d2">boolean systemError = false</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="185">
  <data key="d1">75</data>
  <data key="d2">systemError = false</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="186">
  <data key="d6">boolean</data>
  <data key="d1">75</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="187">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">75</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="188">
  <data key="d6">false</data>
  <data key="d1">75</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="189">
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER.bindContextIncludingCpu(requestName)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="190">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">77</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="191">
  <data key="d7">otherMethodCall</data>
  <data key="d6">bindContextIncludingCpu</data>
  <data key="d1">77</data>
  <data key="d2">bindContextIncludingCpu</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="192">
  <data key="d7">java.lang.String</data>
  <data key="d6">requestName</data>
  <data key="d1">77</data>
  <data key="d2">requestName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="193">
  <data key="d1">78</data>
  <data key="d2">return context.proceed();</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="194">
  <data key="d1">78</data>
  <data key="d2">context.proceed()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="195">
  <data key="d7">UnknownType</data>
  <data key="d6">context</data>
  <data key="d1">78</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="196">
  <data key="d7">otherMethodCall</data>
  <data key="d6">proceed</data>
  <data key="d1">78</data>
  <data key="d2">proceed</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="197">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">82</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="198">
  <data key="d6">true</data>
  <data key="d1">82</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">AssignExpr</data>
</node>
<node id="199">
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER.addRequestForCurrentContext(systemError)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="200">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">86</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="201">
  <data key="d7">otherMethodCall</data>
  <data key="d6">addRequestForCurrentContext</data>
  <data key="d1">86</data>
  <data key="d2">addRequestForCurrentContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="202">
  <data key="d7">boolean</data>
  <data key="d6">systemError</data>
  <data key="d1">86</data>
  <data key="d2">systemError</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="203">
  <data key="d0">public</data>
  <data key="d1">66</data>
  <data key="d2">/**
 * Intercepte une exécution de méthode sur un ejb.
 * @param context InvocationContext
 * @return Object
 * @throws Exception e
 */
@AroundInvoke
public Object intercept(InvocationContext context) throws Exception {
    // cette méthode est appelée par le conteneur ejb grâce à l'annotation AroundInvoke
    if (DISABLED || !EJB_COUNTER.isDisplayed()) {
        return context.proceed();
    }
    // nom identifiant la requête
    final String requestName = getRequestName(context);
    boolean systemError = false;
    try {
        EJB_COUNTER.bindContextIncludingCpu(requestName);
        return context.proceed();
    } catch (final Error e) {
        // on catche Error pour avoir les erreurs systèmes
        // mais pas Exception qui sont fonctionnelles en général
        systemError = true;
        throw e;
    } finally {
        // on enregistre la requête dans les statistiques
        EJB_COUNTER.addRequestForCurrentContext(systemError);
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="204">
  <data key="d1">66</data>
  <data key="d2">@AroundInvoke</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="205">
  <data key="d6">AroundInvoke</data>
  <data key="d1">66</data>
  <data key="d2">AroundInvoke</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="206">
  <data key="d0">static</data>
  <data key="d1">124</data>
  <data key="d2">static Counter getEjbCounter() {
    return EJB_COUNTER;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="207">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">getEjbCounter</data>
  <data key="d1">124</data>
  <data key="d2">getEjbCounter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="208">
  <data key="d1">124</data>
  <data key="d2">Counter</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="209">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Counter</data>
  <data key="d1">124</data>
  <data key="d2">Counter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="210">
  <data key="d1">124</data>
  <data key="d2">{
    return EJB_COUNTER;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="211">
  <data key="d1">125</data>
  <data key="d2">return EJB_COUNTER;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="212">
  <data key="d7">UnknownType</data>
  <data key="d6">EJB_COUNTER</data>
  <data key="d1">125</data>
  <data key="d2">EJB_COUNTER</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
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
  <data key="d8">AST</data>
</edge>
<edge source="5" target="7">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="8">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="17">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="9" target="206">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="18">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="13" target="29">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="13" target="44">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="13" target="47">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="13" target="62">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="13" target="65">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="20">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="18" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="29">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="28">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="20" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="33">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="24" target="51">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="24" target="68">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="32">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="44">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="30" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="39">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="33" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="51">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="46">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="47">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="50">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="62">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="48" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="57">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="51" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="68">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="52" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="64">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="65">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="67">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="65" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="116">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="86">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="78" target="95">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="78" target="107">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="79" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="115">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="84" target="111">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="84" target="96">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="84" target="101">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="84" target="105">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="95">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="96">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="104">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="95" target="107">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="96" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="101">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="100">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="109">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="101" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="105">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="102" target="103">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="103" target="104">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="105" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="115">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="105" target="111">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="106" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="108">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="109" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="109" target="114">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="111" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="111" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="111" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="113">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="113" target="114">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="115" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="116" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="118" target="119">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="118" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="118" target="160">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="120">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="123">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="122">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="130">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="122" target="139">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="122" target="151">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="123" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="125">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="123" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="125" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="140">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="129">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="159">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="128" target="155">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="128" target="140">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="128" target="145">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="128" target="149">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="129" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="130" target="131">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="130" target="139">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="140">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="136">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="136">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="137">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="148">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="137" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="138" target="139">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="139" target="151">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="140" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="140" target="145">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="141" target="142">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="143">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="143" target="144">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="143" target="153">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="145" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="145" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="145" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="145" target="149">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="146" target="147">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="147" target="148">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="149" target="150">
  <data key="d8">AST</data>
</edge>
<edge source="149" target="159">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="149" target="155">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="150" target="151">
  <data key="d8">AST</data>
</edge>
<edge source="150" target="152">
  <data key="d8">AST</data>
</edge>
<edge source="151" target="152">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="153" target="154">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="153" target="158">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="155" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="156" target="157">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="157" target="158">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="159" target="160">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="162" target="163">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="162" target="204">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="163" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="163" target="164">
  <data key="d8">AST</data>
</edge>
<edge source="163" target="167">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="163" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="166">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="166" target="174">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="166" target="183">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="166" target="195">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="167" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="167" target="169">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="167" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="169" target="170">
  <data key="d8">AST</data>
</edge>
<edge source="169" target="171">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="169" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="171" target="184">
  <data key="d8">AST</data>
</edge>
<edge source="171" target="176">
  <data key="d8">AST</data>
</edge>
<edge source="171" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="172" target="173">
  <data key="d8">AST</data>
</edge>
<edge source="172" target="203">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="172" target="199">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="172" target="184">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="172" target="189">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="172" target="193">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="173" target="174">
  <data key="d8">AST</data>
</edge>
<edge source="173" target="175">
  <data key="d8">AST</data>
</edge>
<edge source="174" target="175">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="174" target="183">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="176" target="177">
  <data key="d8">AST</data>
</edge>
<edge source="176" target="184">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="177" target="178">
  <data key="d8">AST</data>
</edge>
<edge source="177" target="180">
  <data key="d8">AST</data>
</edge>
<edge source="177" target="181">
  <data key="d8">AST</data>
</edge>
<edge source="178" target="179">
  <data key="d8">AST</data>
</edge>
<edge source="178" target="180">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="180" target="181">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="180" target="192">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="181" target="182">
  <data key="d8">AST</data>
</edge>
<edge source="181" target="183">
  <data key="d8">AST</data>
</edge>
<edge source="182" target="183">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="183" target="195">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="184" target="185">
  <data key="d8">AST</data>
</edge>
<edge source="184" target="189">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="185" target="186">
  <data key="d8">AST</data>
</edge>
<edge source="185" target="187">
  <data key="d8">AST</data>
</edge>
<edge source="185" target="188">
  <data key="d8">AST</data>
</edge>
<edge source="186" target="187">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="187" target="188">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="187" target="197">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="189" target="190">
  <data key="d8">AST</data>
</edge>
<edge source="189" target="191">
  <data key="d8">AST</data>
</edge>
<edge source="189" target="192">
  <data key="d8">AST</data>
</edge>
<edge source="189" target="193">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="190" target="191">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="191" target="192">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="193" target="194">
  <data key="d8">AST</data>
</edge>
<edge source="193" target="203">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="193" target="199">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="194" target="195">
  <data key="d8">AST</data>
</edge>
<edge source="194" target="196">
  <data key="d8">AST</data>
</edge>
<edge source="195" target="196">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="197" target="198">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="197" target="202">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="199" target="200">
  <data key="d8">AST</data>
</edge>
<edge source="199" target="201">
  <data key="d8">AST</data>
</edge>
<edge source="199" target="202">
  <data key="d8">AST</data>
</edge>
<edge source="200" target="201">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="201" target="202">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="203" target="204">
  <data key="d8">AST</data>
</edge>
<edge source="204" target="205">
  <data key="d8">AST</data>
</edge>
<edge source="206" target="207">
  <data key="d8">AST</data>
</edge>
<edge source="206" target="208">
  <data key="d8">AST</data>
</edge>
<edge source="206" target="210">
  <data key="d8">AST</data>
</edge>
<edge source="206" target="211">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="207" target="208">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="208" target="209">
  <data key="d8">AST</data>
</edge>
<edge source="208" target="210">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="210" target="211">
  <data key="d8">AST</data>
</edge>
<edge source="211" target="212">
  <data key="d8">AST</data>
</edge>
</graph></graphml>