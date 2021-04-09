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
  <data key="d0">379</data>
  <data key="d1">{
    when(channelHandlerMock.closeAsync()).thenReturn(CompletableFuture.completedFuture(null));
    when(clientMock.connectToNodeAsync(eq(StringCodec.UTF8), eq("localhost:1"), any(), any())).thenReturn(ConnectionFuture.from(socketAddressMock, CompletableFuture.completedFuture(nodeConnectionMock)));
    StatefulRedisConnection&lt;String, String&gt; connection = sut.getConnection(Intent.READ, 1);
    assertThat(connection).isNotNull();
    sut.close();
    verify(channelHandlerMock).closeAsync();
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d0">379</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">shouldCloseConnections</data>
  <data key="d0">379</data>
  <data key="d1">shouldCloseConnections</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d6">Test</data>
  <data key="d0">378</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d0">378</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d0">378</data>
  <data key="d1">@Test
void shouldCloseConnections() {
    when(channelHandlerMock.closeAsync()).thenReturn(CompletableFuture.completedFuture(null));
    when(clientMock.connectToNodeAsync(eq(StringCodec.UTF8), eq("localhost:1"), any(), any())).thenReturn(ConnectionFuture.from(socketAddressMock, CompletableFuture.completedFuture(nodeConnectionMock)));
    StatefulRedisConnection&lt;String, String&gt; connection = sut.getConnection(Intent.READ, 1);
    assertThat(connection).isNotNull();
    sut.close();
    verify(channelHandlerMock).closeAsync();
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">381</data>
  <data key="d1">when(channelHandlerMock.closeAsync())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d0">381</data>
  <data key="d1">when(channelHandlerMock.closeAsync()).thenReturn(CompletableFuture.completedFuture(null))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d5">otherMethodCall</data>
  <data key="d6">completedFuture</data>
  <data key="d0">381</data>
  <data key="d1">completedFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d5">UnknownType</data>
  <data key="d6">CompletableFuture</data>
  <data key="d0">381</data>
  <data key="d1">CompletableFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d0">381</data>
  <data key="d1">CompletableFuture.completedFuture(null)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d5">otherMethodCall</data>
  <data key="d6">thenReturn</data>
  <data key="d0">381</data>
  <data key="d1">thenReturn</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d5">otherMethodCall</data>
  <data key="d6">closeAsync</data>
  <data key="d0">381</data>
  <data key="d1">closeAsync</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d5">UnknownType</data>
  <data key="d6">channelHandlerMock</data>
  <data key="d0">381</data>
  <data key="d1">channelHandlerMock</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">381</data>
  <data key="d1">channelHandlerMock.closeAsync()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d5">otherMethodCall</data>
  <data key="d6">when</data>
  <data key="d0">381</data>
  <data key="d1">when</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d0">383</data>
  <data key="d1">when(clientMock.connectToNodeAsync(eq(StringCodec.UTF8), eq("localhost:1"), any(), any()))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d0">383</data>
  <data key="d1">when(clientMock.connectToNodeAsync(eq(StringCodec.UTF8), eq("localhost:1"), any(), any())).thenReturn(ConnectionFuture.from(socketAddressMock, CompletableFuture.completedFuture(nodeConnectionMock)))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d0">381</data>
  <data key="d1">null</data>
  <data key="d2">NullLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d0">383</data>
  <data key="d1">StringCodec.UTF8</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d5">otherMethodCall</data>
  <data key="d6">eq</data>
  <data key="d0">383</data>
  <data key="d1">eq</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d0">383</data>
  <data key="d1">eq(StringCodec.UTF8)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d5">otherMethodCall</data>
  <data key="d6">connectToNodeAsync</data>
  <data key="d0">383</data>
  <data key="d1">connectToNodeAsync</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d5">UnknownType</data>
  <data key="d6">clientMock</data>
  <data key="d0">383</data>
  <data key="d1">clientMock</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d0">383</data>
  <data key="d1">clientMock.connectToNodeAsync(eq(StringCodec.UTF8), eq("localhost:1"), any(), any())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d5">otherMethodCall</data>
  <data key="d6">when</data>
  <data key="d0">383</data>
  <data key="d1">when</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d5">otherMethodCall</data>
  <data key="d6">eq</data>
  <data key="d0">383</data>
  <data key="d1">eq</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d0">383</data>
  <data key="d1">eq("localhost:1")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d5">UnknownType</data>
  <data key="d6">UTF8</data>
  <data key="d0">383</data>
  <data key="d1">UTF8</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d5">UnknownType</data>
  <data key="d6">StringCodec</data>
  <data key="d0">383</data>
  <data key="d1">StringCodec</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d5">otherMethodCall</data>
  <data key="d6">thenReturn</data>
  <data key="d0">384</data>
  <data key="d1">thenReturn</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d5">otherMethodCall</data>
  <data key="d6">any</data>
  <data key="d0">383</data>
  <data key="d1">any</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d0">383</data>
  <data key="d1">any()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d5">otherMethodCall</data>
  <data key="d6">any</data>
  <data key="d0">383</data>
  <data key="d1">any</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d0">383</data>
  <data key="d1">any()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d6">localhost:1</data>
  <data key="d0">383</data>
  <data key="d1">"localhost:1"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d0">384</data>
  <data key="d1">CompletableFuture.completedFuture(nodeConnectionMock)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d5">java.net.SocketAddress</data>
  <data key="d6">socketAddressMock</data>
  <data key="d0">384</data>
  <data key="d1">socketAddressMock</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d5">otherMethodCall</data>
  <data key="d6">from</data>
  <data key="d0">384</data>
  <data key="d1">from</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d5">UnknownType</data>
  <data key="d6">ConnectionFuture</data>
  <data key="d0">384</data>
  <data key="d1">ConnectionFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d0">384</data>
  <data key="d1">ConnectionFuture.from(socketAddressMock, CompletableFuture.completedFuture(nodeConnectionMock))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d0">386</data>
  <data key="d1">connection = sut.getConnection(Intent.READ, 1)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d0">386</data>
  <data key="d1">StatefulRedisConnection&lt;String, String&gt; connection = sut.getConnection(Intent.READ, 1)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="44">
  <data key="d5">UnknownType</data>
  <data key="d6">nodeConnectionMock</data>
  <data key="d0">384</data>
  <data key="d1">nodeConnectionMock</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="45">
  <data key="d5">otherMethodCall</data>
  <data key="d6">completedFuture</data>
  <data key="d0">384</data>
  <data key="d1">completedFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="46">
  <data key="d5">UnknownType</data>
  <data key="d6">CompletableFuture</data>
  <data key="d0">384</data>
  <data key="d1">CompletableFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="47">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d0">386</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="48">
  <data key="d0">386</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="49">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d0">386</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="50">
  <data key="d0">386</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="51">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">StatefulRedisConnection</data>
  <data key="d0">386</data>
  <data key="d1">StatefulRedisConnection</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="52">
  <data key="d0">386</data>
  <data key="d1">StatefulRedisConnection&lt;String, String&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="53">
  <data key="d5">otherMethodCall</data>
  <data key="d6">getConnection</data>
  <data key="d0">386</data>
  <data key="d1">getConnection</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="54">
  <data key="d5">UnknownType</data>
  <data key="d6">sut</data>
  <data key="d0">386</data>
  <data key="d1">sut</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="55">
  <data key="d0">386</data>
  <data key="d1">sut.getConnection(Intent.READ, 1)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="56">
  <data key="d5">UnknownType</data>
  <data key="d6">connection</data>
  <data key="d0">386</data>
  <data key="d1">connection</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="57">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d0">387</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="58">
  <data key="d0">387</data>
  <data key="d1">assertThat(connection)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="59">
  <data key="d0">387</data>
  <data key="d1">assertThat(connection).isNotNull()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="60">
  <data key="d6">1</data>
  <data key="d0">386</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="61">
  <data key="d5">UnknownType</data>
  <data key="d6">READ</data>
  <data key="d0">386</data>
  <data key="d1">READ</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="62">
  <data key="d5">UnknownType</data>
  <data key="d6">Intent</data>
  <data key="d0">386</data>
  <data key="d1">Intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="63">
  <data key="d0">386</data>
  <data key="d1">Intent.READ</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="64">
  <data key="d0">389</data>
  <data key="d1">sut.close()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="65">
  <data key="d5">otherMethodCall</data>
  <data key="d6">isNotNull</data>
  <data key="d0">387</data>
  <data key="d1">isNotNull</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="66">
  <data key="d5">UnknownType</data>
  <data key="d6">connection</data>
  <data key="d0">387</data>
  <data key="d1">connection</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="67">
  <data key="d5">otherMethodCall</data>
  <data key="d6">closeAsync</data>
  <data key="d0">391</data>
  <data key="d1">closeAsync</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="68">
  <data key="d5">UnknownType</data>
  <data key="d6">channelHandlerMock</data>
  <data key="d0">391</data>
  <data key="d1">channelHandlerMock</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="69">
  <data key="d5">otherMethodCall</data>
  <data key="d6">verify</data>
  <data key="d0">391</data>
  <data key="d1">verify</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="70">
  <data key="d0">391</data>
  <data key="d1">verify(channelHandlerMock)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="71">
  <data key="d0">391</data>
  <data key="d1">verify(channelHandlerMock).closeAsync()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="72">
  <data key="d5">otherMethodCall</data>
  <data key="d6">close</data>
  <data key="d0">389</data>
  <data key="d1">close</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="73">
  <data key="d5">UnknownType</data>
  <data key="d6">sut</data>
  <data key="d0">389</data>
  <data key="d1">sut</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="74">
  <data key="d0">633</data>
  <data key="d1">ClusterNodeConnectionFactory&lt;K, V&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="75">
  <data key="d5">UnknownType</data>
  <data key="d6">redisClusterClient</data>
  <data key="d0">633</data>
  <data key="d1">redisClusterClient</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="76">
  <data key="d0">633</data>
  <data key="d1">RedisClusterClient</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="77">
  <data key="d0">633</data>
  <data key="d1">RedisClusterClient redisClusterClient</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">getConnectionFactory</data>
  <data key="d0">633</data>
  <data key="d1">getConnectionFactory</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="79">
  <data key="d7">protected</data>
  <data key="d0">633</data>
  <data key="d1">/**
 * @return a factory {@link Function}
 */
protected ClusterNodeConnectionFactory&lt;K, V&gt; getConnectionFactory(RedisClusterClient redisClusterClient) {
    return new DefaultClusterNodeConnectionFactory&lt;&gt;(redisClusterClient, redisCodec, clusterWriter);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="80">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">RedisClusterClient</data>
  <data key="d0">633</data>
  <data key="d1">RedisClusterClient</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="81">
  <data key="d5">UnknownType</data>
  <data key="d6">redisClusterClient</data>
  <data key="d0">634</data>
  <data key="d1">redisClusterClient</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="82">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">DefaultClusterNodeConnectionFactory</data>
  <data key="d0">634</data>
  <data key="d1">DefaultClusterNodeConnectionFactory</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="83">
  <data key="d0">634</data>
  <data key="d1">DefaultClusterNodeConnectionFactory&lt;&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="84">
  <data key="d0">634</data>
  <data key="d1">new DefaultClusterNodeConnectionFactory&lt;&gt;(redisClusterClient, redisCodec, clusterWriter)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="85">
  <data key="d0">634</data>
  <data key="d1">return new DefaultClusterNodeConnectionFactory&lt;&gt;(redisClusterClient, redisCodec, clusterWriter);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="86">
  <data key="d0">633</data>
  <data key="d1">{
    return new DefaultClusterNodeConnectionFactory&lt;&gt;(redisClusterClient, redisCodec, clusterWriter);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="87">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">V</data>
  <data key="d0">633</data>
  <data key="d1">V</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="88">
  <data key="d0">633</data>
  <data key="d1">V</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="89">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">K</data>
  <data key="d0">633</data>
  <data key="d1">K</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="90">
  <data key="d0">633</data>
  <data key="d1">K</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="91">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ClusterNodeConnectionFactory</data>
  <data key="d0">633</data>
  <data key="d1">ClusterNodeConnectionFactory</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="92">
  <data key="d5">UnknownType</data>
  <data key="d6">clusterWriter</data>
  <data key="d0">634</data>
  <data key="d1">clusterWriter</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="93">
  <data key="d5">UnknownType</data>
  <data key="d6">redisCodec</data>
  <data key="d0">634</data>
  <data key="d1">redisCodec</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="94">
  <data key="d7">static</data>
  <data key="d0">44</data>
  <data key="d1">/**
 * Create a {@link ConnectionFuture} given {@link SocketAddress} and {@link CompletableFuture} holding the connection
 * progress.
 *
 * @param remoteAddress initial connection endpoint, must not be {@code null}.
 * @param delegate must not be {@code null}.
 * @return the {@link ConnectionFuture} for {@link SocketAddress} and {@link CompletableFuture}.
 * @since 5.0
 */
static &lt;T&gt; ConnectionFuture&lt;T&gt; from(SocketAddress remoteAddress, CompletableFuture&lt;T&gt; delegate) {
    return new DefaultConnectionFuture&lt;&gt;(remoteAddress, delegate);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="95">
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">TypeParameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="96">
  <data key="d5">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">TypeParameter</data>
</node>
<node id="97">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">from</data>
  <data key="d0">44</data>
  <data key="d1">from</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="98">
  <data key="d0">44</data>
  <data key="d1">SocketAddress remoteAddress</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="99">
  <data key="d0">44</data>
  <data key="d1">SocketAddress</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="100">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">SocketAddress</data>
  <data key="d0">44</data>
  <data key="d1">SocketAddress</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="101">
  <data key="d5">java.net.SocketAddress</data>
  <data key="d6">remoteAddress</data>
  <data key="d0">44</data>
  <data key="d1">remoteAddress</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="102">
  <data key="d0">44</data>
  <data key="d1">CompletableFuture&lt;T&gt; delegate</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="103">
  <data key="d0">44</data>
  <data key="d1">CompletableFuture&lt;T&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="104">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">CompletableFuture</data>
  <data key="d0">44</data>
  <data key="d1">CompletableFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="105">
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="106">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="107">
  <data key="d5">java.util.concurrent.CompletableFuture</data>
  <data key="d6">delegate</data>
  <data key="d0">44</data>
  <data key="d1">delegate</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="108">
  <data key="d0">44</data>
  <data key="d1">ConnectionFuture&lt;T&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="109">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ConnectionFuture</data>
  <data key="d0">44</data>
  <data key="d1">ConnectionFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="110">
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="111">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">44</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="112">
  <data key="d0">44</data>
  <data key="d1">{
    return new DefaultConnectionFuture&lt;&gt;(remoteAddress, delegate);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="113">
  <data key="d0">45</data>
  <data key="d1">return new DefaultConnectionFuture&lt;&gt;(remoteAddress, delegate);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="114">
  <data key="d0">45</data>
  <data key="d1">new DefaultConnectionFuture&lt;&gt;(remoteAddress, delegate)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="115">
  <data key="d0">45</data>
  <data key="d1">DefaultConnectionFuture&lt;&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="116">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">DefaultConnectionFuture</data>
  <data key="d0">45</data>
  <data key="d1">DefaultConnectionFuture</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="117">
  <data key="d5">java.net.SocketAddress</data>
  <data key="d6">remoteAddress</data>
  <data key="d0">45</data>
  <data key="d1">remoteAddress</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="118">
  <data key="d5">java.util.concurrent.CompletableFuture</data>
  <data key="d6">delegate</data>
  <data key="d0">45</data>
  <data key="d1">delegate</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="119">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">458</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="120">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">458</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="121">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">intent</data>
  <data key="d0">458</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="122">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">record</data>
  <data key="d0">458</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="123">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">protocol</data>
  <data key="d0">458</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="124">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">zeebe</data>
  <data key="d0">458</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="125">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">io</data>
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="126">
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="127">
  <data key="d0">458</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="128">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="129">
  <data key="d6">org</data>
  <data key="d0">456</data>
  <data key="d1">org</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="130">
  <data key="d6">assertj</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="131">
  <data key="d6">core</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="132">
  <data key="d6">util</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="133">
  <data key="d6">CheckReturnValue</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="134">
  <data key="d0">456</data>
  <data key="d1">@org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="135">
  <data key="d7">public,static</data>
  <data key="d0">456</data>
  <data key="d1">/**
 * Creates a new instance of &lt;code&gt;{@link io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert}&lt;/code&gt;.
 *
 * @param actual the actual value.
 * @return the created assertion object.
 */
@org.assertj.core.util.CheckReturnValue
public static io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert assertThat(io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent actual) {
    return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="136">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="137">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="138">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d0">457</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="139">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">WorkflowInstanceRelatedIntent</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="140">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="141">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="142">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="143">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="144">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="145">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="146">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="147">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="148">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="149">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="150">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="151">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="152">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="153">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="154">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="155">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="156">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="157">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="158">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="159">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">457</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="160">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="161">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="162">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="163">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="164">
  <data key="d0">458</data>
  <data key="d1">new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="165">
  <data key="d0">458</data>
  <data key="d1">return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="166">
  <data key="d0">457</data>
  <data key="d1">{
    return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="167">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="168">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<edge source="1" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="3">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="5">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="19">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="11" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="59">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="43" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="66">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="57" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="81">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="76" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="85">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="81" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="94" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="113">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="97" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="98" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="102">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="99" target="101">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="101" target="117">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="102" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="108">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="103" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="107">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="105">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="105" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="118">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="112">
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
<edge source="114" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="117">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="117" target="118">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="159">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="119" target="163">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="164">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="162">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="120" target="163">
  <data key="d8">AST</data>
</edge>
<edge source="121" target="161">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="121" target="162">
  <data key="d8">AST</data>
</edge>
<edge source="122" target="128">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="123" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="126">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="124" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="126" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="130" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="131" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="138">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="134" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="165">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="136" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="136" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="136" target="159">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="158">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="137" target="138">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="139" target="147">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="140" target="144">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="140" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="143">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="141" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="144" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="145" target="149">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="145" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="149">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="148">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="146" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="150" target="155">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="150" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="151" target="154">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="151" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="153">
  <data key="d8">AST</data>
</edge>
<edge source="153" target="160">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="153" target="154">
  <data key="d8">AST</data>
</edge>
<edge source="154" target="160">
  <data key="d8">AST</data>
</edge>
<edge source="154" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="156" target="168">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="156" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="157" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="157" target="167">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="157" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="158" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="158" target="166">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="161" target="162">
  <data key="d8">AST</data>
</edge>
<edge source="162" target="163">
  <data key="d8">AST</data>
</edge>
<edge source="163" target="164">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="166">
  <data key="d8">AST</data>
</edge>
</graph></graphml>