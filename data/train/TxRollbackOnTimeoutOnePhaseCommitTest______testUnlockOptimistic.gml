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
  <data key="d1">client</data>
  <data key="d2">131</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="2">
  <data key="d0">otherMethodCall</data>
  <data key="d1">transactions</data>
  <data key="d2">131</data>
  <data key="d3">transactions</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="3">
  <data key="d2">103</data>
  <data key="d3">@Test</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="4">
  <data key="d1">Test</data>
  <data key="d2">103</data>
  <data key="d3">Test</data>
  <data key="d4">Name</data>
  <data key="d5">MarkerAnnotationExpr</data>
  <data key="d6">true</data>
</node>
<node id="5">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">testUnlockOptimistic</data>
  <data key="d2">104</data>
  <data key="d3">testUnlockOptimistic</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="6">
  <data key="d2">104</data>
  <data key="d3">IgniteCheckedException</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="7">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">IgniteCheckedException</data>
  <data key="d2">104</data>
  <data key="d3">IgniteCheckedException</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="8">
  <data key="d2">104</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="9">
  <data key="d2">104</data>
  <data key="d3">{
    IgniteEx client = grid("client");
    assertNotNull(client.cache(DEFAULT_CACHE_NAME));
    int key = 0;
    CountDownLatch lock = new CountDownLatch(1);
    CountDownLatch finish = new CountDownLatch(1);
    IgniteInternalFuture fut = runAsync(() -&gt; {
        try (Transaction tx = client.transactions().txStart(PESSIMISTIC, REPEATABLE_READ, 0, 1)) {
            client.cache(DEFAULT_CACHE_NAME).put(key, key + 1);
            lock.countDown();
            try {
                assertTrue(U.await(finish, 30, TimeUnit.SECONDS));
            } catch (IgniteInterruptedCheckedException e) {
                fail();
            }
            tx.commit();
        }
    });
    try (Transaction tx = client.transactions().txStart(OPTIMISTIC, REPEATABLE_READ, 200, 1)) {
        try {
            assertTrue(U.await(lock, 30, TimeUnit.SECONDS));
        } catch (IgniteInterruptedCheckedException e) {
            fail();
        }
        client.cache(DEFAULT_CACHE_NAME).put(key, key);
        tx.commit();
        fail();
    } catch (Exception e) {
        assertTrue(e.getClass().getName(), X.hasCause(e, TransactionTimeoutException.class));
    }
    assertNull(client.cache(DEFAULT_CACHE_NAME).get(key));
    finish.countDown();
    fut.get();
    assertEquals(1, client.cache(DEFAULT_CACHE_NAME).get(key));
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="10">
  <data key="d2">105</data>
  <data key="d3">IgniteEx client = grid("client")</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="11">
  <data key="d2">105</data>
  <data key="d3">client = grid("client")</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="12">
  <data key="d2">105</data>
  <data key="d3">IgniteEx</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="13">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">IgniteEx</data>
  <data key="d2">105</data>
  <data key="d3">IgniteEx</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="14">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">105</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="15">
  <data key="d2">105</data>
  <data key="d3">grid("client")</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="16">
  <data key="d0">otherMethodCall</data>
  <data key="d1">grid</data>
  <data key="d2">105</data>
  <data key="d3">grid</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="17">
  <data key="d1">client</data>
  <data key="d2">105</data>
  <data key="d3">"client"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="18">
  <data key="d2">107</data>
  <data key="d3">assertNotNull(client.cache(DEFAULT_CACHE_NAME))</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="19">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertNotNull</data>
  <data key="d2">107</data>
  <data key="d3">assertNotNull</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="20">
  <data key="d2">107</data>
  <data key="d3">client.cache(DEFAULT_CACHE_NAME)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="21">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">107</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="22">
  <data key="d0">otherMethodCall</data>
  <data key="d1">cache</data>
  <data key="d2">107</data>
  <data key="d3">cache</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="23">
  <data key="d0">UnknownType</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">107</data>
  <data key="d3">DEFAULT_CACHE_NAME</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="24">
  <data key="d2">109</data>
  <data key="d3">int key = 0</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="25">
  <data key="d2">109</data>
  <data key="d3">key = 0</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="26">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">139</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="27">
  <data key="d1">int</data>
  <data key="d2">109</data>
  <data key="d3">int</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="28">
  <data key="d0">otherMethodCall</data>
  <data key="d1">cache</data>
  <data key="d2">139</data>
  <data key="d3">cache</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="29">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">109</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="30">
  <data key="d0">UnknownType</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">139</data>
  <data key="d3">DEFAULT_CACHE_NAME</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="31">
  <data key="d1">0</data>
  <data key="d2">109</data>
  <data key="d3">0</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="32">
  <data key="d2">111</data>
  <data key="d3">CountDownLatch lock = new CountDownLatch(1)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="33">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">139</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="34">
  <data key="d2">111</data>
  <data key="d3">lock = new CountDownLatch(1)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="35">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">139</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="36">
  <data key="d2">111</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="37">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">CountDownLatch</data>
  <data key="d2">111</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="38">
  <data key="d0">UnknownType</data>
  <data key="d1">lock</data>
  <data key="d2">111</data>
  <data key="d3">lock</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="39">
  <data key="d2">111</data>
  <data key="d3">new CountDownLatch(1)</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="40">
  <data key="d2">111</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ObjectCreationExpr</data>
  <data key="d6">true</data>
</node>
<node id="41">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">CountDownLatch</data>
  <data key="d2">111</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="42">
  <data key="d1">1</data>
  <data key="d2">111</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">ObjectCreationExpr</data>
  <data key="d6">true</data>
</node>
<node id="43">
  <data key="d2">112</data>
  <data key="d3">CountDownLatch finish = new CountDownLatch(1)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="44">
  <data key="d2">112</data>
  <data key="d3">finish = new CountDownLatch(1)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="45">
  <data key="d2">112</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="46">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">CountDownLatch</data>
  <data key="d2">112</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="47">
  <data key="d0">UnknownType</data>
  <data key="d1">finish</data>
  <data key="d2">112</data>
  <data key="d3">finish</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="48">
  <data key="d2">112</data>
  <data key="d3">new CountDownLatch(1)</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="49">
  <data key="d2">112</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">ObjectCreationExpr</data>
  <data key="d6">true</data>
</node>
<node id="50">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">CountDownLatch</data>
  <data key="d2">112</data>
  <data key="d3">CountDownLatch</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
  <data key="d6">true</data>
</node>
<node id="51">
  <data key="d1">1</data>
  <data key="d2">112</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">ObjectCreationExpr</data>
  <data key="d6">true</data>
</node>
<node id="52">
  <data key="d0">UnknownType</data>
  <data key="d1">fut</data>
  <data key="d2">114</data>
  <data key="d3">fut</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="53">
  <data key="d2">149</data>
  <data key="d3">assertNull(client.cache(DEFAULT_CACHE_NAME).get(key))</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="54">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertNull</data>
  <data key="d2">149</data>
  <data key="d3">assertNull</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="55">
  <data key="d2">149</data>
  <data key="d3">client.cache(DEFAULT_CACHE_NAME).get(key)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="56">
  <data key="d2">149</data>
  <data key="d3">client.cache(DEFAULT_CACHE_NAME)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="57">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">149</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="58">
  <data key="d0">otherMethodCall</data>
  <data key="d1">cache</data>
  <data key="d2">149</data>
  <data key="d3">cache</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="59">
  <data key="d0">UnknownType</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">149</data>
  <data key="d3">DEFAULT_CACHE_NAME</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="60">
  <data key="d0">otherMethodCall</data>
  <data key="d1">get</data>
  <data key="d2">149</data>
  <data key="d3">get</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="61">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">115</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="62">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">149</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="63">
  <data key="d0">otherMethodCall</data>
  <data key="d1">transactions</data>
  <data key="d2">115</data>
  <data key="d3">transactions</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="64">
  <data key="d2">151</data>
  <data key="d3">finish.countDown()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="65">
  <data key="d0">UnknownType</data>
  <data key="d1">finish</data>
  <data key="d2">151</data>
  <data key="d3">finish</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="66">
  <data key="d0">otherMethodCall</data>
  <data key="d1">countDown</data>
  <data key="d2">151</data>
  <data key="d3">countDown</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="67">
  <data key="d2">153</data>
  <data key="d3">fut.get()</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="68">
  <data key="d0">UnknownType</data>
  <data key="d1">fut</data>
  <data key="d2">153</data>
  <data key="d3">fut</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="69">
  <data key="d0">otherMethodCall</data>
  <data key="d1">get</data>
  <data key="d2">153</data>
  <data key="d3">get</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="70">
  <data key="d2">155</data>
  <data key="d3">assertEquals(1, client.cache(DEFAULT_CACHE_NAME).get(key))</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="71">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertEquals</data>
  <data key="d2">155</data>
  <data key="d3">assertEquals</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="72">
  <data key="d1">1</data>
  <data key="d2">155</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="73">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">116</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="74">
  <data key="d2">155</data>
  <data key="d3">client.cache(DEFAULT_CACHE_NAME).get(key)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="75">
  <data key="d0">otherMethodCall</data>
  <data key="d1">cache</data>
  <data key="d2">116</data>
  <data key="d3">cache</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="76">
  <data key="d2">155</data>
  <data key="d3">client.cache(DEFAULT_CACHE_NAME)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="77">
  <data key="d0">UnknownType</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">116</data>
  <data key="d3">DEFAULT_CACHE_NAME</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="78">
  <data key="d0">UnknownType</data>
  <data key="d1">client</data>
  <data key="d2">155</data>
  <data key="d3">client</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="79">
  <data key="d0">otherMethodCall</data>
  <data key="d1">cache</data>
  <data key="d2">155</data>
  <data key="d3">cache</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="80">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">116</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="81">
  <data key="d0">UnknownType</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">155</data>
  <data key="d3">DEFAULT_CACHE_NAME</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="82">
  <data key="d2">116</data>
  <data key="d3">key + 1</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="83">
  <data key="d0">otherMethodCall</data>
  <data key="d1">get</data>
  <data key="d2">155</data>
  <data key="d3">get</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="84">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">116</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="85">
  <data key="d0">int</data>
  <data key="d1">key</data>
  <data key="d2">155</data>
  <data key="d3">key</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="86">
  <data key="d1">1</data>
  <data key="d2">116</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="87">
  <data key="d0">UnknownType</data>
  <data key="d1">finish</data>
  <data key="d2">121</data>
  <data key="d3">finish</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="88">
  <data key="d1">30</data>
  <data key="d2">121</data>
  <data key="d3">30</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="89">
  <data key="d2">121</data>
  <data key="d3">TimeUnit.SECONDS</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="90">
  <data key="d0">UnknownType</data>
  <data key="d1">TimeUnit</data>
  <data key="d2">121</data>
  <data key="d3">TimeUnit</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="91">
  <data key="d0">UnknownType</data>
  <data key="d1">SECONDS</data>
  <data key="d2">121</data>
  <data key="d3">SECONDS</data>
  <data key="d4">SimpleName</data>
  <data key="d5">FieldAccessExpr</data>
  <data key="d6">true</data>
</node>
<node id="92">
  <data key="d7">public</data>
  <data key="d2">103</data>
  <data key="d3">/**
 */
@Test
public void testUnlockOptimistic() throws IgniteCheckedException {
    IgniteEx client = grid("client");
    assertNotNull(client.cache(DEFAULT_CACHE_NAME));
    int key = 0;
    CountDownLatch lock = new CountDownLatch(1);
    CountDownLatch finish = new CountDownLatch(1);
    IgniteInternalFuture fut = runAsync(() -&gt; {
        try (Transaction tx = client.transactions().txStart(PESSIMISTIC, REPEATABLE_READ, 0, 1)) {
            client.cache(DEFAULT_CACHE_NAME).put(key, key + 1);
            lock.countDown();
            try {
                assertTrue(U.await(finish, 30, TimeUnit.SECONDS));
            } catch (IgniteInterruptedCheckedException e) {
                fail();
            }
            tx.commit();
        }
    });
    try (Transaction tx = client.transactions().txStart(OPTIMISTIC, REPEATABLE_READ, 200, 1)) {
        try {
            assertTrue(U.await(lock, 30, TimeUnit.SECONDS));
        } catch (IgniteInterruptedCheckedException e) {
            fail();
        }
        client.cache(DEFAULT_CACHE_NAME).put(key, key);
        tx.commit();
        fail();
    } catch (Exception e) {
        assertTrue(e.getClass().getName(), X.hasCause(e, TransactionTimeoutException.class));
    }
    assertNull(client.cache(DEFAULT_CACHE_NAME).get(key));
    finish.countDown();
    fut.get();
    assertEquals(1, client.cache(DEFAULT_CACHE_NAME).get(key));
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="93">
  <data key="d7">public</data>
  <data key="d2">290</data>
  <data key="d3">/**
 * Decrements the count of the latch, releasing all waiting threads if
 * the count reaches zero.
 *
 * &lt;p&gt;If the current count is greater than zero then it is decremented.
 * If the new count is zero then all waiting threads are re-enabled for
 * thread scheduling purposes.
 *
 * &lt;p&gt;If the current count equals zero then nothing happens.
 */
public void countDown() {
    sync.releaseShared(1);
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="94">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">countDown</data>
  <data key="d2">290</data>
  <data key="d3">countDown</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="95">
  <data key="d2">290</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="96">
  <data key="d2">290</data>
  <data key="d3">{
    sync.releaseShared(1);
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="97">
  <data key="d2">291</data>
  <data key="d3">sync.releaseShared(1)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
</node>
<node id="98">
  <data key="d0">java.util.concurrent.CountDownLatch.Sync</data>
  <data key="d1">sync</data>
  <data key="d2">291</data>
  <data key="d3">sync</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
</node>
<node id="99">
  <data key="d0">otherMethodCall</data>
  <data key="d1">releaseShared</data>
  <data key="d2">291</data>
  <data key="d3">releaseShared</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
</node>
<node id="100">
  <data key="d1">1</data>
  <data key="d2">291</data>
  <data key="d3">1</data>
  <data key="d4">IntegerLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
</node>
<edge source="1" target="14">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="1" target="73">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="1" target="2">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="1" target="26">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="3" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="5">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="8">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="18">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="21">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="14" target="26">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="57">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="61">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="73">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="78">
  <data key="d8">LAST_WRITE</data>
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
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="32">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="20" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="21" target="61">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="26" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="57">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="27" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="30">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="31">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="33">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="29" target="35">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="29" target="62">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="29" target="80">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="29" target="84">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="29" target="85">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="43">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="32" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="84">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="33" target="35">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="34" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="34" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="62">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="38">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="65">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="47" target="87">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="48" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="68">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="64">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="54" target="55">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="78">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="73">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="62" target="85">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="67">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="65" target="87">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="65" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="67" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="70">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="70" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="74" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="74" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="76" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="76" target="83">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="79">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="84">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="82" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="84" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="88" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="95" target="96">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="96" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="98" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="99" target="100">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>