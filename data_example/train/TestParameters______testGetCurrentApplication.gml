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
  <data key="d1">165</data>
  <data key="d2">/**
 * Test.
 */
@Test
public void testGetCurrentApplication() {
    Parameters.initialize((ServletContext) null);
    // null car pas de servletContext
    assertNull("getCurrentApplication", Parameters.getCurrentApplication());
    setProperty(Parameter.APPLICATION_NAME, "test application");
    assertEquals("getCurrentApplication", "test application", Parameters.getCurrentApplication());
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">165</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">165</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testGetCurrentApplication</data>
  <data key="d1">166</data>
  <data key="d2">testGetCurrentApplication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">166</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">166</data>
  <data key="d2">{
    Parameters.initialize((ServletContext) null);
    // null car pas de servletContext
    assertNull("getCurrentApplication", Parameters.getCurrentApplication());
    setProperty(Parameter.APPLICATION_NAME, "test application");
    assertEquals("getCurrentApplication", "test application", Parameters.getCurrentApplication());
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">167</data>
  <data key="d2">Parameters.initialize((ServletContext) null)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameters</data>
  <data key="d1">167</data>
  <data key="d2">Parameters</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d7">otherMethodCall</data>
  <data key="d6">initialize</data>
  <data key="d1">167</data>
  <data key="d2">initialize</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">167</data>
  <data key="d2">(ServletContext) null</data>
  <data key="d3">CastExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d1">167</data>
  <data key="d2">ServletContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">ServletContext</data>
  <data key="d1">167</data>
  <data key="d2">ServletContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">167</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">169</data>
  <data key="d2">assertNull("getCurrentApplication", Parameters.getCurrentApplication())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertNull</data>
  <data key="d1">169</data>
  <data key="d2">assertNull</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d6">getCurrentApplication</data>
  <data key="d1">169</data>
  <data key="d2">"getCurrentApplication"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d1">169</data>
  <data key="d2">Parameters.getCurrentApplication()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameters</data>
  <data key="d1">169</data>
  <data key="d2">Parameters</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getCurrentApplication</data>
  <data key="d1">169</data>
  <data key="d2">getCurrentApplication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d1">170</data>
  <data key="d2">setProperty(Parameter.APPLICATION_NAME, "test application")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setProperty</data>
  <data key="d1">170</data>
  <data key="d2">setProperty</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d1">170</data>
  <data key="d2">Parameter.APPLICATION_NAME</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameter</data>
  <data key="d1">170</data>
  <data key="d2">Parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d7">UnknownType</data>
  <data key="d6">APPLICATION_NAME</data>
  <data key="d1">170</data>
  <data key="d2">APPLICATION_NAME</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d6">test application</data>
  <data key="d1">170</data>
  <data key="d2">"test application"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d1">171</data>
  <data key="d2">assertEquals("getCurrentApplication", "test application", Parameters.getCurrentApplication())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">171</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d6">getCurrentApplication</data>
  <data key="d1">171</data>
  <data key="d2">"getCurrentApplication"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d6">test application</data>
  <data key="d1">171</data>
  <data key="d2">"test application"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d1">172</data>
  <data key="d2">Parameters.getCurrentApplication()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameters</data>
  <data key="d1">172</data>
  <data key="d2">Parameters</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getCurrentApplication</data>
  <data key="d1">172</data>
  <data key="d2">getCurrentApplication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d0">public,static</data>
  <data key="d1">83</data>
  <data key="d2">public static void initialize(ServletContext context) {
    if ("1.6".compareTo(JAVA_VERSION) &gt; 0) {
        throw new IllegalStateException("La version java doit être 1.6 au minimum et non " + JAVA_VERSION);
    }
    servletContext = context;
    dnsLookupsDisabled = Parameter.DNS_LOOKUPS_DISABLED.getValueAsBoolean();
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="34">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">initialize</data>
  <data key="d1">83</data>
  <data key="d2">initialize</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="35">
  <data key="d1">83</data>
  <data key="d2">ServletContext context</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="36">
  <data key="d1">83</data>
  <data key="d2">ServletContext</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="37">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">ServletContext</data>
  <data key="d1">83</data>
  <data key="d2">ServletContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="38">
  <data key="d7">javax.servlet.ServletContext</data>
  <data key="d6">context</data>
  <data key="d1">83</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="39">
  <data key="d1">83</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="40">
  <data key="d1">83</data>
  <data key="d2">{
    if ("1.6".compareTo(JAVA_VERSION) &gt; 0) {
        throw new IllegalStateException("La version java doit être 1.6 au minimum et non " + JAVA_VERSION);
    }
    servletContext = context;
    dnsLookupsDisabled = Parameter.DNS_LOOKUPS_DISABLED.getValueAsBoolean();
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="41">
  <data key="d6">=</data>
  <data key="d1">88</data>
  <data key="d2">servletContext = context</data>
  <data key="d3">AssignExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="42">
  <data key="d7">javax.servlet.ServletContext</data>
  <data key="d6">servletContext</data>
  <data key="d1">88</data>
  <data key="d2">servletContext</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="43">
  <data key="d7">javax.servlet.ServletContext</data>
  <data key="d6">context</data>
  <data key="d1">88</data>
  <data key="d2">context</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="44">
  <data key="d6">=</data>
  <data key="d1">90</data>
  <data key="d2">dnsLookupsDisabled = Parameter.DNS_LOOKUPS_DISABLED.getValueAsBoolean()</data>
  <data key="d3">AssignExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="45">
  <data key="d7">boolean</data>
  <data key="d6">dnsLookupsDisabled</data>
  <data key="d1">90</data>
  <data key="d2">dnsLookupsDisabled</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="46">
  <data key="d1">90</data>
  <data key="d2">Parameter.DNS_LOOKUPS_DISABLED.getValueAsBoolean()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">AssignExpr</data>
</node>
<node id="47">
  <data key="d1">90</data>
  <data key="d2">Parameter.DNS_LOOKUPS_DISABLED</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="48">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameter</data>
  <data key="d1">90</data>
  <data key="d2">Parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="49">
  <data key="d7">UnknownType</data>
  <data key="d6">DNS_LOOKUPS_DISABLED</data>
  <data key="d1">90</data>
  <data key="d2">DNS_LOOKUPS_DISABLED</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="50">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValueAsBoolean</data>
  <data key="d1">90</data>
  <data key="d2">getValueAsBoolean</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="51">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">444</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="52">
  <data key="d7">UnknownType</data>
  <data key="d6">APPLICATION_NAME</data>
  <data key="d1">444</data>
  <data key="d2">APPLICATION_NAME</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="53">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameter</data>
  <data key="d1">444</data>
  <data key="d2">Parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="54">
  <data key="d1">444</data>
  <data key="d2">Parameter.APPLICATION_NAME</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="55">
  <data key="d1">444</data>
  <data key="d2">Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="56">
  <data key="d7">java.lang.String</data>
  <data key="d6">applicationName</data>
  <data key="d1">444</data>
  <data key="d2">applicationName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="57">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">444</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="58">
  <data key="d1">455</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="59">
  <data key="d1">455</data>
  <data key="d2">return null;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="60">
  <data key="d1">444</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="61">
  <data key="d1">444</data>
  <data key="d2">applicationName = Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="62">
  <data key="d1">442</data>
  <data key="d2">{
    // use explicitly configured application name (if configured)
    final String applicationName = Parameter.APPLICATION_NAME.getValue();
    if (applicationName != null) {
        return applicationName;
    }
    if (servletContext != null) {
        // pour pouvoir stocker sur un répertoire partagé entre plusieurs serveurs
        return getContextPath(servletContext) + '_' + getHostName();
    }
    return null;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="63">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">442</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="64">
  <data key="d1">442</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="65">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">getCurrentApplication</data>
  <data key="d1">442</data>
  <data key="d2">getCurrentApplication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="66">
  <data key="d0">public,static</data>
  <data key="d1">442</data>
  <data key="d2">/**
 * @return Nom de l'application courante et nom du sous-répertoire de stockage dans une application monitorée.
 */
public static String getCurrentApplication() {
    // use explicitly configured application name (if configured)
    final String applicationName = Parameter.APPLICATION_NAME.getValue();
    if (applicationName != null) {
        return applicationName;
    }
    if (servletContext != null) {
        // pour pouvoir stocker sur un répertoire partagé entre plusieurs serveurs
        return getContextPath(servletContext) + '_' + getHostName();
    }
    return null;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="67">
  <data key="d0">final</data>
  <data key="d1">444</data>
  <data key="d2">final String applicationName = Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="68">
  <data key="d0">private,static</data>
  <data key="d1">51</data>
  <data key="d2">private static void setProperty(Parameter parameter, String value) {
    Utils.setProperty(parameter, value);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="69">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">setProperty</data>
  <data key="d1">51</data>
  <data key="d2">setProperty</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="70">
  <data key="d1">51</data>
  <data key="d2">Parameter parameter</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="71">
  <data key="d1">51</data>
  <data key="d2">Parameter</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="72">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Parameter</data>
  <data key="d1">51</data>
  <data key="d2">Parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="73">
  <data key="d7">UnknownType</data>
  <data key="d6">parameter</data>
  <data key="d1">51</data>
  <data key="d2">parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="74">
  <data key="d1">51</data>
  <data key="d2">String value</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="75">
  <data key="d1">51</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="76">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">51</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="77">
  <data key="d7">java.lang.String</data>
  <data key="d6">value</data>
  <data key="d1">51</data>
  <data key="d2">value</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="78">
  <data key="d1">51</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="79">
  <data key="d1">51</data>
  <data key="d2">{
    Utils.setProperty(parameter, value);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="80">
  <data key="d1">52</data>
  <data key="d2">Utils.setProperty(parameter, value)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="81">
  <data key="d7">UnknownType</data>
  <data key="d6">Utils</data>
  <data key="d1">52</data>
  <data key="d2">Utils</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="82">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setProperty</data>
  <data key="d1">52</data>
  <data key="d2">setProperty</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="83">
  <data key="d7">UnknownType</data>
  <data key="d6">parameter</data>
  <data key="d1">52</data>
  <data key="d2">parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="84">
  <data key="d7">java.lang.String</data>
  <data key="d6">value</data>
  <data key="d1">52</data>
  <data key="d2">value</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="85">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">444</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="86">
  <data key="d7">UnknownType</data>
  <data key="d6">APPLICATION_NAME</data>
  <data key="d1">444</data>
  <data key="d2">APPLICATION_NAME</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
</node>
<node id="87">
  <data key="d7">UnknownType</data>
  <data key="d6">Parameter</data>
  <data key="d1">444</data>
  <data key="d2">Parameter</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="88">
  <data key="d1">444</data>
  <data key="d2">Parameter.APPLICATION_NAME</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="89">
  <data key="d1">444</data>
  <data key="d2">Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="90">
  <data key="d7">java.lang.String</data>
  <data key="d6">applicationName</data>
  <data key="d1">444</data>
  <data key="d2">applicationName</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="91">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">444</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="92">
  <data key="d1">455</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="93">
  <data key="d1">455</data>
  <data key="d2">return null;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="94">
  <data key="d1">444</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
</node>
<node id="95">
  <data key="d1">444</data>
  <data key="d2">applicationName = Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
</node>
<node id="96">
  <data key="d1">442</data>
  <data key="d2">{
    // use explicitly configured application name (if configured)
    final String applicationName = Parameter.APPLICATION_NAME.getValue();
    if (applicationName != null) {
        return applicationName;
    }
    if (servletContext != null) {
        // pour pouvoir stocker sur un répertoire partagé entre plusieurs serveurs
        return getContextPath(servletContext) + '_' + getHostName();
    }
    return null;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="97">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">442</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="98">
  <data key="d1">442</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="99">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">getCurrentApplication</data>
  <data key="d1">442</data>
  <data key="d2">getCurrentApplication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="100">
  <data key="d0">public,static</data>
  <data key="d1">442</data>
  <data key="d2">/**
 * @return Nom de l'application courante et nom du sous-répertoire de stockage dans une application monitorée.
 */
public static String getCurrentApplication() {
    // use explicitly configured application name (if configured)
    final String applicationName = Parameter.APPLICATION_NAME.getValue();
    if (applicationName != null) {
        return applicationName;
    }
    if (servletContext != null) {
        // pour pouvoir stocker sur un répertoire partagé entre plusieurs serveurs
        return getContextPath(servletContext) + '_' + getHostName();
    }
    return null;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="101">
  <data key="d0">final</data>
  <data key="d1">444</data>
  <data key="d2">final String applicationName = Parameter.APPLICATION_NAME.getValue()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="6">
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
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="14">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="7" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="20">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="14" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="30">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="20" target="68">
  <data key="d8">AST</data>
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
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="30">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="26" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="30" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="33" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="39">
  <data key="d8">AST</data>
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
<edge source="35" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="43">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="44">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="49">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="45" target="48">
  <data key="d8">COMPUTED_FROM</data>
</edge>
<edge source="45" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="50">
  <data key="d8">AST</data>
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
<edge source="51" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="51" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="59" target="66">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="59" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="74">
  <data key="d8">AST</data>
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
<edge source="70" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="83">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="74" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="84">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="78" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="90" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="100">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="93" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="96" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="98" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="99" target="100">
  <data key="d8">AST</data>
</edge>
</graph></graphml>