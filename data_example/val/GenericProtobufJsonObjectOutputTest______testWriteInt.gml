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
  <data key="d0">90</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">90</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d0">98</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d0">98</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">98</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d7">public</data>
  <data key="d0">103</data>
  <data key="d1">@Test
public void testWriteInt() throws IOException {
    int random = new Random().nextInt();
    this.genericProtobufObjectOutput.writeInt(random);
    this.flushToInput();
    assertThat(genericProtobufObjectInput.readInt(), is(random));
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">103</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d6">Test</data>
  <data key="d0">103</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">testWriteInt</data>
  <data key="d0">104</data>
  <data key="d1">testWriteInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d0">104</data>
  <data key="d1">IOException</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">IOException</data>
  <data key="d0">104</data>
  <data key="d1">IOException</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d0">104</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d0">104</data>
  <data key="d1">{
    int random = new Random().nextInt();
    this.genericProtobufObjectOutput.writeInt(random);
    this.flushToInput();
    assertThat(genericProtobufObjectInput.readInt(), is(random));
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d0">105</data>
  <data key="d1">int random = new Random().nextInt()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">105</data>
  <data key="d1">random = new Random().nextInt()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d6">int</data>
  <data key="d0">105</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d5">int</data>
  <data key="d6">random</data>
  <data key="d0">105</data>
  <data key="d1">random</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d0">105</data>
  <data key="d1">new Random().nextInt()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d0">105</data>
  <data key="d1">new Random()</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d0">105</data>
  <data key="d1">Random</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Random</data>
  <data key="d0">105</data>
  <data key="d1">Random</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d5">otherMethodCall</data>
  <data key="d6">nextInt</data>
  <data key="d0">105</data>
  <data key="d1">nextInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d0">106</data>
  <data key="d1">this.genericProtobufObjectOutput.writeInt(random)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d0">106</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d0">106</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">106</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d5">otherMethodCall</data>
  <data key="d6">writeInt</data>
  <data key="d0">106</data>
  <data key="d1">writeInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d5">int</data>
  <data key="d6">random</data>
  <data key="d0">106</data>
  <data key="d1">random</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d0">107</data>
  <data key="d1">this.flushToInput()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d0">107</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d5">otherMethodCall</data>
  <data key="d6">flushToInput</data>
  <data key="d0">107</data>
  <data key="d1">flushToInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d0">108</data>
  <data key="d1">assertThat(genericProtobufObjectInput.readInt(), is(random))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d0">108</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d0">108</data>
  <data key="d1">genericProtobufObjectInput.readInt()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectInput</data>
  <data key="d0">108</data>
  <data key="d1">genericProtobufObjectInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d5">otherMethodCall</data>
  <data key="d6">readInt</data>
  <data key="d0">108</data>
  <data key="d1">readInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d0">108</data>
  <data key="d1">is(random)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d5">otherMethodCall</data>
  <data key="d6">is</data>
  <data key="d0">108</data>
  <data key="d1">is</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d5">int</data>
  <data key="d6">random</data>
  <data key="d0">108</data>
  <data key="d1">random</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d0">74</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d0">74</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">74</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d0">47</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">AssignExpr</data>
  <data key="d4">true</data>
</node>
<node id="44">
  <data key="d0">47</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="45">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">47</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="46">
  <data key="d0">82</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="47">
  <data key="d0">82</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="48">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">82</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="49">
  <data key="d0">53</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="50">
  <data key="d0">53</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="51">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">53</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">true</data>
</node>
<node id="52">
  <data key="d0">90</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="53">
  <data key="d0">40</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">FieldDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="54">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">40</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="55">
  <data key="d0">182</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="56">
  <data key="d0">182</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="57">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">182</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="58">
  <data key="d0">186</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="59">
  <data key="d0">186</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="60">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">186</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="61">
  <data key="d0">190</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="62">
  <data key="d0">190</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="63">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">190</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="64">
  <data key="d0">143</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="65">
  <data key="d0">143</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="66">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">143</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="67">
  <data key="d0">90</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="68">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">90</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="69">
  <data key="d0">192</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="70">
  <data key="d0">192</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="71">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">192</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="72">
  <data key="d0">98</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="73">
  <data key="d0">98</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="74">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">98</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="75">
  <data key="d0">154</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="76">
  <data key="d0">154</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="77">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">154</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="78">
  <data key="d0">106</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="79">
  <data key="d0">106</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="80">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">106</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="81">
  <data key="d7">private</data>
  <data key="d0">200</data>
  <data key="d1">private void flushToInput() {
    this.genericProtobufObjectOutput.flushBuffer();
    this.byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    this.genericProtobufObjectInput = new GenericProtobufJsonObjectInput(byteArrayInputStream);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="82">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">flushToInput</data>
  <data key="d0">200</data>
  <data key="d1">flushToInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="83">
  <data key="d0">200</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="84">
  <data key="d0">200</data>
  <data key="d1">{
    this.genericProtobufObjectOutput.flushBuffer();
    this.byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    this.genericProtobufObjectInput = new GenericProtobufJsonObjectInput(byteArrayInputStream);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="85">
  <data key="d0">201</data>
  <data key="d1">this.genericProtobufObjectOutput.flushBuffer()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="86">
  <data key="d0">201</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="87">
  <data key="d0">201</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="88">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">201</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="89">
  <data key="d5">otherMethodCall</data>
  <data key="d6">flushBuffer</data>
  <data key="d0">201</data>
  <data key="d1">flushBuffer</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="90">
  <data key="d6">=</data>
  <data key="d0">202</data>
  <data key="d1">this.byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray())</data>
  <data key="d2">AssignExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="91">
  <data key="d0">202</data>
  <data key="d1">this.byteArrayInputStream</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="92">
  <data key="d0">202</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="93">
  <data key="d5">java.io.ByteArrayInputStream</data>
  <data key="d6">byteArrayInputStream</data>
  <data key="d0">202</data>
  <data key="d1">byteArrayInputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="94">
  <data key="d0">202</data>
  <data key="d1">new ByteArrayInputStream(byteArrayOutputStream.toByteArray())</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="95">
  <data key="d0">202</data>
  <data key="d1">ByteArrayInputStream</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="96">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ByteArrayInputStream</data>
  <data key="d0">202</data>
  <data key="d1">ByteArrayInputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="97">
  <data key="d0">202</data>
  <data key="d1">byteArrayOutputStream.toByteArray()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="98">
  <data key="d5">java.io.ByteArrayOutputStream</data>
  <data key="d6">byteArrayOutputStream</data>
  <data key="d0">202</data>
  <data key="d1">byteArrayOutputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="99">
  <data key="d5">otherMethodCall</data>
  <data key="d6">toByteArray</data>
  <data key="d0">202</data>
  <data key="d1">toByteArray</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="100">
  <data key="d6">=</data>
  <data key="d0">203</data>
  <data key="d1">this.genericProtobufObjectInput = new GenericProtobufJsonObjectInput(byteArrayInputStream)</data>
  <data key="d2">AssignExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="101">
  <data key="d0">203</data>
  <data key="d1">this.genericProtobufObjectInput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="102">
  <data key="d0">203</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="103">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectInput</data>
  <data key="d0">203</data>
  <data key="d1">genericProtobufObjectInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="104">
  <data key="d0">203</data>
  <data key="d1">new GenericProtobufJsonObjectInput(byteArrayInputStream)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="105">
  <data key="d0">203</data>
  <data key="d1">GenericProtobufJsonObjectInput</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="106">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">GenericProtobufJsonObjectInput</data>
  <data key="d0">203</data>
  <data key="d1">GenericProtobufJsonObjectInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="107">
  <data key="d5">java.io.ByteArrayInputStream</data>
  <data key="d6">byteArrayInputStream</data>
  <data key="d0">203</data>
  <data key="d1">byteArrayInputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="108">
  <data key="d0">162</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="109">
  <data key="d0">162</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="110">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">162</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="111">
  <data key="d0">114</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="112">
  <data key="d0">114</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="113">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">114</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="114">
  <data key="d0">173</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="115">
  <data key="d0">173</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="116">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">173</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="117">
  <data key="d0">123</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="118">
  <data key="d0">123</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="119">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">123</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="120">
  <data key="d0">74</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="121">
  <data key="d0">74</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="122">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">74</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="123">
  <data key="d0">42</data>
  <data key="d1">ByteArrayInputStream</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="124">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ByteArrayInputStream</data>
  <data key="d0">42</data>
  <data key="d1">ByteArrayInputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="125">
  <data key="d5">java.io.ByteArrayInputStream</data>
  <data key="d6">byteArrayInputStream</data>
  <data key="d0">42</data>
  <data key="d1">byteArrayInputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="126">
  <data key="d0">134</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="127">
  <data key="d0">134</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="128">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">134</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="129">
  <data key="d0">47</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="130">
  <data key="d0">47</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="131">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">47</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="132">
  <data key="d5">java.io.ByteArrayOutputStream</data>
  <data key="d6">byteArrayOutputStream</data>
  <data key="d0">47</data>
  <data key="d1">byteArrayOutputStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="133">
  <data key="d0">82</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="134">
  <data key="d0">82</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="135">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">82</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="136">
  <data key="d0">53</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="137">
  <data key="d0">53</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="138">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">53</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="139">
  <data key="d0">90</data>
  <data key="d1">this.genericProtobufObjectOutput</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="140">
  <data key="d0">40</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">FieldDeclaration</data>
</node>
<node id="141">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectOutput</data>
  <data key="d0">40</data>
  <data key="d1">genericProtobufObjectOutput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="142">
  <data key="d0">41</data>
  <data key="d1">genericProtobufObjectInput</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">FieldDeclaration</data>
</node>
<node id="143">
  <data key="d0">41</data>
  <data key="d1">GenericProtobufJsonObjectInput</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="144">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">GenericProtobufJsonObjectInput</data>
  <data key="d0">41</data>
  <data key="d1">GenericProtobufJsonObjectInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="145">
  <data key="d5">UnknownType</data>
  <data key="d6">genericProtobufObjectInput</data>
  <data key="d0">41</data>
  <data key="d1">genericProtobufObjectInput</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="146">
  <data key="d0">42</data>
  <data key="d1">byteArrayInputStream</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">FieldDeclaration</data>
</node>
<node id="147">
  <data key="d7">public</data>
  <data key="d0">376</data>
  <data key="d1">/**
 * Returns a pseudorandom {@code int} value between the specified
 * origin (inclusive) and the specified bound (exclusive).
 *
 * @param origin the least value returned
 * @param bound the upper bound (exclusive)
 * @return a pseudorandom {@code int} value between the origin
 *         (inclusive) and the bound (exclusive)
 * @throws IllegalArgumentException if {@code origin} is greater than
 *         or equal to {@code bound}
 */
public int nextInt(int origin, int bound) {
    if (origin &gt;= bound)
        throw new IllegalArgumentException(BadRange);
    return internalNextInt(origin, bound);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="148">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">nextInt</data>
  <data key="d0">376</data>
  <data key="d1">nextInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="149">
  <data key="d0">376</data>
  <data key="d1">int origin</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="150">
  <data key="d6">int</data>
  <data key="d0">376</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">Parameter</data>
</node>
<node id="151">
  <data key="d5">int</data>
  <data key="d6">origin</data>
  <data key="d0">376</data>
  <data key="d1">origin</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="152">
  <data key="d0">376</data>
  <data key="d1">int bound</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="153">
  <data key="d6">int</data>
  <data key="d0">376</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">Parameter</data>
</node>
<node id="154">
  <data key="d5">int</data>
  <data key="d6">bound</data>
  <data key="d0">376</data>
  <data key="d1">bound</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="155">
  <data key="d6">int</data>
  <data key="d0">376</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="156">
  <data key="d0">376</data>
  <data key="d1">{
    if (origin &gt;= bound)
        throw new IllegalArgumentException(BadRange);
    return internalNextInt(origin, bound);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="157">
  <data key="d5">int</data>
  <data key="d6">origin</data>
  <data key="d0">377</data>
  <data key="d1">origin</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="158">
  <data key="d5">int</data>
  <data key="d6">bound</data>
  <data key="d0">377</data>
  <data key="d1">bound</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="159">
  <data key="d0">379</data>
  <data key="d1">return internalNextInt(origin, bound);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="160">
  <data key="d0">379</data>
  <data key="d1">internalNextInt(origin, bound)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="161">
  <data key="d5">otherMethodCall</data>
  <data key="d6">internalNextInt</data>
  <data key="d0">379</data>
  <data key="d1">internalNextInt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="162">
  <data key="d5">int</data>
  <data key="d6">origin</data>
  <data key="d0">379</data>
  <data key="d1">origin</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="163">
  <data key="d5">int</data>
  <data key="d6">bound</data>
  <data key="d0">379</data>
  <data key="d1">bound</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="164">
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
<node id="165">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">TypeParameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="166">
  <data key="d5">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">TypeParameter</data>
</node>
<node id="167">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d0">31</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="168">
  <data key="d0">31</data>
  <data key="d1">String reason</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="169">
  <data key="d0">31</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="170">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d0">31</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="171">
  <data key="d5">java.lang.String</data>
  <data key="d6">reason</data>
  <data key="d0">31</data>
  <data key="d1">reason</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="172">
  <data key="d0">31</data>
  <data key="d1">T actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="173">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="174">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="175">
  <data key="d5">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d0">31</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="176">
  <data key="d0">31</data>
  <data key="d1">Matcher&lt;? super T&gt; matcher</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="177">
  <data key="d0">31</data>
  <data key="d1">Matcher&lt;? super T&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="178">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Matcher</data>
  <data key="d0">31</data>
  <data key="d1">Matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="179">
  <data key="d0">31</data>
  <data key="d1">? super T</data>
  <data key="d2">WildcardType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="180">
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">WildcardType</data>
</node>
<node id="181">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d0">31</data>
  <data key="d1">T</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="182">
  <data key="d5">UnknownType</data>
  <data key="d6">matcher</data>
  <data key="d0">31</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="183">
  <data key="d0">31</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="184">
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
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="2" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="52">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="3" target="24">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="4" target="5">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="6" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="12">
  <data key="d8">AST</data>
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
<edge source="10" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="147">
  <data key="d8">AST</data>
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
<edge source="17" target="28">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="17" target="39">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="18" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="39">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="29" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="164">
  <data key="d8">AST</data>
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
<edge source="34" target="37">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="49">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="40" target="46">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="53">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="43" target="49">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="52">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="54">
  <data key="d8">FIELD</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="114">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="55" target="58">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="56" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="58" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="61">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="69">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="62" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="63" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="64" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="126">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="64" target="75">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="65" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="67" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="68" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="86">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="70" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="139">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="72" target="78">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="73" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="75" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="108">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="76" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="111">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="81" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="90">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="90" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="100">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="91" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="146">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="91" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="98">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="93" target="125">
  <data key="d8">FIELD</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="97" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="100" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="142">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="101" target="104">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="102" target="103">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="103" target="107">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="103" target="145">
  <data key="d8">FIELD</data>
</edge>
<edge source="104" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="104" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="107">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="114">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="109" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="110" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="111" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="111" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="111" target="117">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="112" target="113">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="113" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="114" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="116">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="116" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="117" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="117" target="119">
  <data key="d8">AST</data>
</edge>
<edge source="117" target="126">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="118" target="119">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="136">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="120" target="133">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="121" target="122">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="123" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="125">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="123" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="126" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="126" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="128">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="128" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="129" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="140">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="129" target="136">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="130" target="131">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="131" target="132">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="131" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="139">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="134" target="135">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="135" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="136" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="136" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="138">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="138" target="141">
  <data key="d8">FIELD</data>
</edge>
<edge source="140" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="145">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="147" target="152">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="149">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="147" target="159">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="148" target="149">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="149" target="151">
  <data key="d8">AST</data>
</edge>
<edge source="149" target="150">
  <data key="d8">AST</data>
</edge>
<edge source="149" target="152">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="150" target="151">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="151" target="157">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="151" target="162">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="152" target="153">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="154">
  <data key="d8">AST</data>
</edge>
<edge source="152" target="155">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="153" target="154">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="154" target="158">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="154" target="163">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="155" target="156">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="156" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="157" target="158">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="157" target="162">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="158" target="163">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="159" target="160">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="162">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="163">
  <data key="d8">AST</data>
</edge>
<edge source="161" target="162">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="163">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="164" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="172">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="183">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="184">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="176">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="167">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="167" target="168">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="168" target="171">
  <data key="d8">AST</data>
</edge>
<edge source="168" target="169">
  <data key="d8">AST</data>
</edge>
<edge source="168" target="172">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="169" target="170">
  <data key="d8">AST</data>
</edge>
<edge source="169" target="171">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="172" target="173">
  <data key="d8">AST</data>
</edge>
<edge source="172" target="175">
  <data key="d8">AST</data>
</edge>
<edge source="172" target="176">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="173" target="174">
  <data key="d8">AST</data>
</edge>
<edge source="173" target="175">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="176" target="182">
  <data key="d8">AST</data>
</edge>
<edge source="176" target="177">
  <data key="d8">AST</data>
</edge>
<edge source="176" target="183">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="177" target="178">
  <data key="d8">AST</data>
</edge>
<edge source="177" target="179">
  <data key="d8">AST</data>
</edge>
<edge source="177" target="182">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="178" target="179">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="179" target="180">
  <data key="d8">AST</data>
</edge>
<edge source="180" target="181">
  <data key="d8">AST</data>
</edge>
<edge source="183" target="184">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>