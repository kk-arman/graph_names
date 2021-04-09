<?xml version='1.0' encoding='utf-8'?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd"><key id="d8" for="edge" attr.name="type" attr.type="string"/>
<key id="d7" for="node" attr.name="modifier" attr.type="string"/>
<key id="d6" for="node" attr.name="reference" attr.type="string"/>
<key id="d5" for="node" attr.name="identifier" attr.type="string"/>
<key id="d4" for="node" attr.name="is_test" attr.type="string"/>
<key id="d3" for="node" attr.name="parentType" attr.type="string"/>
<key id="d2" for="node" attr.name="type" attr.type="string"/>
<key id="d1" for="node" attr.name="text" attr.type="string"/>
<key id="d0" for="node" attr.name="lineID" attr.type="string"/>
<graph edgedefault="undirected"><node id="1">
  <data key="d0">107</data>
  <data key="d1">@Test
void parsesBytes() {
    assertThat(Size.parse("2B")).isEqualTo(Size.bytes(2));
    assertThat(Size.parse("1 byte")).isEqualTo(Size.bytes(1));
    assertThat(Size.parse("2 bytes")).isEqualTo(Size.bytes(2));
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d0">107</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d5">Test</data>
  <data key="d0">107</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">parsesBytes</data>
  <data key="d0">108</data>
  <data key="d1">parsesBytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d0">108</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d0">108</data>
  <data key="d1">{
    assertThat(Size.parse("2B")).isEqualTo(Size.bytes(2));
    assertThat(Size.parse("1 byte")).isEqualTo(Size.bytes(1));
    assertThat(Size.parse("2 bytes")).isEqualTo(Size.bytes(2));
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">109</data>
  <data key="d1">assertThat(Size.parse("2B")).isEqualTo(Size.bytes(2))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d0">109</data>
  <data key="d1">assertThat(Size.parse("2B"))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d6">otherMethodCall</data>
  <data key="d5">assertThat</data>
  <data key="d0">109</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d0">109</data>
  <data key="d1">Size.parse("2B")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">109</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parse</data>
  <data key="d0">109</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d5">2B</data>
  <data key="d0">109</data>
  <data key="d1">"2B"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d6">otherMethodCall</data>
  <data key="d5">isEqualTo</data>
  <data key="d0">110</data>
  <data key="d1">isEqualTo</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">110</data>
  <data key="d1">Size.bytes(2)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">110</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d6">otherMethodCall</data>
  <data key="d5">bytes</data>
  <data key="d0">110</data>
  <data key="d1">bytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d5">2</data>
  <data key="d0">110</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d0">112</data>
  <data key="d1">assertThat(Size.parse("1 byte")).isEqualTo(Size.bytes(1))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d0">112</data>
  <data key="d1">assertThat(Size.parse("1 byte"))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d6">otherMethodCall</data>
  <data key="d5">assertThat</data>
  <data key="d0">112</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d0">112</data>
  <data key="d1">Size.parse("1 byte")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">112</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parse</data>
  <data key="d0">112</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d5">1 byte</data>
  <data key="d0">112</data>
  <data key="d1">"1 byte"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d6">otherMethodCall</data>
  <data key="d5">isEqualTo</data>
  <data key="d0">113</data>
  <data key="d1">isEqualTo</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d0">113</data>
  <data key="d1">Size.bytes(1)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">113</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d6">otherMethodCall</data>
  <data key="d5">bytes</data>
  <data key="d0">113</data>
  <data key="d1">bytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d5">1</data>
  <data key="d0">113</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d0">115</data>
  <data key="d1">assertThat(Size.parse("2 bytes")).isEqualTo(Size.bytes(2))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d0">115</data>
  <data key="d1">assertThat(Size.parse("2 bytes"))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d6">otherMethodCall</data>
  <data key="d5">assertThat</data>
  <data key="d0">115</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d0">115</data>
  <data key="d1">Size.parse("2 bytes")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">115</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parse</data>
  <data key="d0">115</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d5">2 bytes</data>
  <data key="d0">115</data>
  <data key="d1">"2 bytes"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d6">otherMethodCall</data>
  <data key="d5">isEqualTo</data>
  <data key="d0">116</data>
  <data key="d1">isEqualTo</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d0">116</data>
  <data key="d1">Size.bytes(2)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d6">UnknownType</data>
  <data key="d5">Size</data>
  <data key="d0">116</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d6">otherMethodCall</data>
  <data key="d5">bytes</data>
  <data key="d0">116</data>
  <data key="d1">bytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d5">2</data>
  <data key="d0">116</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">83</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="44">
  <data key="d0">83</data>
  <data key="d1">null</data>
  <data key="d2">NullLiteralExpr</data>
  <data key="d3">BinaryExpr</data>
</node>
<node id="45">
  <data key="d0">87</data>
  <data key="d1">return new Size(count, unit);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="46">
  <data key="d0">87</data>
  <data key="d1">new Size(count, unit)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="47">
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="48">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="49">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">87</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="50">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">87</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="51">
  <data key="d7">public,static</data>
  <data key="d0">74</data>
  <data key="d1">@JsonCreator
public static Size parse(String size) {
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="52">
  <data key="d0">74</data>
  <data key="d1">@JsonCreator</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="53">
  <data key="d5">JsonCreator</data>
  <data key="d0">74</data>
  <data key="d1">JsonCreator</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="54">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">parse</data>
  <data key="d0">75</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="55">
  <data key="d0">75</data>
  <data key="d1">String size</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="56">
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="57">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">String</data>
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="58">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">75</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="59">
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="60">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="61">
  <data key="d0">75</data>
  <data key="d1">{
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="62">
  <data key="d7">final</data>
  <data key="d0">76</data>
  <data key="d1">final Matcher matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="63">
  <data key="d0">76</data>
  <data key="d1">matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="64">
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="65">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Matcher</data>
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="66">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="67">
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN.matcher(size)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="68">
  <data key="d6">java.util.regex.Pattern</data>
  <data key="d5">SIZE_PATTERN</data>
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="69">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="70">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">76</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="71">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">77</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="72">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matches</data>
  <data key="d0">77</data>
  <data key="d1">matches</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="73">
  <data key="d7">final</data>
  <data key="d0">81</data>
  <data key="d1">final long count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="74">
  <data key="d0">81</data>
  <data key="d1">count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="75">
  <data key="d5">long</data>
  <data key="d0">81</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="76">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">81</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="77">
  <data key="d0">81</data>
  <data key="d1">Long.parseLong(matcher.group(1))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="78">
  <data key="d6">UnknownType</data>
  <data key="d5">Long</data>
  <data key="d0">81</data>
  <data key="d1">Long</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="79">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parseLong</data>
  <data key="d0">81</data>
  <data key="d1">parseLong</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="80">
  <data key="d0">81</data>
  <data key="d1">matcher.group(1)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="81">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">81</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="82">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">81</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="83">
  <data key="d5">1</data>
  <data key="d0">81</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="84">
  <data key="d7">final</data>
  <data key="d0">82</data>
  <data key="d1">final SizeUnit unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="85">
  <data key="d0">82</data>
  <data key="d1">unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="86">
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="87">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="88">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">82</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="89">
  <data key="d0">82</data>
  <data key="d1">SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="90">
  <data key="d6">UnknownType</data>
  <data key="d5">SUFFIXES</data>
  <data key="d0">82</data>
  <data key="d1">SUFFIXES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="91">
  <data key="d6">otherMethodCall</data>
  <data key="d5">get</data>
  <data key="d0">82</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="92">
  <data key="d0">82</data>
  <data key="d1">matcher.group(2)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="93">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">82</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="94">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">82</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="95">
  <data key="d5">2</data>
  <data key="d0">82</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="96">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">458</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="97">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">458</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="98">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">458</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="99">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">458</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="100">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">458</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="101">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">458</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="102">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="103">
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="104">
  <data key="d0">458</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="105">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="106">
  <data key="d5">org</data>
  <data key="d0">456</data>
  <data key="d1">org</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="107">
  <data key="d5">assertj</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="108">
  <data key="d5">core</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="109">
  <data key="d5">util</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="110">
  <data key="d5">CheckReturnValue</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="111">
  <data key="d0">456</data>
  <data key="d1">@org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="112">
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
<node id="113">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="114">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="115">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">assertThat</data>
  <data key="d0">457</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="116">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntent</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="117">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="118">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="119">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="120">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="121">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="122">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="123">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="124">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="125">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="126">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="127">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="128">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="129">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="130">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="131">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="132">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="133">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="134">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="135">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="136">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">457</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="137">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="138">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="139">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="140">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="141">
  <data key="d0">458</data>
  <data key="d1">new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="142">
  <data key="d0">458</data>
  <data key="d1">return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="143">
  <data key="d0">457</data>
  <data key="d1">{
    return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="144">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="145">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="146">
  <data key="d7">public,static</data>
  <data key="d0">70</data>
  <data key="d1">public static Size terabytes(long count) {
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="147">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">terabytes</data>
  <data key="d0">70</data>
  <data key="d1">terabytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="148">
  <data key="d0">70</data>
  <data key="d1">long count</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="149">
  <data key="d5">long</data>
  <data key="d0">70</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">Parameter</data>
</node>
<node id="150">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">70</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="151">
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="152">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="153">
  <data key="d0">70</data>
  <data key="d1">{
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="154">
  <data key="d0">71</data>
  <data key="d1">return new Size(count, SizeUnit.TERABYTES);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="155">
  <data key="d0">71</data>
  <data key="d1">new Size(count, SizeUnit.TERABYTES)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="156">
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="157">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="158">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">71</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="159">
  <data key="d0">71</data>
  <data key="d1">SizeUnit.TERABYTES</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="160">
  <data key="d6">UnknownType</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">71</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="161">
  <data key="d6">UnknownType</data>
  <data key="d5">TERABYTES</data>
  <data key="d0">71</data>
  <data key="d1">TERABYTES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="162">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">83</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="163">
  <data key="d0">83</data>
  <data key="d1">null</data>
  <data key="d2">NullLiteralExpr</data>
  <data key="d3">BinaryExpr</data>
</node>
<node id="164">
  <data key="d0">87</data>
  <data key="d1">return new Size(count, unit);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="165">
  <data key="d0">87</data>
  <data key="d1">new Size(count, unit)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="166">
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="167">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="168">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">87</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="169">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">87</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="170">
  <data key="d7">public,static</data>
  <data key="d0">74</data>
  <data key="d1">@JsonCreator
public static Size parse(String size) {
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="171">
  <data key="d0">74</data>
  <data key="d1">@JsonCreator</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="172">
  <data key="d5">JsonCreator</data>
  <data key="d0">74</data>
  <data key="d1">JsonCreator</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="173">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">parse</data>
  <data key="d0">75</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="174">
  <data key="d0">75</data>
  <data key="d1">String size</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="175">
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="176">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">String</data>
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="177">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">75</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="178">
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="179">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="180">
  <data key="d0">75</data>
  <data key="d1">{
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="181">
  <data key="d7">final</data>
  <data key="d0">76</data>
  <data key="d1">final Matcher matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="182">
  <data key="d0">76</data>
  <data key="d1">matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="183">
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="184">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Matcher</data>
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="185">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="186">
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN.matcher(size)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="187">
  <data key="d6">java.util.regex.Pattern</data>
  <data key="d5">SIZE_PATTERN</data>
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="188">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="189">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">76</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="190">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">77</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="191">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matches</data>
  <data key="d0">77</data>
  <data key="d1">matches</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="192">
  <data key="d7">final</data>
  <data key="d0">81</data>
  <data key="d1">final long count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="193">
  <data key="d0">81</data>
  <data key="d1">count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="194">
  <data key="d5">long</data>
  <data key="d0">81</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="195">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">81</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="196">
  <data key="d0">81</data>
  <data key="d1">Long.parseLong(matcher.group(1))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="197">
  <data key="d6">UnknownType</data>
  <data key="d5">Long</data>
  <data key="d0">81</data>
  <data key="d1">Long</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="198">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parseLong</data>
  <data key="d0">81</data>
  <data key="d1">parseLong</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="199">
  <data key="d0">81</data>
  <data key="d1">matcher.group(1)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="200">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">81</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="201">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">81</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="202">
  <data key="d5">1</data>
  <data key="d0">81</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="203">
  <data key="d7">final</data>
  <data key="d0">82</data>
  <data key="d1">final SizeUnit unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="204">
  <data key="d0">82</data>
  <data key="d1">unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="205">
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="206">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="207">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">82</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="208">
  <data key="d0">82</data>
  <data key="d1">SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="209">
  <data key="d6">UnknownType</data>
  <data key="d5">SUFFIXES</data>
  <data key="d0">82</data>
  <data key="d1">SUFFIXES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="210">
  <data key="d6">otherMethodCall</data>
  <data key="d5">get</data>
  <data key="d0">82</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="211">
  <data key="d0">82</data>
  <data key="d1">matcher.group(2)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="212">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">82</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="213">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">82</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="214">
  <data key="d5">2</data>
  <data key="d0">82</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="215">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">458</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="216">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">458</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="217">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">458</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="218">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">458</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="219">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">458</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="220">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">458</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="221">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="222">
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="223">
  <data key="d0">458</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="224">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="225">
  <data key="d5">org</data>
  <data key="d0">456</data>
  <data key="d1">org</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="226">
  <data key="d5">assertj</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="227">
  <data key="d5">core</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="228">
  <data key="d5">util</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="229">
  <data key="d5">CheckReturnValue</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="230">
  <data key="d0">456</data>
  <data key="d1">@org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="231">
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
<node id="232">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="233">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="234">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">assertThat</data>
  <data key="d0">457</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="235">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntent</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="236">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="237">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="238">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="239">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="240">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="241">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="242">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="243">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="244">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="245">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="246">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="247">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="248">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="249">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="250">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="251">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="252">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="253">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="254">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="255">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">457</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="256">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="257">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="258">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="259">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="260">
  <data key="d0">458</data>
  <data key="d1">new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="261">
  <data key="d0">458</data>
  <data key="d1">return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="262">
  <data key="d0">457</data>
  <data key="d1">{
    return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="263">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="264">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="265">
  <data key="d7">public,static</data>
  <data key="d0">70</data>
  <data key="d1">public static Size terabytes(long count) {
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="266">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">terabytes</data>
  <data key="d0">70</data>
  <data key="d1">terabytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="267">
  <data key="d0">70</data>
  <data key="d1">long count</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="268">
  <data key="d5">long</data>
  <data key="d0">70</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">Parameter</data>
</node>
<node id="269">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">70</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="270">
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="271">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="272">
  <data key="d0">70</data>
  <data key="d1">{
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="273">
  <data key="d0">71</data>
  <data key="d1">return new Size(count, SizeUnit.TERABYTES);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="274">
  <data key="d0">71</data>
  <data key="d1">new Size(count, SizeUnit.TERABYTES)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="275">
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="276">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="277">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">71</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="278">
  <data key="d0">71</data>
  <data key="d1">SizeUnit.TERABYTES</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="279">
  <data key="d6">UnknownType</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">71</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="280">
  <data key="d6">UnknownType</data>
  <data key="d5">TERABYTES</data>
  <data key="d0">71</data>
  <data key="d1">TERABYTES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="281">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">83</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="282">
  <data key="d0">83</data>
  <data key="d1">null</data>
  <data key="d2">NullLiteralExpr</data>
  <data key="d3">BinaryExpr</data>
</node>
<node id="283">
  <data key="d0">87</data>
  <data key="d1">return new Size(count, unit);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="284">
  <data key="d0">87</data>
  <data key="d1">new Size(count, unit)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="285">
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="286">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">87</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="287">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">87</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="288">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">87</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="289">
  <data key="d7">public,static</data>
  <data key="d0">74</data>
  <data key="d1">@JsonCreator
public static Size parse(String size) {
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="290">
  <data key="d0">74</data>
  <data key="d1">@JsonCreator</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="291">
  <data key="d5">JsonCreator</data>
  <data key="d0">74</data>
  <data key="d1">JsonCreator</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="292">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">parse</data>
  <data key="d0">75</data>
  <data key="d1">parse</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="293">
  <data key="d0">75</data>
  <data key="d1">String size</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="294">
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="295">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">String</data>
  <data key="d0">75</data>
  <data key="d1">String</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="296">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">75</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="297">
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="298">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">75</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="299">
  <data key="d0">75</data>
  <data key="d1">{
    final Matcher matcher = SIZE_PATTERN.matcher(size);
    if (!matcher.matches()) {
        throw new IllegalArgumentException("Invalid size: " + size);
    }
    final long count = Long.parseLong(matcher.group(1));
    final SizeUnit unit = SUFFIXES.get(matcher.group(2));
    if (unit == null) {
        throw new IllegalArgumentException("Invalid size: " + size + ". Wrong size unit");
    }
    return new Size(count, unit);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="300">
  <data key="d7">final</data>
  <data key="d0">76</data>
  <data key="d1">final Matcher matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="301">
  <data key="d0">76</data>
  <data key="d1">matcher = SIZE_PATTERN.matcher(size)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="302">
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="303">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Matcher</data>
  <data key="d0">76</data>
  <data key="d1">Matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="304">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="305">
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN.matcher(size)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="306">
  <data key="d6">java.util.regex.Pattern</data>
  <data key="d5">SIZE_PATTERN</data>
  <data key="d0">76</data>
  <data key="d1">SIZE_PATTERN</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="307">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matcher</data>
  <data key="d0">76</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="308">
  <data key="d6">java.lang.String</data>
  <data key="d5">size</data>
  <data key="d0">76</data>
  <data key="d1">size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="309">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">77</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="310">
  <data key="d6">otherMethodCall</data>
  <data key="d5">matches</data>
  <data key="d0">77</data>
  <data key="d1">matches</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="311">
  <data key="d7">final</data>
  <data key="d0">81</data>
  <data key="d1">final long count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="312">
  <data key="d0">81</data>
  <data key="d1">count = Long.parseLong(matcher.group(1))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="313">
  <data key="d5">long</data>
  <data key="d0">81</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="314">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">81</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="315">
  <data key="d0">81</data>
  <data key="d1">Long.parseLong(matcher.group(1))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="316">
  <data key="d6">UnknownType</data>
  <data key="d5">Long</data>
  <data key="d0">81</data>
  <data key="d1">Long</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="317">
  <data key="d6">otherMethodCall</data>
  <data key="d5">parseLong</data>
  <data key="d0">81</data>
  <data key="d1">parseLong</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="318">
  <data key="d0">81</data>
  <data key="d1">matcher.group(1)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="319">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">81</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="320">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">81</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="321">
  <data key="d5">1</data>
  <data key="d0">81</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="322">
  <data key="d7">final</data>
  <data key="d0">82</data>
  <data key="d1">final SizeUnit unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="323">
  <data key="d0">82</data>
  <data key="d1">unit = SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
</node>
<node id="324">
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="325">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">82</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="326">
  <data key="d6">UnknownType</data>
  <data key="d5">unit</data>
  <data key="d0">82</data>
  <data key="d1">unit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="327">
  <data key="d0">82</data>
  <data key="d1">SUFFIXES.get(matcher.group(2))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="328">
  <data key="d6">UnknownType</data>
  <data key="d5">SUFFIXES</data>
  <data key="d0">82</data>
  <data key="d1">SUFFIXES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="329">
  <data key="d6">otherMethodCall</data>
  <data key="d5">get</data>
  <data key="d0">82</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="330">
  <data key="d0">82</data>
  <data key="d1">matcher.group(2)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="331">
  <data key="d6">java.util.regex.Matcher</data>
  <data key="d5">matcher</data>
  <data key="d0">82</data>
  <data key="d1">matcher</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="332">
  <data key="d6">otherMethodCall</data>
  <data key="d5">group</data>
  <data key="d0">82</data>
  <data key="d1">group</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="333">
  <data key="d5">2</data>
  <data key="d0">82</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
</node>
<node id="334">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">458</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="335">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">458</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="336">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">458</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="337">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">458</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="338">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">458</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="339">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">458</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="340">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="341">
  <data key="d0">458</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="342">
  <data key="d0">458</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="343">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="344">
  <data key="d5">org</data>
  <data key="d0">456</data>
  <data key="d1">org</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="345">
  <data key="d5">assertj</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="346">
  <data key="d5">core</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="347">
  <data key="d5">util</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util</data>
  <data key="d2">Name</data>
  <data key="d3">Name</data>
</node>
<node id="348">
  <data key="d5">CheckReturnValue</data>
  <data key="d0">456</data>
  <data key="d1">org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
</node>
<node id="349">
  <data key="d0">456</data>
  <data key="d1">@org.assertj.core.util.CheckReturnValue</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="350">
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
<node id="351">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="352">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntent actual</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="353">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">assertThat</data>
  <data key="d0">457</data>
  <data key="d1">assertThat</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="354">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntent</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="355">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="356">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="357">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="358">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="359">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="360">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="361">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="362">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="363">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="364">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="365">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">record</data>
  <data key="d0">457</data>
  <data key="d1">record</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="366">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">protocol</data>
  <data key="d0">457</data>
  <data key="d1">protocol</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="367">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">io</data>
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="368">
  <data key="d0">457</data>
  <data key="d1">io</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="369">
  <data key="d0">457</data>
  <data key="d1">io.zeebe</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="370">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="371">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="372">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="373">
  <data key="d0">457</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="374">
  <data key="d6">UnknownType</data>
  <data key="d5">actual</data>
  <data key="d0">457</data>
  <data key="d1">actual</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="375">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">zeebe</data>
  <data key="d0">457</data>
  <data key="d1">zeebe</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="376">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="377">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="378">
  <data key="d0">458</data>
  <data key="d1">io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="379">
  <data key="d0">458</data>
  <data key="d1">new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="380">
  <data key="d0">458</data>
  <data key="d1">return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="381">
  <data key="d0">457</data>
  <data key="d1">{
    return new io.zeebe.protocol.record.intent.WorkflowInstanceRelatedIntentAssert(actual);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="382">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d0">457</data>
  <data key="d1">WorkflowInstanceRelatedIntentAssert</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="383">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">intent</data>
  <data key="d0">457</data>
  <data key="d1">intent</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="384">
  <data key="d7">public,static</data>
  <data key="d0">70</data>
  <data key="d1">public static Size terabytes(long count) {
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="385">
  <data key="d6">userDefinedMethodName</data>
  <data key="d5">terabytes</data>
  <data key="d0">70</data>
  <data key="d1">terabytes</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="386">
  <data key="d0">70</data>
  <data key="d1">long count</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="387">
  <data key="d5">long</data>
  <data key="d0">70</data>
  <data key="d1">long</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">Parameter</data>
</node>
<node id="388">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">70</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="389">
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="390">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">70</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="391">
  <data key="d0">70</data>
  <data key="d1">{
    return new Size(count, SizeUnit.TERABYTES);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="392">
  <data key="d0">71</data>
  <data key="d1">return new Size(count, SizeUnit.TERABYTES);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="393">
  <data key="d0">71</data>
  <data key="d1">new Size(count, SizeUnit.TERABYTES)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="394">
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="395">
  <data key="d6">nonQualifiedClassName</data>
  <data key="d5">Size</data>
  <data key="d0">71</data>
  <data key="d1">Size</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="396">
  <data key="d6">long</data>
  <data key="d5">count</data>
  <data key="d0">71</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="397">
  <data key="d0">71</data>
  <data key="d1">SizeUnit.TERABYTES</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="398">
  <data key="d6">UnknownType</data>
  <data key="d5">SizeUnit</data>
  <data key="d0">71</data>
  <data key="d1">SizeUnit</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="399">
  <data key="d6">UnknownType</data>
  <data key="d5">TERABYTES</data>
  <data key="d0">71</data>
  <data key="d1">TERABYTES</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
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
<edge source="6" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="14">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="170">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="231">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="265">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="289">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="350">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="384">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="19">
  <data key="d8">CONTROL_FLOW</data>
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
<edge source="19" target="26">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="19" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="38">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="38">
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
<edge source="34" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
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
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="88">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="43" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="50">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="51">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="45" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="76">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="49" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="88">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="51" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="54">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="55" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="70">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="59" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="69">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="66" target="71">
  <data key="d8">LAST_WRITE</data>
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
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="71">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="81">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="71" target="93">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="73" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="84">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="74" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="93">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="92">
  <data key="d8">AST</data>
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
<edge source="91" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="96" target="136">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="96" target="140">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="96" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="139">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="97" target="140">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="138">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="98" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="99" target="105">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="104">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="100" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="103">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="101" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="104" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="109" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="110" target="111">
  <data key="d8">AST</data>
</edge>
<edge source="111" target="115">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="111" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="112" target="142">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="113" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="113" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="113" target="136">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="113" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="136">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="135">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="114" target="115">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="116" target="124">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="117" target="121">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="117" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="118" target="120">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="118" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="120">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="121" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="122" target="126">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="123">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="125">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="123" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="124" target="125">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="132">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="127" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="131">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="128" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="129" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="130" target="137">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="130" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="131" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="131" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="145">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="144">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="134" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="143">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="138" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="139" target="140">
  <data key="d8">AST</data>
</edge>
<edge source="140" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="142">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="151">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="153">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="154">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="147" target="148">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="148" target="149">
  <data key="d8">AST</data>
</edge>
<edge source="148" target="150">
  <data key="d8">AST</data>
</edge>
<edge source="148" target="151">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="149" target="150">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="150" target="158">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="151" target="152">
  <data key="d8">AST</data>
</edge>
<edge source="151" target="153">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="153" target="154">
  <data key="d8">AST</data>
</edge>
<edge source="154" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="156" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="156" target="158">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="158" target="159">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="159" target="160">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="161">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="207">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="162" target="163">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="169">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="164" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="164" target="170">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="164" target="180">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="169">
  <data key="d8">AST</data>
</edge>
<edge source="165" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="166" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="166" target="168">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="168" target="195">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="168" target="169">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="169" target="207">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="170" target="173">
  <data key="d8">AST</data>
</edge>
<edge source="170" target="180">
  <data key="d8">AST</data>
</edge>
<edge source="170" target="174">
  <data key="d8">AST</data>
</edge>
<edge source="170" target="171">
  <data key="d8">AST</data>
</edge>
<edge source="170" target="178">
  <data key="d8">AST</data>
</edge>
<edge source="171" target="172">
  <data key="d8">AST</data>
</edge>
<edge source="171" target="173">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="173" target="174">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="174" target="175">
  <data key="d8">AST</data>
</edge>
<edge source="174" target="177">
  <data key="d8">AST</data>
</edge>
<edge source="174" target="178">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="175" target="176">
  <data key="d8">AST</data>
</edge>
<edge source="175" target="177">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="177" target="189">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="178" target="179">
  <data key="d8">AST</data>
</edge>
<edge source="178" target="180">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="180" target="181">
  <data key="d8">AST</data>
</edge>
<edge source="180" target="203">
  <data key="d8">AST</data>
</edge>
<edge source="180" target="192">
  <data key="d8">AST</data>
</edge>
<edge source="181" target="182">
  <data key="d8">AST</data>
</edge>
<edge source="182" target="183">
  <data key="d8">AST</data>
</edge>
<edge source="182" target="185">
  <data key="d8">AST</data>
</edge>
<edge source="182" target="186">
  <data key="d8">AST</data>
</edge>
<edge source="183" target="184">
  <data key="d8">AST</data>
</edge>
<edge source="183" target="185">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="185" target="186">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="185" target="188">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="185" target="190">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="186" target="187">
  <data key="d8">AST</data>
</edge>
<edge source="186" target="188">
  <data key="d8">AST</data>
</edge>
<edge source="186" target="189">
  <data key="d8">AST</data>
</edge>
<edge source="187" target="188">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="188" target="189">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="188" target="190">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="190" target="191">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="190" target="200">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="190" target="212">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="192" target="193">
  <data key="d8">AST</data>
</edge>
<edge source="192" target="203">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="193" target="194">
  <data key="d8">AST</data>
</edge>
<edge source="193" target="195">
  <data key="d8">AST</data>
</edge>
<edge source="193" target="196">
  <data key="d8">AST</data>
</edge>
<edge source="194" target="195">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="195" target="196">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="196" target="197">
  <data key="d8">AST</data>
</edge>
<edge source="196" target="198">
  <data key="d8">AST</data>
</edge>
<edge source="196" target="199">
  <data key="d8">AST</data>
</edge>
<edge source="197" target="198">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="198" target="199">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="199" target="201">
  <data key="d8">AST</data>
</edge>
<edge source="199" target="202">
  <data key="d8">AST</data>
</edge>
<edge source="199" target="200">
  <data key="d8">AST</data>
</edge>
<edge source="200" target="201">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="200" target="212">
  <data key="d8">LAST_READ</data>
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
<edge source="204" target="207">
  <data key="d8">AST</data>
</edge>
<edge source="204" target="208">
  <data key="d8">AST</data>
</edge>
<edge source="205" target="206">
  <data key="d8">AST</data>
</edge>
<edge source="205" target="207">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="207" target="208">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="208" target="211">
  <data key="d8">AST</data>
</edge>
<edge source="208" target="209">
  <data key="d8">AST</data>
</edge>
<edge source="208" target="210">
  <data key="d8">AST</data>
</edge>
<edge source="209" target="210">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="210" target="211">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="211" target="212">
  <data key="d8">AST</data>
</edge>
<edge source="211" target="213">
  <data key="d8">AST</data>
</edge>
<edge source="211" target="214">
  <data key="d8">AST</data>
</edge>
<edge source="212" target="213">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="213" target="214">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="215" target="255">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="215" target="259">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="215" target="260">
  <data key="d8">AST</data>
</edge>
<edge source="216" target="258">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="216" target="259">
  <data key="d8">AST</data>
</edge>
<edge source="217" target="257">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="217" target="258">
  <data key="d8">AST</data>
</edge>
<edge source="218" target="224">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="218" target="257">
  <data key="d8">AST</data>
</edge>
<edge source="219" target="223">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="219" target="224">
  <data key="d8">AST</data>
</edge>
<edge source="220" target="222">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="220" target="223">
  <data key="d8">AST</data>
</edge>
<edge source="221" target="222">
  <data key="d8">AST</data>
</edge>
<edge source="222" target="223">
  <data key="d8">AST</data>
</edge>
<edge source="223" target="224">
  <data key="d8">AST</data>
</edge>
<edge source="224" target="257">
  <data key="d8">AST</data>
</edge>
<edge source="225" target="226">
  <data key="d8">AST</data>
</edge>
<edge source="226" target="227">
  <data key="d8">AST</data>
</edge>
<edge source="227" target="228">
  <data key="d8">AST</data>
</edge>
<edge source="228" target="229">
  <data key="d8">AST</data>
</edge>
<edge source="229" target="230">
  <data key="d8">AST</data>
</edge>
<edge source="230" target="234">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="230" target="231">
  <data key="d8">AST</data>
</edge>
<edge source="231" target="234">
  <data key="d8">AST</data>
</edge>
<edge source="231" target="262">
  <data key="d8">AST</data>
</edge>
<edge source="231" target="233">
  <data key="d8">AST</data>
</edge>
<edge source="231" target="254">
  <data key="d8">AST</data>
</edge>
<edge source="231" target="261">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="232" target="235">
  <data key="d8">AST</data>
</edge>
<edge source="232" target="243">
  <data key="d8">AST</data>
</edge>
<edge source="232" target="255">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="232" target="233">
  <data key="d8">AST</data>
</edge>
<edge source="233" target="255">
  <data key="d8">AST</data>
</edge>
<edge source="233" target="254">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="233" target="234">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="235" target="243">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="236" target="240">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="236" target="241">
  <data key="d8">AST</data>
</edge>
<edge source="237" target="239">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="237" target="240">
  <data key="d8">AST</data>
</edge>
<edge source="238" target="239">
  <data key="d8">AST</data>
</edge>
<edge source="239" target="240">
  <data key="d8">AST</data>
</edge>
<edge source="240" target="241">
  <data key="d8">AST</data>
</edge>
<edge source="241" target="245">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="241" target="242">
  <data key="d8">AST</data>
</edge>
<edge source="242" target="245">
  <data key="d8">AST</data>
</edge>
<edge source="242" target="244">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="242" target="243">
  <data key="d8">AST</data>
</edge>
<edge source="243" target="244">
  <data key="d8">AST</data>
</edge>
<edge source="246" target="251">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="246" target="252">
  <data key="d8">AST</data>
</edge>
<edge source="247" target="250">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="247" target="251">
  <data key="d8">AST</data>
</edge>
<edge source="248" target="249">
  <data key="d8">AST</data>
</edge>
<edge source="249" target="256">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="249" target="250">
  <data key="d8">AST</data>
</edge>
<edge source="250" target="256">
  <data key="d8">AST</data>
</edge>
<edge source="250" target="251">
  <data key="d8">AST</data>
</edge>
<edge source="251" target="252">
  <data key="d8">AST</data>
</edge>
<edge source="252" target="264">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="252" target="253">
  <data key="d8">AST</data>
</edge>
<edge source="253" target="264">
  <data key="d8">AST</data>
</edge>
<edge source="253" target="263">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="253" target="254">
  <data key="d8">AST</data>
</edge>
<edge source="254" target="263">
  <data key="d8">AST</data>
</edge>
<edge source="254" target="262">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="257" target="258">
  <data key="d8">AST</data>
</edge>
<edge source="258" target="259">
  <data key="d8">AST</data>
</edge>
<edge source="259" target="260">
  <data key="d8">AST</data>
</edge>
<edge source="260" target="261">
  <data key="d8">AST</data>
</edge>
<edge source="261" target="262">
  <data key="d8">AST</data>
</edge>
<edge source="265" target="267">
  <data key="d8">AST</data>
</edge>
<edge source="265" target="270">
  <data key="d8">AST</data>
</edge>
<edge source="265" target="272">
  <data key="d8">AST</data>
</edge>
<edge source="265" target="266">
  <data key="d8">AST</data>
</edge>
<edge source="265" target="273">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="266" target="267">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="267" target="268">
  <data key="d8">AST</data>
</edge>
<edge source="267" target="269">
  <data key="d8">AST</data>
</edge>
<edge source="267" target="270">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="268" target="269">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="269" target="277">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="270" target="271">
  <data key="d8">AST</data>
</edge>
<edge source="270" target="272">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="272" target="273">
  <data key="d8">AST</data>
</edge>
<edge source="273" target="274">
  <data key="d8">AST</data>
</edge>
<edge source="274" target="278">
  <data key="d8">AST</data>
</edge>
<edge source="274" target="275">
  <data key="d8">AST</data>
</edge>
<edge source="274" target="277">
  <data key="d8">AST</data>
</edge>
<edge source="275" target="276">
  <data key="d8">AST</data>
</edge>
<edge source="275" target="277">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="277" target="278">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="278" target="279">
  <data key="d8">AST</data>
</edge>
<edge source="278" target="280">
  <data key="d8">AST</data>
</edge>
<edge source="279" target="280">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="281" target="326">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="281" target="282">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="281" target="288">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="283" target="284">
  <data key="d8">AST</data>
</edge>
<edge source="283" target="289">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="283" target="299">
  <data key="d8">AST</data>
</edge>
<edge source="284" target="287">
  <data key="d8">AST</data>
</edge>
<edge source="284" target="288">
  <data key="d8">AST</data>
</edge>
<edge source="284" target="285">
  <data key="d8">AST</data>
</edge>
<edge source="285" target="286">
  <data key="d8">AST</data>
</edge>
<edge source="285" target="287">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="287" target="314">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="287" target="288">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="288" target="326">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="289" target="292">
  <data key="d8">AST</data>
</edge>
<edge source="289" target="299">
  <data key="d8">AST</data>
</edge>
<edge source="289" target="293">
  <data key="d8">AST</data>
</edge>
<edge source="289" target="290">
  <data key="d8">AST</data>
</edge>
<edge source="289" target="297">
  <data key="d8">AST</data>
</edge>
<edge source="290" target="291">
  <data key="d8">AST</data>
</edge>
<edge source="290" target="292">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="292" target="293">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="293" target="294">
  <data key="d8">AST</data>
</edge>
<edge source="293" target="296">
  <data key="d8">AST</data>
</edge>
<edge source="293" target="297">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="294" target="295">
  <data key="d8">AST</data>
</edge>
<edge source="294" target="296">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="296" target="308">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="297" target="298">
  <data key="d8">AST</data>
</edge>
<edge source="297" target="299">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="299" target="300">
  <data key="d8">AST</data>
</edge>
<edge source="299" target="322">
  <data key="d8">AST</data>
</edge>
<edge source="299" target="311">
  <data key="d8">AST</data>
</edge>
<edge source="300" target="301">
  <data key="d8">AST</data>
</edge>
<edge source="301" target="302">
  <data key="d8">AST</data>
</edge>
<edge source="301" target="304">
  <data key="d8">AST</data>
</edge>
<edge source="301" target="305">
  <data key="d8">AST</data>
</edge>
<edge source="302" target="303">
  <data key="d8">AST</data>
</edge>
<edge source="302" target="304">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="304" target="305">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="304" target="307">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="304" target="309">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="305" target="306">
  <data key="d8">AST</data>
</edge>
<edge source="305" target="307">
  <data key="d8">AST</data>
</edge>
<edge source="305" target="308">
  <data key="d8">AST</data>
</edge>
<edge source="306" target="307">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="307" target="308">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="307" target="309">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="309" target="310">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="309" target="319">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="309" target="331">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="311" target="312">
  <data key="d8">AST</data>
</edge>
<edge source="311" target="322">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="312" target="313">
  <data key="d8">AST</data>
</edge>
<edge source="312" target="314">
  <data key="d8">AST</data>
</edge>
<edge source="312" target="315">
  <data key="d8">AST</data>
</edge>
<edge source="313" target="314">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="314" target="315">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="315" target="316">
  <data key="d8">AST</data>
</edge>
<edge source="315" target="317">
  <data key="d8">AST</data>
</edge>
<edge source="315" target="318">
  <data key="d8">AST</data>
</edge>
<edge source="316" target="317">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="317" target="318">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="318" target="320">
  <data key="d8">AST</data>
</edge>
<edge source="318" target="321">
  <data key="d8">AST</data>
</edge>
<edge source="318" target="319">
  <data key="d8">AST</data>
</edge>
<edge source="319" target="320">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="319" target="331">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="320" target="321">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="322" target="323">
  <data key="d8">AST</data>
</edge>
<edge source="323" target="324">
  <data key="d8">AST</data>
</edge>
<edge source="323" target="326">
  <data key="d8">AST</data>
</edge>
<edge source="323" target="327">
  <data key="d8">AST</data>
</edge>
<edge source="324" target="325">
  <data key="d8">AST</data>
</edge>
<edge source="324" target="326">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="326" target="327">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="327" target="330">
  <data key="d8">AST</data>
</edge>
<edge source="327" target="328">
  <data key="d8">AST</data>
</edge>
<edge source="327" target="329">
  <data key="d8">AST</data>
</edge>
<edge source="328" target="329">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="329" target="330">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="330" target="331">
  <data key="d8">AST</data>
</edge>
<edge source="330" target="332">
  <data key="d8">AST</data>
</edge>
<edge source="330" target="333">
  <data key="d8">AST</data>
</edge>
<edge source="331" target="332">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="332" target="333">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="334" target="374">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="334" target="378">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="334" target="379">
  <data key="d8">AST</data>
</edge>
<edge source="335" target="377">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="335" target="378">
  <data key="d8">AST</data>
</edge>
<edge source="336" target="376">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="336" target="377">
  <data key="d8">AST</data>
</edge>
<edge source="337" target="343">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="337" target="376">
  <data key="d8">AST</data>
</edge>
<edge source="338" target="342">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="338" target="343">
  <data key="d8">AST</data>
</edge>
<edge source="339" target="341">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="339" target="342">
  <data key="d8">AST</data>
</edge>
<edge source="340" target="341">
  <data key="d8">AST</data>
</edge>
<edge source="341" target="342">
  <data key="d8">AST</data>
</edge>
<edge source="342" target="343">
  <data key="d8">AST</data>
</edge>
<edge source="343" target="376">
  <data key="d8">AST</data>
</edge>
<edge source="344" target="345">
  <data key="d8">AST</data>
</edge>
<edge source="345" target="346">
  <data key="d8">AST</data>
</edge>
<edge source="346" target="347">
  <data key="d8">AST</data>
</edge>
<edge source="347" target="348">
  <data key="d8">AST</data>
</edge>
<edge source="348" target="349">
  <data key="d8">AST</data>
</edge>
<edge source="349" target="353">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="349" target="350">
  <data key="d8">AST</data>
</edge>
<edge source="350" target="353">
  <data key="d8">AST</data>
</edge>
<edge source="350" target="381">
  <data key="d8">AST</data>
</edge>
<edge source="350" target="352">
  <data key="d8">AST</data>
</edge>
<edge source="350" target="373">
  <data key="d8">AST</data>
</edge>
<edge source="350" target="380">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="351" target="354">
  <data key="d8">AST</data>
</edge>
<edge source="351" target="362">
  <data key="d8">AST</data>
</edge>
<edge source="351" target="374">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="351" target="352">
  <data key="d8">AST</data>
</edge>
<edge source="352" target="374">
  <data key="d8">AST</data>
</edge>
<edge source="352" target="373">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="352" target="353">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="354" target="362">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="355" target="359">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="355" target="360">
  <data key="d8">AST</data>
</edge>
<edge source="356" target="358">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="356" target="359">
  <data key="d8">AST</data>
</edge>
<edge source="357" target="358">
  <data key="d8">AST</data>
</edge>
<edge source="358" target="359">
  <data key="d8">AST</data>
</edge>
<edge source="359" target="360">
  <data key="d8">AST</data>
</edge>
<edge source="360" target="364">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="360" target="361">
  <data key="d8">AST</data>
</edge>
<edge source="361" target="364">
  <data key="d8">AST</data>
</edge>
<edge source="361" target="363">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="361" target="362">
  <data key="d8">AST</data>
</edge>
<edge source="362" target="363">
  <data key="d8">AST</data>
</edge>
<edge source="365" target="370">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="365" target="371">
  <data key="d8">AST</data>
</edge>
<edge source="366" target="369">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="366" target="370">
  <data key="d8">AST</data>
</edge>
<edge source="367" target="368">
  <data key="d8">AST</data>
</edge>
<edge source="368" target="375">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="368" target="369">
  <data key="d8">AST</data>
</edge>
<edge source="369" target="375">
  <data key="d8">AST</data>
</edge>
<edge source="369" target="370">
  <data key="d8">AST</data>
</edge>
<edge source="370" target="371">
  <data key="d8">AST</data>
</edge>
<edge source="371" target="383">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="371" target="372">
  <data key="d8">AST</data>
</edge>
<edge source="372" target="383">
  <data key="d8">AST</data>
</edge>
<edge source="372" target="382">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="372" target="373">
  <data key="d8">AST</data>
</edge>
<edge source="373" target="382">
  <data key="d8">AST</data>
</edge>
<edge source="373" target="381">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="376" target="377">
  <data key="d8">AST</data>
</edge>
<edge source="377" target="378">
  <data key="d8">AST</data>
</edge>
<edge source="378" target="379">
  <data key="d8">AST</data>
</edge>
<edge source="379" target="380">
  <data key="d8">AST</data>
</edge>
<edge source="380" target="381">
  <data key="d8">AST</data>
</edge>
<edge source="384" target="386">
  <data key="d8">AST</data>
</edge>
<edge source="384" target="389">
  <data key="d8">AST</data>
</edge>
<edge source="384" target="391">
  <data key="d8">AST</data>
</edge>
<edge source="384" target="385">
  <data key="d8">AST</data>
</edge>
<edge source="384" target="392">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="385" target="386">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="386" target="387">
  <data key="d8">AST</data>
</edge>
<edge source="386" target="388">
  <data key="d8">AST</data>
</edge>
<edge source="386" target="389">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="387" target="388">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="388" target="396">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="389" target="390">
  <data key="d8">AST</data>
</edge>
<edge source="389" target="391">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="391" target="392">
  <data key="d8">AST</data>
</edge>
<edge source="392" target="393">
  <data key="d8">AST</data>
</edge>
<edge source="393" target="397">
  <data key="d8">AST</data>
</edge>
<edge source="393" target="394">
  <data key="d8">AST</data>
</edge>
<edge source="393" target="396">
  <data key="d8">AST</data>
</edge>
<edge source="394" target="395">
  <data key="d8">AST</data>
</edge>
<edge source="394" target="396">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="396" target="397">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="397" target="398">
  <data key="d8">AST</data>
</edge>
<edge source="397" target="399">
  <data key="d8">AST</data>
</edge>
<edge source="398" target="399">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>