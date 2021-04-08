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
  <data key="d1">90</data>
  <data key="d2">@Test
public void testIsCapitalizedWord() {
    assertTrue(StringTools.isCapitalizedWord("Abc"));
    assertTrue(StringTools.isCapitalizedWord("Uppercase"));
    assertTrue(StringTools.isCapitalizedWord("Ipod"));
    assertFalse(StringTools.isCapitalizedWord(""));
    assertFalse(StringTools.isCapitalizedWord("ABC"));
    assertFalse(StringTools.isCapitalizedWord("abc"));
    assertFalse(StringTools.isCapitalizedWord("!"));
    assertFalse(StringTools.isCapitalizedWord("wOrD"));
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">90</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">90</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testIsCapitalizedWord</data>
  <data key="d1">91</data>
  <data key="d2">testIsCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">91</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">91</data>
  <data key="d2">{
    assertTrue(StringTools.isCapitalizedWord("Abc"));
    assertTrue(StringTools.isCapitalizedWord("Uppercase"));
    assertTrue(StringTools.isCapitalizedWord("Ipod"));
    assertFalse(StringTools.isCapitalizedWord(""));
    assertFalse(StringTools.isCapitalizedWord("ABC"));
    assertFalse(StringTools.isCapitalizedWord("abc"));
    assertFalse(StringTools.isCapitalizedWord("!"));
    assertFalse(StringTools.isCapitalizedWord("wOrD"));
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">92</data>
  <data key="d2">assertTrue(StringTools.isCapitalizedWord("Abc"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertTrue</data>
  <data key="d1">92</data>
  <data key="d2">assertTrue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">92</data>
  <data key="d2">StringTools.isCapitalizedWord("Abc")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">92</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">92</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d6">Abc</data>
  <data key="d1">92</data>
  <data key="d2">"Abc"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">93</data>
  <data key="d2">assertTrue(StringTools.isCapitalizedWord("Uppercase"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertTrue</data>
  <data key="d1">93</data>
  <data key="d2">assertTrue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">93</data>
  <data key="d2">StringTools.isCapitalizedWord("Uppercase")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">93</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">93</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d6">Uppercase</data>
  <data key="d1">93</data>
  <data key="d2">"Uppercase"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">94</data>
  <data key="d2">assertTrue(StringTools.isCapitalizedWord("Ipod"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertTrue</data>
  <data key="d1">94</data>
  <data key="d2">assertTrue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d1">94</data>
  <data key="d2">StringTools.isCapitalizedWord("Ipod")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">94</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">94</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d6">Ipod</data>
  <data key="d1">94</data>
  <data key="d2">"Ipod"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">96</data>
  <data key="d2">assertFalse(StringTools.isCapitalizedWord(""))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">96</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">96</data>
  <data key="d2">StringTools.isCapitalizedWord("")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">96</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">96</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d1">96</data>
  <data key="d2">""</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d1">97</data>
  <data key="d2">assertFalse(StringTools.isCapitalizedWord("ABC"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">97</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d1">97</data>
  <data key="d2">StringTools.isCapitalizedWord("ABC")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">97</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">97</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d6">ABC</data>
  <data key="d1">97</data>
  <data key="d2">"ABC"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">98</data>
  <data key="d2">assertFalse(StringTools.isCapitalizedWord("abc"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">98</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d1">98</data>
  <data key="d2">StringTools.isCapitalizedWord("abc")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">98</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">98</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d6">abc</data>
  <data key="d1">98</data>
  <data key="d2">"abc"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d1">99</data>
  <data key="d2">assertFalse(StringTools.isCapitalizedWord("!"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">99</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d1">99</data>
  <data key="d2">StringTools.isCapitalizedWord("!")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">99</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">99</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d6">!</data>
  <data key="d1">99</data>
  <data key="d2">"!"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">100</data>
  <data key="d2">assertFalse(StringTools.isCapitalizedWord("wOrD"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">100</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d1">100</data>
  <data key="d2">StringTools.isCapitalizedWord("wOrD")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d7">UnknownType</data>
  <data key="d6">StringTools</data>
  <data key="d1">100</data>
  <data key="d2">StringTools</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">100</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d6">wOrD</data>
  <data key="d1">100</data>
  <data key="d2">"wOrD"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="56">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="57">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="58">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="59">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="60">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="61">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="62">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="63">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="64">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="65">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="66">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="67">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="68">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="69">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="70">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="71">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="72">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="73">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="74">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="75">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="76">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="77">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="79">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="80">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="81">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="82">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="83">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="84">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="85">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="86">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="87">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="88">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="89">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="90">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="91">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="92">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="93">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="94">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="95">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="96">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="97">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="98">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="99">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="100">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="101">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="102">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="103">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="104">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="105">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="106">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="107">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="108">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="109">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="110">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="111">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="112">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="113">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="114">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="115">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="116">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="117">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="118">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="119">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="120">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="121">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="122">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="123">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="124">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="125">
  <data key="d0">public,static</data>
  <data key="d1">159</data>
  <data key="d2">/**
 * @param str input string
 * @return true if word starts with an uppercase letter and all other letters are lowercase
 */
public static boolean isCapitalizedWord(String str) {
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="126">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">isCapitalizedWord</data>
  <data key="d1">159</data>
  <data key="d2">isCapitalizedWord</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="127">
  <data key="d1">159</data>
  <data key="d2">String str</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="128">
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="129">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">159</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="130">
  <data key="d7">java.lang.String</data>
  <data key="d6">str</data>
  <data key="d1">159</data>
  <data key="d2">str</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="131">
  <data key="d6">boolean</data>
  <data key="d1">159</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="132">
  <data key="d1">159</data>
  <data key="d2">{
    if (!isEmpty(str) &amp;&amp; Character.isUpperCase(str.charAt(0))) {
        for (int i = 1; i &lt; str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isLetter(c) &amp;&amp; !Character.isLowerCase(c)) {
                return false;
            }
        }
        return true;
    }
    return false;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="133">
  <data key="d1">169</data>
  <data key="d2">return false;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="134">
  <data key="d6">false</data>
  <data key="d1">169</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
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
<edge source="6" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="13">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="7" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="125">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="11" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="19">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="14" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="15" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="25">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="20" target="21">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="37">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="32" target="33">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="35">
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
<edge source="37" target="43">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="49">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="63">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="56" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="73">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="66" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="83">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="76" target="77">
  <data key="d8">NEXT_TOKEN</data>
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
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="93">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="86" target="87">
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
<edge source="91" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="103">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="96" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="101">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="98" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="100">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="101" target="102">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="102" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="103" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="111">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="113">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="106" target="107">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="107" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="107" target="111">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="111" target="112">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="112" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="113" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="115" target="123">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="116" target="117">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="117" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="117" target="120">
  <data key="d8">AST</data>
</edge>
<edge source="117" target="121">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="118" target="119">
  <data key="d8">AST</data>
</edge>
<edge source="118" target="120">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="121" target="122">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="123">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="125" target="133">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="126" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="127" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="131">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="128" target="129">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="130">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="131" target="132">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="133" target="134">
  <data key="d8">AST</data>
</edge>
</graph></graphml>