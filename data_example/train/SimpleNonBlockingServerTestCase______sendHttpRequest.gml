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
  <data key="d1">55</data>
  <data key="d2">@Test
public void sendHttpRequest() throws IOException, InterruptedException {
    TestHttpClient client = new TestHttpClient();
    try {
        HttpGet get = new HttpGet(DefaultServer.getDefaultServerURL() + "/path");
        HttpResponse result = client.execute(get);
        Assert.assertEquals(StatusCodes.OK, result.getStatusLine().getStatusCode());
        Header[] header = result.getHeaders("MyHeader");
        Assert.assertEquals("MyValue", header[0].getValue());
    } finally {
        client.getConnectionManager().shutdown();
    }
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">55</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">55</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">sendHttpRequest</data>
  <data key="d1">56</data>
  <data key="d2">sendHttpRequest</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">56</data>
  <data key="d2">IOException</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">IOException</data>
  <data key="d1">56</data>
  <data key="d2">IOException</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">56</data>
  <data key="d2">InterruptedException</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">InterruptedException</data>
  <data key="d1">56</data>
  <data key="d2">InterruptedException</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">56</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">56</data>
  <data key="d2">{
    TestHttpClient client = new TestHttpClient();
    try {
        HttpGet get = new HttpGet(DefaultServer.getDefaultServerURL() + "/path");
        HttpResponse result = client.execute(get);
        Assert.assertEquals(StatusCodes.OK, result.getStatusLine().getStatusCode());
        Header[] header = result.getHeaders("MyHeader");
        Assert.assertEquals("MyValue", header[0].getValue());
    } finally {
        client.getConnectionManager().shutdown();
    }
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d1">57</data>
  <data key="d2">TestHttpClient client = new TestHttpClient()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d1">57</data>
  <data key="d2">client = new TestHttpClient()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">57</data>
  <data key="d2">TestHttpClient</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">TestHttpClient</data>
  <data key="d1">57</data>
  <data key="d2">TestHttpClient</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d7">UnknownType</data>
  <data key="d6">client</data>
  <data key="d1">57</data>
  <data key="d2">client</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d1">57</data>
  <data key="d2">new TestHttpClient()</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d1">57</data>
  <data key="d2">TestHttpClient</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">TestHttpClient</data>
  <data key="d1">57</data>
  <data key="d2">TestHttpClient</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">59</data>
  <data key="d2">HttpGet get = new HttpGet(DefaultServer.getDefaultServerURL() + "/path")</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d1">59</data>
  <data key="d2">get = new HttpGet(DefaultServer.getDefaultServerURL() + "/path")</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d1">59</data>
  <data key="d2">HttpGet</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HttpGet</data>
  <data key="d1">59</data>
  <data key="d2">HttpGet</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">UnknownType</data>
  <data key="d6">get</data>
  <data key="d1">59</data>
  <data key="d2">get</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d1">59</data>
  <data key="d2">new HttpGet(DefaultServer.getDefaultServerURL() + "/path")</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">59</data>
  <data key="d2">HttpGet</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HttpGet</data>
  <data key="d1">59</data>
  <data key="d2">HttpGet</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">59</data>
  <data key="d2">DefaultServer.getDefaultServerURL() + "/path"</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d1">59</data>
  <data key="d2">DefaultServer.getDefaultServerURL()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">UnknownType</data>
  <data key="d6">DefaultServer</data>
  <data key="d1">59</data>
  <data key="d2">DefaultServer</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getDefaultServerURL</data>
  <data key="d1">59</data>
  <data key="d2">getDefaultServerURL</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d6">/path</data>
  <data key="d1">59</data>
  <data key="d2">"/path"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">60</data>
  <data key="d2">HttpResponse result = client.execute(get)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d1">60</data>
  <data key="d2">result = client.execute(get)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d1">60</data>
  <data key="d2">HttpResponse</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HttpResponse</data>
  <data key="d1">60</data>
  <data key="d2">HttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">60</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">60</data>
  <data key="d2">client.execute(get)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d7">UnknownType</data>
  <data key="d6">client</data>
  <data key="d1">60</data>
  <data key="d2">client</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">otherMethodCall</data>
  <data key="d6">execute</data>
  <data key="d1">60</data>
  <data key="d2">execute</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">UnknownType</data>
  <data key="d6">get</data>
  <data key="d1">60</data>
  <data key="d2">get</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d1">61</data>
  <data key="d2">Assert.assertEquals(StatusCodes.OK, result.getStatusLine().getStatusCode())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d7">UnknownType</data>
  <data key="d6">Assert</data>
  <data key="d1">61</data>
  <data key="d2">Assert</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">61</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d1">61</data>
  <data key="d2">StatusCodes.OK</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d7">UnknownType</data>
  <data key="d6">StatusCodes</data>
  <data key="d1">61</data>
  <data key="d2">StatusCodes</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d7">UnknownType</data>
  <data key="d6">OK</data>
  <data key="d1">61</data>
  <data key="d2">OK</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d1">61</data>
  <data key="d2">result.getStatusLine().getStatusCode()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d1">61</data>
  <data key="d2">result.getStatusLine()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">61</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getStatusLine</data>
  <data key="d1">61</data>
  <data key="d2">getStatusLine</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getStatusCode</data>
  <data key="d1">61</data>
  <data key="d2">getStatusCode</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d1">62</data>
  <data key="d2">Header[] header = result.getHeaders("MyHeader")</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d1">62</data>
  <data key="d2">header = result.getHeaders("MyHeader")</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d1">62</data>
  <data key="d2">Header[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d1">62</data>
  <data key="d2">Header</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ArrayType</data>
  <data key="d5">true</data>
</node>
<node id="56">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Header</data>
  <data key="d1">62</data>
  <data key="d2">Header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="57">
  <data key="d7">UnknownType</data>
  <data key="d6">header</data>
  <data key="d1">62</data>
  <data key="d2">header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="58">
  <data key="d1">62</data>
  <data key="d2">result.getHeaders("MyHeader")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="59">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">62</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="60">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getHeaders</data>
  <data key="d1">62</data>
  <data key="d2">getHeaders</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="61">
  <data key="d6">MyHeader</data>
  <data key="d1">62</data>
  <data key="d2">"MyHeader"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="62">
  <data key="d1">63</data>
  <data key="d2">Assert.assertEquals("MyValue", header[0].getValue())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="63">
  <data key="d7">UnknownType</data>
  <data key="d6">Assert</data>
  <data key="d1">63</data>
  <data key="d2">Assert</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="64">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">63</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="65">
  <data key="d6">MyValue</data>
  <data key="d1">63</data>
  <data key="d2">"MyValue"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="66">
  <data key="d1">63</data>
  <data key="d2">header[0].getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="67">
  <data key="d1">63</data>
  <data key="d2">header[0]</data>
  <data key="d3">ArrayAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="68">
  <data key="d7">UnknownType</data>
  <data key="d6">header</data>
  <data key="d1">63</data>
  <data key="d2">header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="69">
  <data key="d6">0</data>
  <data key="d1">63</data>
  <data key="d2">0</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">ArrayAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="70">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">63</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="71">
  <data key="d1">65</data>
  <data key="d2">client.getConnectionManager().shutdown()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="72">
  <data key="d1">65</data>
  <data key="d2">client.getConnectionManager()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="73">
  <data key="d7">UnknownType</data>
  <data key="d6">client</data>
  <data key="d1">65</data>
  <data key="d2">client</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="74">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getConnectionManager</data>
  <data key="d1">65</data>
  <data key="d2">getConnectionManager</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="75">
  <data key="d7">otherMethodCall</data>
  <data key="d6">shutdown</data>
  <data key="d1">65</data>
  <data key="d2">shutdown</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="76">
  <data key="d0">public,static</data>
  <data key="d1">227</data>
  <data key="d2">/**
 * @return The base URL that can be used to make connections to this server
 */
public static String getDefaultServerURL() {
    return "http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT)) + ":" + getHostPort(DEFAULT);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="77">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">getDefaultServerURL</data>
  <data key="d1">227</data>
  <data key="d2">getDefaultServerURL</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d1">227</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="79">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">227</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="80">
  <data key="d1">227</data>
  <data key="d2">{
    return "http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT)) + ":" + getHostPort(DEFAULT);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="81">
  <data key="d1">228</data>
  <data key="d2">return "http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT)) + ":" + getHostPort(DEFAULT);</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="82">
  <data key="d1">228</data>
  <data key="d2">"http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT)) + ":" + getHostPort(DEFAULT)</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="83">
  <data key="d1">228</data>
  <data key="d2">"http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT)) + ":"</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="84">
  <data key="d1">228</data>
  <data key="d2">"http://" + NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT))</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="85">
  <data key="d6">http://</data>
  <data key="d1">228</data>
  <data key="d2">"http://"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="86">
  <data key="d1">228</data>
  <data key="d2">NetworkUtils.formatPossibleIpv6Address(getHostAddress(DEFAULT))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="87">
  <data key="d7">UnknownType</data>
  <data key="d6">NetworkUtils</data>
  <data key="d1">228</data>
  <data key="d2">NetworkUtils</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="88">
  <data key="d7">otherMethodCall</data>
  <data key="d6">formatPossibleIpv6Address</data>
  <data key="d1">228</data>
  <data key="d2">formatPossibleIpv6Address</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="89">
  <data key="d1">228</data>
  <data key="d2">getHostAddress(DEFAULT)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="90">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getHostAddress</data>
  <data key="d1">228</data>
  <data key="d2">getHostAddress</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="91">
  <data key="d7">UnknownType</data>
  <data key="d6">DEFAULT</data>
  <data key="d1">228</data>
  <data key="d2">DEFAULT</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="92">
  <data key="d6">:</data>
  <data key="d1">228</data>
  <data key="d2">":"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="93">
  <data key="d1">228</data>
  <data key="d2">getHostPort(DEFAULT)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">BinaryExpr</data>
</node>
<node id="94">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getHostPort</data>
  <data key="d1">228</data>
  <data key="d2">getHostPort</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="95">
  <data key="d7">UnknownType</data>
  <data key="d6">DEFAULT</data>
  <data key="d1">228</data>
  <data key="d2">DEFAULT</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="7">
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
  <data key="d8">AST</data>
</edge>
<edge source="7" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="19">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="12" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="15" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="15" target="38">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="15" target="73">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="40">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="49">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="36" target="59">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="73">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="59">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="62">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="68">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="71">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="63" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="81">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="77" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>