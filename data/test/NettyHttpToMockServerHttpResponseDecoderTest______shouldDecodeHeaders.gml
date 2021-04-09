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
  <data key="d1">56</data>
  <data key="d2">@Test
public void shouldDecodeHeaders() {
    // given
    fullHttpResponse = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK);
    fullHttpResponse.headers().add("headerName1", "headerValue1_1");
    fullHttpResponse.headers().add("headerName1", "headerValue1_2");
    fullHttpResponse.headers().add("headerName2", "headerValue2");
    // when
    mockServerResponseDecoder.decode(null, fullHttpResponse, output);
    // then
    List&lt;Header&gt; headers = ((HttpResponse) output.get(0)).getHeaderList();
    assertThat(headers, containsInAnyOrder(header("headerName1", "headerValue1_1", "headerValue1_2"), header("headerName2", "headerValue2")));
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">56</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">56</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">shouldDecodeHeaders</data>
  <data key="d1">57</data>
  <data key="d2">shouldDecodeHeaders</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">57</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">57</data>
  <data key="d2">{
    // given
    fullHttpResponse = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK);
    fullHttpResponse.headers().add("headerName1", "headerValue1_1");
    fullHttpResponse.headers().add("headerName1", "headerValue1_2");
    fullHttpResponse.headers().add("headerName2", "headerValue2");
    // when
    mockServerResponseDecoder.decode(null, fullHttpResponse, output);
    // then
    List&lt;Header&gt; headers = ((HttpResponse) output.get(0)).getHeaderList();
    assertThat(headers, containsInAnyOrder(header("headerName1", "headerValue1_1", "headerValue1_2"), header("headerName2", "headerValue2")));
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d6">=</data>
  <data key="d1">59</data>
  <data key="d2">fullHttpResponse = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK)</data>
  <data key="d3">AssignExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d7">UnknownType</data>
  <data key="d6">fullHttpResponse</data>
  <data key="d1">59</data>
  <data key="d2">fullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">59</data>
  <data key="d2">new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">AssignExpr</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">59</data>
  <data key="d2">DefaultFullHttpResponse</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">DefaultFullHttpResponse</data>
  <data key="d1">59</data>
  <data key="d2">DefaultFullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d1">59</data>
  <data key="d2">HttpVersion.HTTP_1_1</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d7">UnknownType</data>
  <data key="d6">HttpVersion</data>
  <data key="d1">59</data>
  <data key="d2">HttpVersion</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d7">UnknownType</data>
  <data key="d6">HTTP_1_1</data>
  <data key="d1">59</data>
  <data key="d2">HTTP_1_1</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">59</data>
  <data key="d2">HttpResponseStatus.OK</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d7">UnknownType</data>
  <data key="d6">HttpResponseStatus</data>
  <data key="d1">59</data>
  <data key="d2">HttpResponseStatus</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">UnknownType</data>
  <data key="d6">OK</data>
  <data key="d1">59</data>
  <data key="d2">OK</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d1">60</data>
  <data key="d2">fullHttpResponse.headers().add("headerName1", "headerValue1_1")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">60</data>
  <data key="d2">fullHttpResponse.headers()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d7">UnknownType</data>
  <data key="d6">fullHttpResponse</data>
  <data key="d1">60</data>
  <data key="d2">fullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d7">otherMethodCall</data>
  <data key="d6">headers</data>
  <data key="d1">60</data>
  <data key="d2">headers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d7">otherMethodCall</data>
  <data key="d6">add</data>
  <data key="d1">60</data>
  <data key="d2">add</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d6">headerName1</data>
  <data key="d1">60</data>
  <data key="d2">"headerName1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d6">headerValue1_1</data>
  <data key="d1">60</data>
  <data key="d2">"headerValue1_1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">61</data>
  <data key="d2">fullHttpResponse.headers().add("headerName1", "headerValue1_2")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d1">61</data>
  <data key="d2">fullHttpResponse.headers()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d7">UnknownType</data>
  <data key="d6">fullHttpResponse</data>
  <data key="d1">61</data>
  <data key="d2">fullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">otherMethodCall</data>
  <data key="d6">headers</data>
  <data key="d1">61</data>
  <data key="d2">headers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">otherMethodCall</data>
  <data key="d6">add</data>
  <data key="d1">61</data>
  <data key="d2">add</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d6">headerName1</data>
  <data key="d1">61</data>
  <data key="d2">"headerName1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d6">headerValue1_2</data>
  <data key="d1">61</data>
  <data key="d2">"headerValue1_2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">62</data>
  <data key="d2">fullHttpResponse.headers().add("headerName2", "headerValue2")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d1">62</data>
  <data key="d2">fullHttpResponse.headers()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">UnknownType</data>
  <data key="d6">fullHttpResponse</data>
  <data key="d1">62</data>
  <data key="d2">fullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">otherMethodCall</data>
  <data key="d6">headers</data>
  <data key="d1">62</data>
  <data key="d2">headers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">otherMethodCall</data>
  <data key="d6">add</data>
  <data key="d1">62</data>
  <data key="d2">add</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d6">headerName2</data>
  <data key="d1">62</data>
  <data key="d2">"headerName2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d6">headerValue2</data>
  <data key="d1">62</data>
  <data key="d2">"headerValue2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d1">65</data>
  <data key="d2">mockServerResponseDecoder.decode(null, fullHttpResponse, output)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">UnknownType</data>
  <data key="d6">mockServerResponseDecoder</data>
  <data key="d1">65</data>
  <data key="d2">mockServerResponseDecoder</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d7">otherMethodCall</data>
  <data key="d6">decode</data>
  <data key="d1">65</data>
  <data key="d2">decode</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d1">65</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d7">UnknownType</data>
  <data key="d6">fullHttpResponse</data>
  <data key="d1">65</data>
  <data key="d2">fullHttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d7">java.util.List</data>
  <data key="d6">output</data>
  <data key="d1">65</data>
  <data key="d2">output</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d1">68</data>
  <data key="d2">List&lt;Header&gt; headers = ((HttpResponse) output.get(0)).getHeaderList()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d1">68</data>
  <data key="d2">headers = ((HttpResponse) output.get(0)).getHeaderList()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d1">68</data>
  <data key="d2">List&lt;Header&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">List</data>
  <data key="d1">68</data>
  <data key="d2">List</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">68</data>
  <data key="d2">Header</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Header</data>
  <data key="d1">68</data>
  <data key="d2">Header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d7">UnknownType</data>
  <data key="d6">headers</data>
  <data key="d1">68</data>
  <data key="d2">headers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d1">68</data>
  <data key="d2">((HttpResponse) output.get(0)).getHeaderList()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d1">68</data>
  <data key="d2">((HttpResponse) output.get(0))</data>
  <data key="d3">EnclosedExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d1">68</data>
  <data key="d2">(HttpResponse) output.get(0)</data>
  <data key="d3">CastExpr</data>
  <data key="d4">EnclosedExpr</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d1">68</data>
  <data key="d2">HttpResponse</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="56">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">HttpResponse</data>
  <data key="d1">68</data>
  <data key="d2">HttpResponse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="57">
  <data key="d1">68</data>
  <data key="d2">output.get(0)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="58">
  <data key="d7">java.util.List</data>
  <data key="d6">output</data>
  <data key="d1">68</data>
  <data key="d2">output</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="59">
  <data key="d7">otherMethodCall</data>
  <data key="d6">get</data>
  <data key="d1">68</data>
  <data key="d2">get</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="60">
  <data key="d6">0</data>
  <data key="d1">68</data>
  <data key="d2">0</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="61">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getHeaderList</data>
  <data key="d1">68</data>
  <data key="d2">getHeaderList</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="62">
  <data key="d1">69</data>
  <data key="d2">assertThat(headers, containsInAnyOrder(header("headerName1", "headerValue1_1", "headerValue1_2"), header("headerName2", "headerValue2")))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="63">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d1">69</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="64">
  <data key="d7">UnknownType</data>
  <data key="d6">headers</data>
  <data key="d1">69</data>
  <data key="d2">headers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="65">
  <data key="d1">69</data>
  <data key="d2">containsInAnyOrder(header("headerName1", "headerValue1_1", "headerValue1_2"), header("headerName2", "headerValue2"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="66">
  <data key="d7">otherMethodCall</data>
  <data key="d6">containsInAnyOrder</data>
  <data key="d1">69</data>
  <data key="d2">containsInAnyOrder</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="67">
  <data key="d1">70</data>
  <data key="d2">header("headerName1", "headerValue1_1", "headerValue1_2")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="68">
  <data key="d7">otherMethodCall</data>
  <data key="d6">header</data>
  <data key="d1">70</data>
  <data key="d2">header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="69">
  <data key="d6">headerName1</data>
  <data key="d1">70</data>
  <data key="d2">"headerName1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="70">
  <data key="d6">headerValue1_1</data>
  <data key="d1">70</data>
  <data key="d2">"headerValue1_1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="71">
  <data key="d6">headerValue1_2</data>
  <data key="d1">70</data>
  <data key="d2">"headerValue1_2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="72">
  <data key="d1">71</data>
  <data key="d2">header("headerName2", "headerValue2")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="73">
  <data key="d7">otherMethodCall</data>
  <data key="d6">header</data>
  <data key="d1">71</data>
  <data key="d2">header</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="74">
  <data key="d6">headerName2</data>
  <data key="d1">71</data>
  <data key="d2">"headerName2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="75">
  <data key="d6">headerValue2</data>
  <data key="d1">71</data>
  <data key="d2">"headerValue2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="76">
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
<node id="77">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d7">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="79">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d1">31</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="80">
  <data key="d1">31</data>
  <data key="d2">String reason</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="81">
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="82">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="83">
  <data key="d7">java.lang.String</data>
  <data key="d6">reason</data>
  <data key="d1">31</data>
  <data key="d2">reason</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="84">
  <data key="d1">31</data>
  <data key="d2">T actual</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="85">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="86">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="87">
  <data key="d7">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d1">31</data>
  <data key="d2">actual</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="88">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt; matcher</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="89">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="90">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Matcher</data>
  <data key="d1">31</data>
  <data key="d2">Matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="91">
  <data key="d1">31</data>
  <data key="d2">? super T</data>
  <data key="d3">WildcardType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="92">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">WildcardType</data>
</node>
<node id="93">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="94">
  <data key="d7">UnknownType</data>
  <data key="d6">matcher</data>
  <data key="d1">31</data>
  <data key="d2">matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="95">
  <data key="d1">31</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="96">
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
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="6">
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
<edge source="6" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="14">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="8" target="13">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="8" target="17">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="8" target="16">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="30" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="45">
  <data key="d8">NEXT_TOKEN</data>
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
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="62">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="64">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="67">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="62" target="72">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="62" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="72">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="70" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="90" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>