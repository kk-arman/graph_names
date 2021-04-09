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
  <data key="d0">UnknownType</data>
  <data key="d1">encoded</data>
  <data key="d2">4902</data>
  <data key="d3">encoded</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="2">
  <data key="d0">UnknownType</data>
  <data key="d1">fromFile</data>
  <data key="d2">4902</data>
  <data key="d3">fromFile</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="3">
  <data key="d0">otherMethodCall</data>
  <data key="d1">compareClientMessages</data>
  <data key="d2">4902</data>
  <data key="d3">compareClientMessages</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="4">
  <data key="d2">4902</data>
  <data key="d3">compareClientMessages(fromFile, encoded)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="5">
  <data key="d0">int</data>
  <data key="d1">fileClientMessageIndex</data>
  <data key="d2">4901</data>
  <data key="d3">fileClientMessageIndex</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="6">
  <data key="d2">4900</data>
  <data key="d3">encoded = XATransactionCreateCodec.encodeRequest(anXid, aLong)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="7">
  <data key="d2">4900</data>
  <data key="d3">ClientMessage encoded = XATransactionCreateCodec.encodeRequest(anXid, aLong)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="8">
  <data key="d1">611</data>
  <data key="d2">4899</data>
  <data key="d3">611</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="9">
  <data key="d0">int</data>
  <data key="d1">fileClientMessageIndex</data>
  <data key="d2">4899</data>
  <data key="d3">fileClientMessageIndex</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="10">
  <data key="d0">otherMethodCall</data>
  <data key="d1">encodeRequest</data>
  <data key="d2">4900</data>
  <data key="d3">encodeRequest</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="11">
  <data key="d0">UnknownType</data>
  <data key="d1">XATransactionCreateCodec</data>
  <data key="d2">4900</data>
  <data key="d3">XATransactionCreateCodec</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="12">
  <data key="d2">4900</data>
  <data key="d3">XATransactionCreateCodec.encodeRequest(anXid, aLong)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="13">
  <data key="d0">UnknownType</data>
  <data key="d1">encoded</data>
  <data key="d2">4900</data>
  <data key="d3">encoded</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="14">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">4900</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="15">
  <data key="d2">4900</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="16">
  <data key="d2">4901</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="17">
  <data key="d2">4901</data>
  <data key="d3">fromFile = clientMessages.get(fileClientMessageIndex)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="18">
  <data key="d2">4901</data>
  <data key="d3">ClientMessage fromFile = clientMessages.get(fileClientMessageIndex)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="19">
  <data key="d0">UnknownType</data>
  <data key="d1">aLong</data>
  <data key="d2">4900</data>
  <data key="d3">aLong</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="20">
  <data key="d0">UnknownType</data>
  <data key="d1">anXid</data>
  <data key="d2">4900</data>
  <data key="d3">anXid</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="21">
  <data key="d0">otherMethodCall</data>
  <data key="d1">get</data>
  <data key="d2">4901</data>
  <data key="d3">get</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="22">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessages</data>
  <data key="d2">4901</data>
  <data key="d3">clientMessages</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="23">
  <data key="d2">4901</data>
  <data key="d3">clientMessages.get(fileClientMessageIndex)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="24">
  <data key="d0">UnknownType</data>
  <data key="d1">fromFile</data>
  <data key="d2">4901</data>
  <data key="d3">fromFile</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="25">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">4901</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="26">
  <data key="d2">4897</data>
  <data key="d3">@Test</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="27">
  <data key="d7">public</data>
  <data key="d2">4897</data>
  <data key="d3">@Test
public void test_XATransactionCreateCodec_encodeRequest() {
    int fileClientMessageIndex = 611;
    ClientMessage encoded = XATransactionCreateCodec.encodeRequest(anXid, aLong);
    ClientMessage fromFile = clientMessages.get(fileClientMessageIndex);
    compareClientMessages(fromFile, encoded);
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="28">
  <data key="d1">int</data>
  <data key="d2">4899</data>
  <data key="d3">int</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="29">
  <data key="d2">4899</data>
  <data key="d3">fileClientMessageIndex = 611</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="30">
  <data key="d2">4899</data>
  <data key="d3">int fileClientMessageIndex = 611</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="31">
  <data key="d2">4898</data>
  <data key="d3">{
    int fileClientMessageIndex = 611;
    ClientMessage encoded = XATransactionCreateCodec.encodeRequest(anXid, aLong);
    ClientMessage fromFile = clientMessages.get(fileClientMessageIndex);
    compareClientMessages(fromFile, encoded);
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="32">
  <data key="d2">4898</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="33">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">test_XATransactionCreateCodec_encodeRequest</data>
  <data key="d2">4898</data>
  <data key="d3">test_XATransactionCreateCodec_encodeRequest</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="34">
  <data key="d1">Test</data>
  <data key="d2">4897</data>
  <data key="d3">Test</data>
  <data key="d4">Name</data>
  <data key="d5">MarkerAnnotationExpr</data>
  <data key="d6">true</data>
</node>
<node id="35">
  <data key="d7">public,static</data>
  <data key="d2">67</data>
  <data key="d3">public static ClientMessage encodeRequest(javax.transaction.xa.Xid xid, long timeout) {
    ClientMessage clientMessage = ClientMessage.createForEncode();
    clientMessage.setRetryable(false);
    clientMessage.setOperationName("XATransaction.Create");
    ClientMessage.Frame initialFrame = new ClientMessage.Frame(new byte[REQUEST_INITIAL_FRAME_SIZE], UNFRAGMENTED_MESSAGE);
    encodeInt(initialFrame.content, TYPE_FIELD_OFFSET, REQUEST_MESSAGE_TYPE);
    encodeInt(initialFrame.content, PARTITION_ID_FIELD_OFFSET, -1);
    encodeLong(initialFrame.content, REQUEST_TIMEOUT_FIELD_OFFSET, timeout);
    clientMessage.add(initialFrame);
    XidCodec.encode(clientMessage, xid);
    return clientMessage;
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="36">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">encodeRequest</data>
  <data key="d2">67</data>
  <data key="d3">encodeRequest</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="37">
  <data key="d2">67</data>
  <data key="d3">javax.transaction.xa.Xid xid</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="38">
  <data key="d2">67</data>
  <data key="d3">javax.transaction.xa.Xid</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="39">
  <data key="d2">67</data>
  <data key="d3">javax.transaction.xa</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="40">
  <data key="d2">67</data>
  <data key="d3">javax.transaction</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="41">
  <data key="d2">67</data>
  <data key="d3">javax</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="42">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">javax</data>
  <data key="d2">67</data>
  <data key="d3">javax</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="43">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">transaction</data>
  <data key="d2">67</data>
  <data key="d3">transaction</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="44">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">xa</data>
  <data key="d2">67</data>
  <data key="d3">xa</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="45">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Xid</data>
  <data key="d2">67</data>
  <data key="d3">Xid</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="46">
  <data key="d0">javax.transaction.xa.Xid</data>
  <data key="d1">xid</data>
  <data key="d2">67</data>
  <data key="d3">xid</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="47">
  <data key="d2">67</data>
  <data key="d3">long timeout</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="48">
  <data key="d1">long</data>
  <data key="d2">67</data>
  <data key="d3">long</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">Parameter</data>
</node>
<node id="49">
  <data key="d0">long</data>
  <data key="d1">timeout</data>
  <data key="d2">67</data>
  <data key="d3">timeout</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="50">
  <data key="d2">67</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="51">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">67</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="52">
  <data key="d2">67</data>
  <data key="d3">{
    ClientMessage clientMessage = ClientMessage.createForEncode();
    clientMessage.setRetryable(false);
    clientMessage.setOperationName("XATransaction.Create");
    ClientMessage.Frame initialFrame = new ClientMessage.Frame(new byte[REQUEST_INITIAL_FRAME_SIZE], UNFRAGMENTED_MESSAGE);
    encodeInt(initialFrame.content, TYPE_FIELD_OFFSET, REQUEST_MESSAGE_TYPE);
    encodeInt(initialFrame.content, PARTITION_ID_FIELD_OFFSET, -1);
    encodeLong(initialFrame.content, REQUEST_TIMEOUT_FIELD_OFFSET, timeout);
    clientMessage.add(initialFrame);
    XidCodec.encode(clientMessage, xid);
    return clientMessage;
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="53">
  <data key="d2">68</data>
  <data key="d3">ClientMessage clientMessage = ClientMessage.createForEncode()</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="54">
  <data key="d2">68</data>
  <data key="d3">clientMessage = ClientMessage.createForEncode()</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="55">
  <data key="d2">68</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="56">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">68</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="57">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">68</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="58">
  <data key="d2">68</data>
  <data key="d3">ClientMessage.createForEncode()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="59">
  <data key="d0">UnknownType</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">68</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="60">
  <data key="d0">otherMethodCall</data>
  <data key="d1">createForEncode</data>
  <data key="d2">68</data>
  <data key="d3">createForEncode</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="61">
  <data key="d2">69</data>
  <data key="d3">clientMessage.setRetryable(false)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="62">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">69</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="63">
  <data key="d0">otherMethodCall</data>
  <data key="d1">setRetryable</data>
  <data key="d2">69</data>
  <data key="d3">setRetryable</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="64">
  <data key="d1">false</data>
  <data key="d2">69</data>
  <data key="d3">false</data>
  <data key="d4">BooleanLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="65">
  <data key="d2">70</data>
  <data key="d3">clientMessage.setOperationName("XATransaction.Create")</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="66">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">70</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="67">
  <data key="d0">otherMethodCall</data>
  <data key="d1">setOperationName</data>
  <data key="d2">70</data>
  <data key="d3">setOperationName</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="68">
  <data key="d1">XATransaction.Create</data>
  <data key="d2">70</data>
  <data key="d3">"XATransaction.Create"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="69">
  <data key="d2">71</data>
  <data key="d3">ClientMessage.Frame initialFrame = new ClientMessage.Frame(new byte[REQUEST_INITIAL_FRAME_SIZE], UNFRAGMENTED_MESSAGE)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="70">
  <data key="d2">71</data>
  <data key="d3">initialFrame = new ClientMessage.Frame(new byte[REQUEST_INITIAL_FRAME_SIZE], UNFRAGMENTED_MESSAGE)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="71">
  <data key="d2">71</data>
  <data key="d3">ClientMessage.Frame</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="72">
  <data key="d2">71</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="73">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">71</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="74">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Frame</data>
  <data key="d2">71</data>
  <data key="d3">Frame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="75">
  <data key="d0">UnknownType</data>
  <data key="d1">initialFrame</data>
  <data key="d2">71</data>
  <data key="d3">initialFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="76">
  <data key="d2">71</data>
  <data key="d3">new ClientMessage.Frame(new byte[REQUEST_INITIAL_FRAME_SIZE], UNFRAGMENTED_MESSAGE)</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="77">
  <data key="d2">71</data>
  <data key="d3">ClientMessage.Frame</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ObjectCreationExpr</data>
</node>
<node id="78">
  <data key="d2">71</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="79">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">71</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="80">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Frame</data>
  <data key="d2">71</data>
  <data key="d3">Frame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="81">
  <data key="d2">71</data>
  <data key="d3">new byte[REQUEST_INITIAL_FRAME_SIZE]</data>
  <data key="d4">ArrayCreationExpr</data>
  <data key="d5">ObjectCreationExpr</data>
</node>
<node id="82">
  <data key="d1">byte</data>
  <data key="d2">71</data>
  <data key="d3">byte</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">ArrayCreationExpr</data>
</node>
<node id="83">
  <data key="d2">71</data>
  <data key="d3">[REQUEST_INITIAL_FRAME_SIZE]</data>
  <data key="d4">ArrayCreationLevel</data>
  <data key="d5">ArrayCreationExpr</data>
</node>
<node id="84">
  <data key="d0">int</data>
  <data key="d1">REQUEST_INITIAL_FRAME_SIZE</data>
  <data key="d2">71</data>
  <data key="d3">REQUEST_INITIAL_FRAME_SIZE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="85">
  <data key="d0">UnknownType</data>
  <data key="d1">UNFRAGMENTED_MESSAGE</data>
  <data key="d2">71</data>
  <data key="d3">UNFRAGMENTED_MESSAGE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="86">
  <data key="d2">72</data>
  <data key="d3">encodeInt(initialFrame.content, TYPE_FIELD_OFFSET, REQUEST_MESSAGE_TYPE)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="87">
  <data key="d0">otherMethodCall</data>
  <data key="d1">encodeInt</data>
  <data key="d2">72</data>
  <data key="d3">encodeInt</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="88">
  <data key="d2">72</data>
  <data key="d3">initialFrame.content</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="89">
  <data key="d0">UnknownType</data>
  <data key="d1">initialFrame</data>
  <data key="d2">72</data>
  <data key="d3">initialFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="90">
  <data key="d0">UnknownType</data>
  <data key="d1">content</data>
  <data key="d2">72</data>
  <data key="d3">content</data>
  <data key="d4">SimpleName</data>
  <data key="d5">FieldAccessExpr</data>
</node>
<node id="91">
  <data key="d0">UnknownType</data>
  <data key="d1">TYPE_FIELD_OFFSET</data>
  <data key="d2">72</data>
  <data key="d3">TYPE_FIELD_OFFSET</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="92">
  <data key="d0">int</data>
  <data key="d1">REQUEST_MESSAGE_TYPE</data>
  <data key="d2">72</data>
  <data key="d3">REQUEST_MESSAGE_TYPE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="93">
  <data key="d2">73</data>
  <data key="d3">encodeInt(initialFrame.content, PARTITION_ID_FIELD_OFFSET, -1)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="94">
  <data key="d0">otherMethodCall</data>
  <data key="d1">encodeInt</data>
  <data key="d2">73</data>
  <data key="d3">encodeInt</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="95">
  <data key="d2">73</data>
  <data key="d3">initialFrame.content</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="96">
  <data key="d0">UnknownType</data>
  <data key="d1">initialFrame</data>
  <data key="d2">73</data>
  <data key="d3">initialFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="97">
  <data key="d0">UnknownType</data>
  <data key="d1">content</data>
  <data key="d2">73</data>
  <data key="d3">content</data>
  <data key="d4">SimpleName</data>
  <data key="d5">FieldAccessExpr</data>
</node>
<node id="98">
  <data key="d0">UnknownType</data>
  <data key="d1">PARTITION_ID_FIELD_OFFSET</data>
  <data key="d2">73</data>
  <data key="d3">PARTITION_ID_FIELD_OFFSET</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="99">
  <data key="d2">73</data>
  <data key="d3">-1</data>
  <data key="d4">UnaryExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="100">
  <data key="d1">1</data>
  <data key="d2">73</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">UnaryExpr</data>
</node>
<node id="101">
  <data key="d2">74</data>
  <data key="d3">encodeLong(initialFrame.content, REQUEST_TIMEOUT_FIELD_OFFSET, timeout)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="102">
  <data key="d0">otherMethodCall</data>
  <data key="d1">encodeLong</data>
  <data key="d2">74</data>
  <data key="d3">encodeLong</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="103">
  <data key="d2">74</data>
  <data key="d3">initialFrame.content</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="104">
  <data key="d0">UnknownType</data>
  <data key="d1">initialFrame</data>
  <data key="d2">74</data>
  <data key="d3">initialFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="105">
  <data key="d0">UnknownType</data>
  <data key="d1">content</data>
  <data key="d2">74</data>
  <data key="d3">content</data>
  <data key="d4">SimpleName</data>
  <data key="d5">FieldAccessExpr</data>
</node>
<node id="106">
  <data key="d0">int</data>
  <data key="d1">REQUEST_TIMEOUT_FIELD_OFFSET</data>
  <data key="d2">74</data>
  <data key="d3">REQUEST_TIMEOUT_FIELD_OFFSET</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="107">
  <data key="d0">long</data>
  <data key="d1">timeout</data>
  <data key="d2">74</data>
  <data key="d3">timeout</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="108">
  <data key="d2">75</data>
  <data key="d3">clientMessage.add(initialFrame)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="109">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">75</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="110">
  <data key="d0">otherMethodCall</data>
  <data key="d1">add</data>
  <data key="d2">75</data>
  <data key="d3">add</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="111">
  <data key="d0">UnknownType</data>
  <data key="d1">initialFrame</data>
  <data key="d2">75</data>
  <data key="d3">initialFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="112">
  <data key="d2">76</data>
  <data key="d3">XidCodec.encode(clientMessage, xid)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="113">
  <data key="d0">UnknownType</data>
  <data key="d1">XidCodec</data>
  <data key="d2">76</data>
  <data key="d3">XidCodec</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="114">
  <data key="d0">otherMethodCall</data>
  <data key="d1">encode</data>
  <data key="d2">76</data>
  <data key="d3">encode</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="115">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">76</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="116">
  <data key="d0">javax.transaction.xa.Xid</data>
  <data key="d1">xid</data>
  <data key="d2">76</data>
  <data key="d3">xid</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="117">
  <data key="d2">77</data>
  <data key="d3">return clientMessage;</data>
  <data key="d4">ReturnStmt</data>
  <data key="d5">BlockStmt</data>
</node>
<node id="118">
  <data key="d0">UnknownType</data>
  <data key="d1">clientMessage</data>
  <data key="d2">77</data>
  <data key="d3">clientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="119">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">compareClientMessages</data>
  <data key="d2">6455</data>
  <data key="d3">compareClientMessages</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="120">
  <data key="d2">6455</data>
  <data key="d3">ClientMessage binaryMessage</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="121">
  <data key="d7">private</data>
  <data key="d2">6455</data>
  <data key="d3">private void compareClientMessages(ClientMessage binaryMessage, ClientMessage encodedMessage) {
    ClientMessage.Frame binaryFrame, encodedFrame;
    ClientMessage.ForwardFrameIterator binaryFrameIterator = binaryMessage.frameIterator();
    ClientMessage.ForwardFrameIterator encodedFrameIterator = encodedMessage.frameIterator();
    assertTrue("Client message that is read from the binary file does not have any frames", binaryFrameIterator.hasNext());
    while (binaryFrameIterator.hasNext()) {
        binaryFrame = binaryFrameIterator.next();
        encodedFrame = encodedFrameIterator.next();
        assertNotNull("Encoded client message has less frames.", encodedFrame);
        if (binaryFrame.isEndFrame() &amp;&amp; !encodedFrame.isEndFrame()) {
            if (encodedFrame.isBeginFrame()) {
                HazelcastClientUtil.fastForwardToEndFrame(encodedFrameIterator);
            }
            encodedFrame = HazelcastClientUtil.fastForwardToEndFrame(encodedFrameIterator);
        }
        boolean isFinal = binaryFrameIterator.peekNext() == null;
        int flags = isFinal ? encodedFrame.flags | IS_FINAL_FLAG : encodedFrame.flags;
        assertArrayEquals("Frames have different contents", binaryFrame.content, Arrays.copyOf(encodedFrame.content, binaryFrame.content.length));
        assertEquals("Frames have different flags", binaryFrame.flags, flags);
    }
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="122">
  <data key="d2">6455</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="123">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6455</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="124">
  <data key="d2">6456</data>
  <data key="d3">ClientMessage.Frame binaryFrame, encodedFrame</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="125">
  <data key="d2">6456</data>
  <data key="d3">binaryFrame</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="126">
  <data key="d2">6455</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="127">
  <data key="d2">6455</data>
  <data key="d3">{
    ClientMessage.Frame binaryFrame, encodedFrame;
    ClientMessage.ForwardFrameIterator binaryFrameIterator = binaryMessage.frameIterator();
    ClientMessage.ForwardFrameIterator encodedFrameIterator = encodedMessage.frameIterator();
    assertTrue("Client message that is read from the binary file does not have any frames", binaryFrameIterator.hasNext());
    while (binaryFrameIterator.hasNext()) {
        binaryFrame = binaryFrameIterator.next();
        encodedFrame = encodedFrameIterator.next();
        assertNotNull("Encoded client message has less frames.", encodedFrame);
        if (binaryFrame.isEndFrame() &amp;&amp; !encodedFrame.isEndFrame()) {
            if (encodedFrame.isBeginFrame()) {
                HazelcastClientUtil.fastForwardToEndFrame(encodedFrameIterator);
            }
            encodedFrame = HazelcastClientUtil.fastForwardToEndFrame(encodedFrameIterator);
        }
        boolean isFinal = binaryFrameIterator.peekNext() == null;
        int flags = isFinal ? encodedFrame.flags | IS_FINAL_FLAG : encodedFrame.flags;
        assertArrayEquals("Frames have different contents", binaryFrame.content, Arrays.copyOf(encodedFrame.content, binaryFrame.content.length));
        assertEquals("Frames have different flags", binaryFrame.flags, flags);
    }
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="128">
  <data key="d2">6456</data>
  <data key="d3">ClientMessage.Frame</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="129">
  <data key="d0">UnknownType</data>
  <data key="d1">binaryMessage</data>
  <data key="d2">6455</data>
  <data key="d3">binaryMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="130">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6455</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="131">
  <data key="d0">UnknownType</data>
  <data key="d1">encodedMessage</data>
  <data key="d2">6455</data>
  <data key="d3">encodedMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="132">
  <data key="d2">6455</data>
  <data key="d3">ClientMessage encodedMessage</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="133">
  <data key="d2">6455</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="134">
  <data key="d2">6460</data>
  <data key="d3">binaryFrameIterator.hasNext()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="135">
  <data key="d0">UnknownType</data>
  <data key="d1">binaryFrameIterator</data>
  <data key="d2">6460</data>
  <data key="d3">binaryFrameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="136">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertTrue</data>
  <data key="d2">6460</data>
  <data key="d3">assertTrue</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="137">
  <data key="d1">Client message that is read from the binary file does not have any frames</data>
  <data key="d2">6460</data>
  <data key="d3">"Client message that is read from the binary file does not have any frames"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="138">
  <data key="d0">otherMethodCall</data>
  <data key="d1">hasNext</data>
  <data key="d2">6460</data>
  <data key="d3">hasNext</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="139">
  <data key="d2">6460</data>
  <data key="d3">assertTrue("Client message that is read from the binary file does not have any frames", binaryFrameIterator.hasNext())</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="140">
  <data key="d0">otherMethodCall</data>
  <data key="d1">frameIterator</data>
  <data key="d2">6458</data>
  <data key="d3">frameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="141">
  <data key="d2">6458</data>
  <data key="d3">binaryMessage.frameIterator()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="142">
  <data key="d0">UnknownType</data>
  <data key="d1">binaryMessage</data>
  <data key="d2">6458</data>
  <data key="d3">binaryMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="143">
  <data key="d2">6458</data>
  <data key="d3">binaryFrameIterator = binaryMessage.frameIterator()</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="144">
  <data key="d2">6458</data>
  <data key="d3">ClientMessage.ForwardFrameIterator</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="145">
  <data key="d2">6458</data>
  <data key="d3">ClientMessage.ForwardFrameIterator binaryFrameIterator = binaryMessage.frameIterator()</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="146">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ForwardFrameIterator</data>
  <data key="d2">6458</data>
  <data key="d3">ForwardFrameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="147">
  <data key="d0">UnknownType</data>
  <data key="d1">binaryFrameIterator</data>
  <data key="d2">6458</data>
  <data key="d3">binaryFrameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="148">
  <data key="d2">6458</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="149">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6458</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="150">
  <data key="d0">UnknownType</data>
  <data key="d1">encodedMessage</data>
  <data key="d2">6459</data>
  <data key="d3">encodedMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="151">
  <data key="d0">otherMethodCall</data>
  <data key="d1">frameIterator</data>
  <data key="d2">6459</data>
  <data key="d3">frameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="152">
  <data key="d2">6459</data>
  <data key="d3">ClientMessage.ForwardFrameIterator</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="153">
  <data key="d2">6459</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="154">
  <data key="d2">6459</data>
  <data key="d3">ClientMessage.ForwardFrameIterator encodedFrameIterator = encodedMessage.frameIterator()</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="155">
  <data key="d2">6459</data>
  <data key="d3">encodedFrameIterator = encodedMessage.frameIterator()</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="156">
  <data key="d0">UnknownType</data>
  <data key="d1">encodedFrameIterator</data>
  <data key="d2">6459</data>
  <data key="d3">encodedFrameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="157">
  <data key="d2">6459</data>
  <data key="d3">encodedMessage.frameIterator()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="158">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6459</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="159">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ForwardFrameIterator</data>
  <data key="d2">6459</data>
  <data key="d3">ForwardFrameIterator</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="160">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Frame</data>
  <data key="d2">6456</data>
  <data key="d3">Frame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="161">
  <data key="d0">UnknownType</data>
  <data key="d1">encodedFrame</data>
  <data key="d2">6456</data>
  <data key="d3">encodedFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="162">
  <data key="d2">6456</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="163">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6456</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="164">
  <data key="d2">6456</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="165">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">ClientMessage</data>
  <data key="d2">6456</data>
  <data key="d3">ClientMessage</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="166">
  <data key="d2">6456</data>
  <data key="d3">encodedFrame</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
</node>
<node id="167">
  <data key="d2">6456</data>
  <data key="d3">ClientMessage.Frame</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
</node>
<node id="168">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Frame</data>
  <data key="d2">6456</data>
  <data key="d3">Frame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="169">
  <data key="d0">UnknownType</data>
  <data key="d1">binaryFrame</data>
  <data key="d2">6456</data>
  <data key="d3">binaryFrame</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
</node>
<edge source="1" target="13">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="1" target="2">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="24">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="2" target="3">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="4" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="9">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="5" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="117">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="46" target="116">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="107">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="61">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="62">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="57" target="66">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="57" target="109">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="57" target="115">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="57" target="118">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="65">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="62" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="66">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="63" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="69">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="66" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="109">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="67" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="86">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="76">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="89">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="75" target="96">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="75" target="104">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="75" target="111">
  <data key="d8">LAST_LEXICAL_SCOPE_USE</data>
</edge>
<edge source="76" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="93">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="95">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="89" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="96">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="91" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="101">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="95" target="103">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="96" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="96" target="104">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="108">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="102" target="103">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="103" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="106">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="105">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="111">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="106" target="107">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="108" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="111">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="112">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="109" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="109" target="115">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="110" target="111">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="112" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="117">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="113" target="114">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="114" target="115">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="115" target="116">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="115" target="118">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="117" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="120">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="129">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="132">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="121" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="121" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="121" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="122" target="123">
  <data key="d8">AST</data>
</edge>
<edge source="122" target="129">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="124" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="125">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="145">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="124" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="169">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="166">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="126" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="126" target="132">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="127" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="154">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="164">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="169">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="129" target="142">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="130" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="131" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="131" target="133">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="131" target="150">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="137">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="134" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="147">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="135" target="138">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="137">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="139" target="154">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="140" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="140" target="142">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="141" target="142">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="147">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="143" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="144" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="144" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="144" target="147">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="145" target="154">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="146" target="148">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="148" target="149">
  <data key="d8">AST</data>
</edge>
<edge source="150" target="151">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="150" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="151" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="153">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="156">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="152" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="153" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="153" target="159">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="154" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="156" target="157">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="160" target="162">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="160" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="161" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="161" target="167">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="163">
  <data key="d8">AST</data>
</edge>
<edge source="162" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="168">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="166" target="167">
  <data key="d8">AST</data>
</edge>
</graph></graphml>