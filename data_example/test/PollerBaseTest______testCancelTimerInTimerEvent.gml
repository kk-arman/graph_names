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
  <data key="d1">67</data>
  <data key="d2">@Test
public void testCancelTimerInTimerEvent() {
    final PollerBaseTested poller = new PollerBaseTested();
    PollEvents sink = new PollEvents() {

        @Override
        public void timerEvent(int id) {
            // cancelTimer() is never called in timerEvent()
            poller.cancelTimer(this, id);
        }
    };
    poller.addTimer(1000, sink, 1);
    poller.clock(1000);
    long rc = poller.executeTimers();
    assertThat(rc, is(0L));
    assertThat(poller.isEmpty(), is(true));
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">67</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">67</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testCancelTimerInTimerEvent</data>
  <data key="d1">68</data>
  <data key="d2">testCancelTimerInTimerEvent</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">68</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d1">69</data>
  <data key="d2">{
    final PollerBaseTested poller = new PollerBaseTested();
    PollEvents sink = new PollEvents() {

        @Override
        public void timerEvent(int id) {
            // cancelTimer() is never called in timerEvent()
            poller.cancelTimer(this, id);
        }
    };
    poller.addTimer(1000, sink, 1);
    poller.clock(1000);
    long rc = poller.executeTimers();
    assertThat(rc, is(0L));
    assertThat(poller.isEmpty(), is(true));
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d0">final</data>
  <data key="d1">70</data>
  <data key="d2">final PollerBaseTested poller = new PollerBaseTested()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">70</data>
  <data key="d2">poller = new PollerBaseTested()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">70</data>
  <data key="d2">PollerBaseTested</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">PollerBaseTested</data>
  <data key="d1">70</data>
  <data key="d2">PollerBaseTested</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">70</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d1">70</data>
  <data key="d2">new PollerBaseTested()</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d1">70</data>
  <data key="d2">PollerBaseTested</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">PollerBaseTested</data>
  <data key="d1">70</data>
  <data key="d2">PollerBaseTested</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d7">UnknownType</data>
  <data key="d6">sink</data>
  <data key="d1">72</data>
  <data key="d2">sink</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d7">int</data>
  <data key="d6">id</data>
  <data key="d1">75</data>
  <data key="d2">id</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">78</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">otherMethodCall</data>
  <data key="d6">cancelTimer</data>
  <data key="d1">78</data>
  <data key="d2">cancelTimer</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">78</data>
  <data key="d2">this</data>
  <data key="d3">ThisExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d7">int</data>
  <data key="d6">id</data>
  <data key="d1">78</data>
  <data key="d2">id</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d1">81</data>
  <data key="d2">poller.addTimer(1000, sink, 1)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">81</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">otherMethodCall</data>
  <data key="d6">addTimer</data>
  <data key="d1">81</data>
  <data key="d2">addTimer</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d6">1000</data>
  <data key="d1">81</data>
  <data key="d2">1000</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d7">UnknownType</data>
  <data key="d6">sink</data>
  <data key="d1">81</data>
  <data key="d2">sink</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d6">1</data>
  <data key="d1">81</data>
  <data key="d2">1</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">83</data>
  <data key="d2">poller.clock(1000)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">83</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">otherMethodCall</data>
  <data key="d6">clock</data>
  <data key="d1">83</data>
  <data key="d2">clock</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d6">1000</data>
  <data key="d1">83</data>
  <data key="d2">1000</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d1">84</data>
  <data key="d2">long rc = poller.executeTimers()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">84</data>
  <data key="d2">rc = poller.executeTimers()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d6">long</data>
  <data key="d1">84</data>
  <data key="d2">long</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">long</data>
  <data key="d6">rc</data>
  <data key="d1">84</data>
  <data key="d2">rc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d1">84</data>
  <data key="d2">poller.executeTimers()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">84</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d7">otherMethodCall</data>
  <data key="d6">executeTimers</data>
  <data key="d1">84</data>
  <data key="d2">executeTimers</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d1">85</data>
  <data key="d2">assertThat(rc, is(0L))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d1">85</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">long</data>
  <data key="d6">rc</data>
  <data key="d1">85</data>
  <data key="d2">rc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d1">85</data>
  <data key="d2">is(0L)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d7">otherMethodCall</data>
  <data key="d6">is</data>
  <data key="d1">85</data>
  <data key="d2">is</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d6">0L</data>
  <data key="d1">85</data>
  <data key="d2">0L</data>
  <data key="d3">LongLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d1">86</data>
  <data key="d2">assertThat(poller.isEmpty(), is(true))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertThat</data>
  <data key="d1">86</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d1">86</data>
  <data key="d2">poller.isEmpty()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d7">UnknownType</data>
  <data key="d6">poller</data>
  <data key="d1">86</data>
  <data key="d2">poller</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d7">otherMethodCall</data>
  <data key="d6">isEmpty</data>
  <data key="d1">86</data>
  <data key="d2">isEmpty</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">86</data>
  <data key="d2">is(true)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d7">otherMethodCall</data>
  <data key="d6">is</data>
  <data key="d1">86</data>
  <data key="d2">is</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d6">true</data>
  <data key="d1">86</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="52">
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
<node id="53">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="54">
  <data key="d7">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="55">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d1">31</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="56">
  <data key="d1">31</data>
  <data key="d2">String reason</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="57">
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="58">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="59">
  <data key="d7">java.lang.String</data>
  <data key="d6">reason</data>
  <data key="d1">31</data>
  <data key="d2">reason</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="60">
  <data key="d1">31</data>
  <data key="d2">T actual</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="61">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="62">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="63">
  <data key="d7">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d1">31</data>
  <data key="d2">actual</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="64">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt; matcher</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="65">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="66">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Matcher</data>
  <data key="d1">31</data>
  <data key="d2">Matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="67">
  <data key="d1">31</data>
  <data key="d2">? super T</data>
  <data key="d3">WildcardType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="68">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">WildcardType</data>
</node>
<node id="69">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="70">
  <data key="d7">UnknownType</data>
  <data key="d6">matcher</data>
  <data key="d1">31</data>
  <data key="d2">matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="71">
  <data key="d1">31</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="72">
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
<node id="73">
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
<node id="74">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">TypeParameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="75">
  <data key="d7">runtimeGenericType</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">TypeParameter</data>
</node>
<node id="76">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">assertThat</data>
  <data key="d1">31</data>
  <data key="d2">assertThat</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="77">
  <data key="d1">31</data>
  <data key="d2">String reason</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="79">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">31</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="80">
  <data key="d7">java.lang.String</data>
  <data key="d6">reason</data>
  <data key="d1">31</data>
  <data key="d2">reason</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="81">
  <data key="d1">31</data>
  <data key="d2">T actual</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="82">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="83">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="84">
  <data key="d7">UnknownType</data>
  <data key="d6">actual</data>
  <data key="d1">31</data>
  <data key="d2">actual</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="85">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt; matcher</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="86">
  <data key="d1">31</data>
  <data key="d2">Matcher&lt;? super T&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="87">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Matcher</data>
  <data key="d1">31</data>
  <data key="d2">Matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="88">
  <data key="d1">31</data>
  <data key="d2">? super T</data>
  <data key="d3">WildcardType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="89">
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">WildcardType</data>
</node>
<node id="90">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">T</data>
  <data key="d1">31</data>
  <data key="d2">T</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="91">
  <data key="d7">UnknownType</data>
  <data key="d6">matcher</data>
  <data key="d1">31</data>
  <data key="d2">matcher</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="92">
  <data key="d1">31</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="93">
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
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="12">
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
<edge source="11" target="17">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="11" target="22">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="11" target="28">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="11" target="36">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="11" target="47">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="25">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="16" target="16">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="16" target="20">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="17" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="22">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="18" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="27">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="28">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="26">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="27" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="36">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="38">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="40">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="35" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="47">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="38" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="44">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="38" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="76">
  <data key="d8">NEXT_TOKEN</data>
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
  <data key="d8">AST</data>
</edge>
<edge source="81" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>