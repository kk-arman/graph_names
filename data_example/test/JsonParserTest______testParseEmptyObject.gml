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
  <data key="d0">68</data>
  <data key="d1">AtomicInteger count = new AtomicInteger()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d0">68</data>
  <data key="d1">count = new AtomicInteger()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d0">68</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">AtomicInteger</data>
  <data key="d0">68</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">count</data>
  <data key="d0">68</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d0">68</data>
  <data key="d1">new AtomicInteger()</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">68</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">AtomicInteger</data>
  <data key="d0">68</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d0">69</data>
  <data key="d1">parser.endHandler(v -&gt; count.incrementAndGet())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">69</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d5">otherMethodCall</data>
  <data key="d6">endHandler</data>
  <data key="d0">69</data>
  <data key="d1">endHandler</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d0">69</data>
  <data key="d1">v -&gt; count.incrementAndGet()</data>
  <data key="d2">LambdaExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d0">69</data>
  <data key="d1">v</data>
  <data key="d2">Parameter</data>
  <data key="d3">LambdaExpr</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d5">UnknownType</data>
  <data key="d6">v</data>
  <data key="d0">69</data>
  <data key="d1">v</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">69</data>
  <data key="d1">count.incrementAndGet()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">count</data>
  <data key="d0">69</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d5">otherMethodCall</data>
  <data key="d6">incrementAndGet</data>
  <data key="d0">69</data>
  <data key="d1">incrementAndGet</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d0">70</data>
  <data key="d1">parser.handle(Buffer.buffer("{}"))</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">70</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d5">otherMethodCall</data>
  <data key="d6">handle</data>
  <data key="d0">70</data>
  <data key="d1">handle</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d0">70</data>
  <data key="d1">Buffer.buffer("{}")</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d5">UnknownType</data>
  <data key="d6">Buffer</data>
  <data key="d0">70</data>
  <data key="d1">Buffer</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d5">otherMethodCall</data>
  <data key="d6">buffer</data>
  <data key="d0">70</data>
  <data key="d1">buffer</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d6">{}</data>
  <data key="d0">70</data>
  <data key="d1">"{}"</data>
  <data key="d2">StringLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d0">71</data>
  <data key="d1">assertEquals(2, status.get())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d0">71</data>
  <data key="d1">assertEquals</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d6">2</data>
  <data key="d0">71</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d0">71</data>
  <data key="d1">status.get()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">status</data>
  <data key="d0">71</data>
  <data key="d1">status</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d5">otherMethodCall</data>
  <data key="d6">get</data>
  <data key="d0">71</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d0">72</data>
  <data key="d1">assertEquals(0, count.get())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d0">72</data>
  <data key="d1">assertEquals</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d6">0</data>
  <data key="d0">72</data>
  <data key="d1">0</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d0">72</data>
  <data key="d1">count.get()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">count</data>
  <data key="d0">72</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d5">otherMethodCall</data>
  <data key="d6">get</data>
  <data key="d0">72</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d0">73</data>
  <data key="d1">parser.end()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">73</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d5">otherMethodCall</data>
  <data key="d6">end</data>
  <data key="d0">73</data>
  <data key="d1">end</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d0">74</data>
  <data key="d1">assertEquals(1, count.get())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d0">74</data>
  <data key="d1">assertEquals</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d6">1</data>
  <data key="d0">74</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d0">74</data>
  <data key="d1">count.get()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="44">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">count</data>
  <data key="d0">74</data>
  <data key="d1">count</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="45">
  <data key="d5">otherMethodCall</data>
  <data key="d6">get</data>
  <data key="d0">74</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="46">
  <data key="d0">75</data>
  <data key="d1">assertEquals(2, status.get())</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="47">
  <data key="d5">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d0">75</data>
  <data key="d1">assertEquals</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="48">
  <data key="d6">2</data>
  <data key="d0">75</data>
  <data key="d1">2</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="49">
  <data key="d0">75</data>
  <data key="d1">status.get()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="50">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">status</data>
  <data key="d0">75</data>
  <data key="d1">status</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="51">
  <data key="d5">otherMethodCall</data>
  <data key="d6">get</data>
  <data key="d0">75</data>
  <data key="d1">get</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="52">
  <data key="d0">77</data>
  <data key="d1">parser.end()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="53">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">77</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="54">
  <data key="d5">otherMethodCall</data>
  <data key="d6">end</data>
  <data key="d0">77</data>
  <data key="d1">end</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="55">
  <data key="d0">78</data>
  <data key="d1">fail()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="56">
  <data key="d5">otherMethodCall</data>
  <data key="d6">fail</data>
  <data key="d0">78</data>
  <data key="d1">fail</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="57">
  <data key="d7">public</data>
  <data key="d0">50</data>
  <data key="d1">@Test
public void testParseEmptyObject() {
    JsonParser parser = JsonParser.newParser();
    AtomicInteger status = new AtomicInteger();
    parser.handler(event -&gt; {
        assertNull(event.fieldName());
        assertNull(event.value());
        switch(status.getAndIncrement()) {
            case 0:
                assertEquals(JsonEventType.START_OBJECT, event.type());
                break;
            case 1:
                assertEquals(JsonEventType.END_OBJECT, event.type());
                break;
            default:
                fail();
        }
    });
    AtomicInteger count = new AtomicInteger();
    parser.endHandler(v -&gt; count.incrementAndGet());
    parser.handle(Buffer.buffer("{}"));
    assertEquals(2, status.get());
    assertEquals(0, count.get());
    parser.end();
    assertEquals(1, count.get());
    assertEquals(2, status.get());
    try {
        parser.end();
        fail();
    } catch (IllegalStateException ignore) {
    // expected
    }
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="58">
  <data key="d0">50</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="59">
  <data key="d6">Test</data>
  <data key="d0">50</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="60">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">testParseEmptyObject</data>
  <data key="d0">51</data>
  <data key="d1">testParseEmptyObject</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="61">
  <data key="d0">51</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="62">
  <data key="d0">51</data>
  <data key="d1">{
    JsonParser parser = JsonParser.newParser();
    AtomicInteger status = new AtomicInteger();
    parser.handler(event -&gt; {
        assertNull(event.fieldName());
        assertNull(event.value());
        switch(status.getAndIncrement()) {
            case 0:
                assertEquals(JsonEventType.START_OBJECT, event.type());
                break;
            case 1:
                assertEquals(JsonEventType.END_OBJECT, event.type());
                break;
            default:
                fail();
        }
    });
    AtomicInteger count = new AtomicInteger();
    parser.endHandler(v -&gt; count.incrementAndGet());
    parser.handle(Buffer.buffer("{}"));
    assertEquals(2, status.get());
    assertEquals(0, count.get());
    parser.end();
    assertEquals(1, count.get());
    assertEquals(2, status.get());
    try {
        parser.end();
        fail();
    } catch (IllegalStateException ignore) {
    // expected
    }
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="63">
  <data key="d0">52</data>
  <data key="d1">JsonParser parser = JsonParser.newParser()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="64">
  <data key="d0">52</data>
  <data key="d1">parser = JsonParser.newParser()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="65">
  <data key="d0">52</data>
  <data key="d1">JsonParser</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="66">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">JsonParser</data>
  <data key="d0">52</data>
  <data key="d1">JsonParser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="67">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">52</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="68">
  <data key="d0">52</data>
  <data key="d1">JsonParser.newParser()</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="69">
  <data key="d5">UnknownType</data>
  <data key="d6">JsonParser</data>
  <data key="d0">52</data>
  <data key="d1">JsonParser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="70">
  <data key="d5">otherMethodCall</data>
  <data key="d6">newParser</data>
  <data key="d0">52</data>
  <data key="d1">newParser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="71">
  <data key="d0">53</data>
  <data key="d1">AtomicInteger status = new AtomicInteger()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="72">
  <data key="d0">53</data>
  <data key="d1">status = new AtomicInteger()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="73">
  <data key="d0">53</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="74">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">AtomicInteger</data>
  <data key="d0">53</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="75">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">status</data>
  <data key="d0">53</data>
  <data key="d1">status</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="76">
  <data key="d0">53</data>
  <data key="d1">new AtomicInteger()</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="77">
  <data key="d0">53</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="78">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">AtomicInteger</data>
  <data key="d0">53</data>
  <data key="d1">AtomicInteger</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="79">
  <data key="d5">UnknownType</data>
  <data key="d6">parser</data>
  <data key="d0">54</data>
  <data key="d1">parser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="80">
  <data key="d5">otherMethodCall</data>
  <data key="d6">handler</data>
  <data key="d0">54</data>
  <data key="d1">handler</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="81">
  <data key="d5">java.util.concurrent.atomic.AtomicInteger</data>
  <data key="d6">status</data>
  <data key="d0">57</data>
  <data key="d1">status</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="82">
  <data key="d5">otherMethodCall</data>
  <data key="d6">getAndIncrement</data>
  <data key="d0">57</data>
  <data key="d1">getAndIncrement</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="83">
  <data key="d7">static</data>
  <data key="d0">50</data>
  <data key="d1">/**
 * Create a new {@code JsonParser} instance.
 */
static JsonParser newParser(ReadStream&lt;Buffer&gt; stream) {
    return new JsonParserImpl(stream);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="84">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">newParser</data>
  <data key="d0">50</data>
  <data key="d1">newParser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="85">
  <data key="d0">50</data>
  <data key="d1">ReadStream&lt;Buffer&gt; stream</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="86">
  <data key="d0">50</data>
  <data key="d1">ReadStream&lt;Buffer&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="87">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ReadStream</data>
  <data key="d0">50</data>
  <data key="d1">ReadStream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="88">
  <data key="d0">50</data>
  <data key="d1">Buffer</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="89">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Buffer</data>
  <data key="d0">50</data>
  <data key="d1">Buffer</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="90">
  <data key="d5">UnknownType</data>
  <data key="d6">stream</data>
  <data key="d0">50</data>
  <data key="d1">stream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="91">
  <data key="d0">50</data>
  <data key="d1">JsonParser</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="92">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">JsonParser</data>
  <data key="d0">50</data>
  <data key="d1">JsonParser</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="93">
  <data key="d0">50</data>
  <data key="d1">{
    return new JsonParserImpl(stream);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="94">
  <data key="d0">51</data>
  <data key="d1">return new JsonParserImpl(stream);</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="95">
  <data key="d0">51</data>
  <data key="d1">new JsonParserImpl(stream)</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="96">
  <data key="d0">51</data>
  <data key="d1">JsonParserImpl</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
</node>
<node id="97">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">JsonParserImpl</data>
  <data key="d0">51</data>
  <data key="d1">JsonParserImpl</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="98">
  <data key="d5">UnknownType</data>
  <data key="d6">stream</data>
  <data key="d0">51</data>
  <data key="d1">stream</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="9">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="1" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="3">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="5">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="16">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="5" target="35">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="5" target="44">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="18">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="9" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="67">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="10" target="79">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="10" target="11">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="19">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="11" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="14">
  <data key="d8">LAST_READ</data>
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
<edge source="16" target="35">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="25">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="18" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="67">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="38">
  <data key="d8">LAST_READ</data>
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
<edge source="25" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="25" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="75">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="29" target="81">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="29" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="50">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="31" target="34">
  <data key="d8">AST</data>
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
<edge source="31" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
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
<edge source="35" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="44">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="40">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="37" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="67">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="53">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="46">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="40" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="52">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="46" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="75">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="55">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="53" target="67">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="58" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="62" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="71">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="63" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="65" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="79">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="76">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="81">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="94">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="84" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="98">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>