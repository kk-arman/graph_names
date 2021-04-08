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
  <data key="d1">125</data>
  <data key="d2">@Test
public void testSelectFullScan1() {
    String className = "TestSelectFullScan1";
    db.getMetadata().getSchema().createClass(className);
    for (int i = 0; i &lt; 100000; i++) {
        ODocument doc = db.newInstance(className);
        doc.setProperty("name", "name" + i);
        doc.setProperty("surname", "surname" + i);
        doc.save();
    }
    OResultSet result = db.query("select from " + className);
    for (int i = 0; i &lt; 100000; i++) {
        Assert.assertTrue(result.hasNext());
        OResult item = result.next();
        Assert.assertNotNull(item);
        Assert.assertTrue(("" + item.getProperty("name")).startsWith("name"));
    }
    Assert.assertFalse(result.hasNext());
    printExecutionPlan(result);
    result.close();
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">125</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">125</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testSelectFullScan1</data>
  <data key="d1">126</data>
  <data key="d2">testSelectFullScan1</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">126</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">126</data>
  <data key="d2">{
    String className = "TestSelectFullScan1";
    db.getMetadata().getSchema().createClass(className);
    for (int i = 0; i &lt; 100000; i++) {
        ODocument doc = db.newInstance(className);
        doc.setProperty("name", "name" + i);
        doc.setProperty("surname", "surname" + i);
        doc.save();
    }
    OResultSet result = db.query("select from " + className);
    for (int i = 0; i &lt; 100000; i++) {
        Assert.assertTrue(result.hasNext());
        OResult item = result.next();
        Assert.assertNotNull(item);
        Assert.assertTrue(("" + item.getProperty("name")).startsWith("name"));
    }
    Assert.assertFalse(result.hasNext());
    printExecutionPlan(result);
    result.close();
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">127</data>
  <data key="d2">String className = "TestSelectFullScan1"</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">127</data>
  <data key="d2">className = "TestSelectFullScan1"</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">127</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">127</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">java.lang.String</data>
  <data key="d6">className</data>
  <data key="d1">127</data>
  <data key="d2">className</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d6">TestSelectFullScan1</data>
  <data key="d1">127</data>
  <data key="d2">"TestSelectFullScan1"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">128</data>
  <data key="d2">db.getMetadata().getSchema().createClass(className)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">128</data>
  <data key="d2">db.getMetadata().getSchema()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">128</data>
  <data key="d2">db.getMetadata()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d7">UnknownType</data>
  <data key="d6">db</data>
  <data key="d1">128</data>
  <data key="d2">db</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getMetadata</data>
  <data key="d1">128</data>
  <data key="d2">getMetadata</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getSchema</data>
  <data key="d1">128</data>
  <data key="d2">getSchema</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d7">otherMethodCall</data>
  <data key="d6">createClass</data>
  <data key="d1">128</data>
  <data key="d2">createClass</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d7">java.lang.String</data>
  <data key="d6">className</data>
  <data key="d1">128</data>
  <data key="d2">className</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d7">java.lang.String</data>
  <data key="d6">className</data>
  <data key="d1">130</data>
  <data key="d2">className</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d1">135</data>
  <data key="d2">OResultSet result = db.query("select from " + className)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d1">135</data>
  <data key="d2">result = db.query("select from " + className)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d1">135</data>
  <data key="d2">OResultSet</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OResultSet</data>
  <data key="d1">135</data>
  <data key="d2">OResultSet</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">135</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">135</data>
  <data key="d2">db.query("select from " + className)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">UnknownType</data>
  <data key="d6">db</data>
  <data key="d1">135</data>
  <data key="d2">db</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">otherMethodCall</data>
  <data key="d6">query</data>
  <data key="d1">135</data>
  <data key="d2">query</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d1">135</data>
  <data key="d2">"select from " + className</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d6">select from </data>
  <data key="d1">135</data>
  <data key="d2">"select from "</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d7">java.lang.String</data>
  <data key="d6">className</data>
  <data key="d1">135</data>
  <data key="d2">className</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">137</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">otherMethodCall</data>
  <data key="d6">hasNext</data>
  <data key="d1">137</data>
  <data key="d2">hasNext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">138</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">otherMethodCall</data>
  <data key="d6">next</data>
  <data key="d1">138</data>
  <data key="d2">next</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">142</data>
  <data key="d2">Assert.assertFalse(result.hasNext())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d7">UnknownType</data>
  <data key="d6">Assert</data>
  <data key="d1">142</data>
  <data key="d2">Assert</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">142</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d1">142</data>
  <data key="d2">result.hasNext()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">142</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d7">otherMethodCall</data>
  <data key="d6">hasNext</data>
  <data key="d1">142</data>
  <data key="d2">hasNext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d1">143</data>
  <data key="d2">printExecutionPlan(result)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d7">otherMethodCall</data>
  <data key="d6">printExecutionPlan</data>
  <data key="d1">143</data>
  <data key="d2">printExecutionPlan</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">143</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d1">144</data>
  <data key="d2">result.close()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">144</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d7">otherMethodCall</data>
  <data key="d6">close</data>
  <data key="d1">144</data>
  <data key="d2">close</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">14</data>
  <data key="d2">result.getExecutionPlan().ifPresent(x -&gt; System.out.println(x.prettyPrint(0, 3)))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="50">
  <data key="d1">14</data>
  <data key="d2">result.getExecutionPlan()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="51">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">14</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="52">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getExecutionPlan</data>
  <data key="d1">14</data>
  <data key="d2">getExecutionPlan</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="53">
  <data key="d7">otherMethodCall</data>
  <data key="d6">ifPresent</data>
  <data key="d1">14</data>
  <data key="d2">ifPresent</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="54">
  <data key="d1">14</data>
  <data key="d2">x -&gt; System.out.println(x.prettyPrint(0, 3))</data>
  <data key="d3">LambdaExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="55">
  <data key="d1">14</data>
  <data key="d2">x</data>
  <data key="d3">Parameter</data>
  <data key="d4">LambdaExpr</data>
</node>
<node id="56">
  <data key="d7">UnknownType</data>
  <data key="d6">x</data>
  <data key="d1">14</data>
  <data key="d2">x</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="57">
  <data key="d1">14</data>
  <data key="d2">System.out.println(x.prettyPrint(0, 3))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="58">
  <data key="d1">14</data>
  <data key="d2">System.out</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="59">
  <data key="d7">UnknownType</data>
  <data key="d6">System</data>
  <data key="d1">14</data>
  <data key="d2">System</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="60">
  <data key="d7">java.io.PrintStream</data>
  <data key="d6">out</data>
  <data key="d1">14</data>
  <data key="d2">out</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="61">
  <data key="d7">otherMethodCall</data>
  <data key="d6">println</data>
  <data key="d1">14</data>
  <data key="d2">println</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="62">
  <data key="d1">14</data>
  <data key="d2">x.prettyPrint(0, 3)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="63">
  <data key="d7">UnknownType</data>
  <data key="d6">x</data>
  <data key="d1">14</data>
  <data key="d2">x</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="64">
  <data key="d7">otherMethodCall</data>
  <data key="d6">prettyPrint</data>
  <data key="d1">14</data>
  <data key="d2">prettyPrint</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="65">
  <data key="d6">0</data>
  <data key="d1">14</data>
  <data key="d2">0</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="66">
  <data key="d6">3</data>
  <data key="d1">14</data>
  <data key="d2">3</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="67">
  <data key="d1">15</data>
  <data key="d2">System.out.println()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="68">
  <data key="d1">15</data>
  <data key="d2">System.out</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="69">
  <data key="d0">public,static</data>
  <data key="d1">10</data>
  <data key="d2">public static void printExecutionPlan(String query, OResultSet result) {
    if (query != null) {
        System.out.println(query);
    }
    result.getExecutionPlan().ifPresent(x -&gt; System.out.println(x.prettyPrint(0, 3)));
    System.out.println();
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="70">
  <data key="d7">UnknownType</data>
  <data key="d6">System</data>
  <data key="d1">15</data>
  <data key="d2">System</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="71">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">printExecutionPlan</data>
  <data key="d1">10</data>
  <data key="d2">printExecutionPlan</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="72">
  <data key="d7">java.io.PrintStream</data>
  <data key="d6">out</data>
  <data key="d1">15</data>
  <data key="d2">out</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="73">
  <data key="d1">10</data>
  <data key="d2">String query</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="74">
  <data key="d7">otherMethodCall</data>
  <data key="d6">println</data>
  <data key="d1">15</data>
  <data key="d2">println</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="75">
  <data key="d1">10</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="76">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">10</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="77">
  <data key="d7">java.lang.String</data>
  <data key="d6">query</data>
  <data key="d1">10</data>
  <data key="d2">query</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="78">
  <data key="d1">10</data>
  <data key="d2">OResultSet result</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="79">
  <data key="d1">10</data>
  <data key="d2">OResultSet</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="80">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OResultSet</data>
  <data key="d1">10</data>
  <data key="d2">OResultSet</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="81">
  <data key="d7">UnknownType</data>
  <data key="d6">result</data>
  <data key="d1">10</data>
  <data key="d2">result</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="82">
  <data key="d1">10</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="83">
  <data key="d1">10</data>
  <data key="d2">{
    if (query != null) {
        System.out.println(query);
    }
    result.getExecutionPlan().ifPresent(x -&gt; System.out.println(x.prettyPrint(0, 3)));
    System.out.println();
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="6">
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
<edge source="6" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
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
<edge source="11" target="20">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="11" target="21">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="11" target="32">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="21">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="20" target="32">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="21" target="21">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="21" target="32">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="33">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="26" target="35">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="26" target="41">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="26" target="45">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="26" target="47">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="30" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="35">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="33" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="41">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="37" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="43">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="45">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="46">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="43" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="47">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="46" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="67">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="49" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="81">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="51" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="54" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="56">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="56" target="63">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="57" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="62" target="64">
  <data key="d8">AST</data>
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
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>