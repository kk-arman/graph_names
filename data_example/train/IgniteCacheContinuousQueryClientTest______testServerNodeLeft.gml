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
  <data key="d0">243</data>
  <data key="d1">tryClose(cur)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="2">
  <data key="d5">otherMethodCall</data>
  <data key="d6">tryClose</data>
  <data key="d0">243</data>
  <data key="d1">tryClose</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="3">
  <data key="d5">UnknownType</data>
  <data key="d6">cur</data>
  <data key="d0">243</data>
  <data key="d1">cur</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="4">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d0">191</data>
  <data key="d1">Exception</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="5">
  <data key="d0">191</data>
  <data key="d1">void</data>
  <data key="d2">VoidType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="6">
  <data key="d0">191</data>
  <data key="d1">{
    startGrids(3);
    final int CLIENT_ID = 3;
    Ignite clnNode = startClientGrid(CLIENT_ID);
    IgniteOutClosure&lt;IgniteCache&lt;Integer, Integer&gt;&gt; rndCache = new IgniteOutClosure&lt;IgniteCache&lt;Integer, Integer&gt;&gt;() {

        int cnt = 0;

        @Override
        public IgniteCache&lt;Integer, Integer&gt; apply() {
            ++cnt;
            return grid(CLIENT_ID).cache(DEFAULT_CACHE_NAME);
        }
    };
    final CacheEventListener lsnr = new CacheEventListener();
    ContinuousQuery&lt;Object, Object&gt; qry = new ContinuousQuery&lt;&gt;();
    qry.setLocalListener(lsnr);
    QueryCursor&lt;?&gt; cur = clnNode.cache(DEFAULT_CACHE_NAME).query(qry);
    boolean first = true;
    int keyCnt = 1;
    for (int i = 0; i &lt; 10; i++) {
        log.info("Start iteration: " + i);
        if (first)
            first = false;
        else {
            for (int srv = 0; srv &lt; CLIENT_ID - 1; srv++) startGrid(srv);
        }
        lsnr.latch = new CountDownLatch(keyCnt);
        for (int key = 0; key &lt; keyCnt; key++) rndCache.apply().put(key, key);
        assertTrue("Failed to wait for event. Left events: " + lsnr.latch.getCount(), lsnr.latch.await(10, SECONDS));
        for (int srv = 0; srv &lt; CLIENT_ID - 1; srv++) stopGrid(srv);
    }
    tryClose(cur);
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="7">
  <data key="d0">192</data>
  <data key="d1">startGrids(3)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="8">
  <data key="d5">otherMethodCall</data>
  <data key="d6">startGrids</data>
  <data key="d0">192</data>
  <data key="d1">startGrids</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="9">
  <data key="d6">3</data>
  <data key="d0">192</data>
  <data key="d1">3</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="10">
  <data key="d7">final</data>
  <data key="d0">194</data>
  <data key="d1">final int CLIENT_ID = 3</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="11">
  <data key="d0">194</data>
  <data key="d1">CLIENT_ID = 3</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="12">
  <data key="d6">int</data>
  <data key="d0">194</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="13">
  <data key="d5">int</data>
  <data key="d6">CLIENT_ID</data>
  <data key="d0">194</data>
  <data key="d1">CLIENT_ID</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="14">
  <data key="d6">3</data>
  <data key="d0">194</data>
  <data key="d1">3</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="15">
  <data key="d0">196</data>
  <data key="d1">Ignite clnNode = startClientGrid(CLIENT_ID)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="16">
  <data key="d0">196</data>
  <data key="d1">clnNode = startClientGrid(CLIENT_ID)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="17">
  <data key="d0">196</data>
  <data key="d1">Ignite</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="18">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Ignite</data>
  <data key="d0">196</data>
  <data key="d1">Ignite</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="19">
  <data key="d5">UnknownType</data>
  <data key="d6">clnNode</data>
  <data key="d0">196</data>
  <data key="d1">clnNode</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="20">
  <data key="d0">196</data>
  <data key="d1">startClientGrid(CLIENT_ID)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="21">
  <data key="d5">otherMethodCall</data>
  <data key="d6">startClientGrid</data>
  <data key="d0">196</data>
  <data key="d1">startClientGrid</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="22">
  <data key="d5">int</data>
  <data key="d6">CLIENT_ID</data>
  <data key="d0">196</data>
  <data key="d1">CLIENT_ID</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="23">
  <data key="d7">final</data>
  <data key="d0">209</data>
  <data key="d1">final CacheEventListener lsnr = new CacheEventListener()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="24">
  <data key="d0">209</data>
  <data key="d1">lsnr = new CacheEventListener()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="25">
  <data key="d0">209</data>
  <data key="d1">CacheEventListener</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="26">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">CacheEventListener</data>
  <data key="d0">209</data>
  <data key="d1">CacheEventListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="27">
  <data key="d5">org.apache.ignite.internal.processors.cache.query.continuous.IgniteCacheContinuousQueryClientTest.CacheEventListener</data>
  <data key="d6">lsnr</data>
  <data key="d0">209</data>
  <data key="d1">lsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="28">
  <data key="d0">209</data>
  <data key="d1">new CacheEventListener()</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="29">
  <data key="d0">209</data>
  <data key="d1">CacheEventListener</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="30">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">CacheEventListener</data>
  <data key="d0">209</data>
  <data key="d1">CacheEventListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="31">
  <data key="d0">211</data>
  <data key="d1">ContinuousQuery&lt;Object, Object&gt; qry = new ContinuousQuery&lt;&gt;()</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="32">
  <data key="d0">211</data>
  <data key="d1">qry = new ContinuousQuery&lt;&gt;()</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="33">
  <data key="d0">211</data>
  <data key="d1">ContinuousQuery&lt;Object, Object&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="34">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ContinuousQuery</data>
  <data key="d0">211</data>
  <data key="d1">ContinuousQuery</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="35">
  <data key="d0">211</data>
  <data key="d1">Object</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="36">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Object</data>
  <data key="d0">211</data>
  <data key="d1">Object</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="37">
  <data key="d0">211</data>
  <data key="d1">Object</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="38">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">Object</data>
  <data key="d0">211</data>
  <data key="d1">Object</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="39">
  <data key="d5">UnknownType</data>
  <data key="d6">qry</data>
  <data key="d0">211</data>
  <data key="d1">qry</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="40">
  <data key="d0">211</data>
  <data key="d1">new ContinuousQuery&lt;&gt;()</data>
  <data key="d2">ObjectCreationExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="41">
  <data key="d0">211</data>
  <data key="d1">ContinuousQuery&lt;&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">true</data>
</node>
<node id="42">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ContinuousQuery</data>
  <data key="d0">211</data>
  <data key="d1">ContinuousQuery</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="43">
  <data key="d0">213</data>
  <data key="d1">qry.setLocalListener(lsnr)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="44">
  <data key="d5">UnknownType</data>
  <data key="d6">qry</data>
  <data key="d0">213</data>
  <data key="d1">qry</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="45">
  <data key="d5">otherMethodCall</data>
  <data key="d6">setLocalListener</data>
  <data key="d0">213</data>
  <data key="d1">setLocalListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="46">
  <data key="d5">org.apache.ignite.internal.processors.cache.query.continuous.IgniteCacheContinuousQueryClientTest.CacheEventListener</data>
  <data key="d6">lsnr</data>
  <data key="d0">213</data>
  <data key="d1">lsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="47">
  <data key="d0">215</data>
  <data key="d1">QueryCursor&lt;?&gt; cur = clnNode.cache(DEFAULT_CACHE_NAME).query(qry)</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="48">
  <data key="d0">215</data>
  <data key="d1">cur = clnNode.cache(DEFAULT_CACHE_NAME).query(qry)</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="49">
  <data key="d0">215</data>
  <data key="d1">QueryCursor&lt;?&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="50">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">QueryCursor</data>
  <data key="d0">215</data>
  <data key="d1">QueryCursor</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="51">
  <data key="d0">215</data>
  <data key="d1">?</data>
  <data key="d2">WildcardType</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">true</data>
</node>
<node id="52">
  <data key="d5">UnknownType</data>
  <data key="d6">cur</data>
  <data key="d0">215</data>
  <data key="d1">cur</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="53">
  <data key="d0">215</data>
  <data key="d1">clnNode.cache(DEFAULT_CACHE_NAME).query(qry)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="54">
  <data key="d0">215</data>
  <data key="d1">clnNode.cache(DEFAULT_CACHE_NAME)</data>
  <data key="d2">MethodCallExpr</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="55">
  <data key="d5">UnknownType</data>
  <data key="d6">clnNode</data>
  <data key="d0">215</data>
  <data key="d1">clnNode</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="56">
  <data key="d5">otherMethodCall</data>
  <data key="d6">cache</data>
  <data key="d0">215</data>
  <data key="d1">cache</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="57">
  <data key="d5">UnknownType</data>
  <data key="d6">DEFAULT_CACHE_NAME</data>
  <data key="d0">215</data>
  <data key="d1">DEFAULT_CACHE_NAME</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="58">
  <data key="d5">otherMethodCall</data>
  <data key="d6">query</data>
  <data key="d0">215</data>
  <data key="d1">query</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">true</data>
</node>
<node id="59">
  <data key="d5">UnknownType</data>
  <data key="d6">qry</data>
  <data key="d0">215</data>
  <data key="d1">qry</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
  <data key="d4">true</data>
</node>
<node id="60">
  <data key="d0">217</data>
  <data key="d1">boolean first = true</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="61">
  <data key="d0">217</data>
  <data key="d1">first = true</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="62">
  <data key="d6">boolean</data>
  <data key="d0">217</data>
  <data key="d1">boolean</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="63">
  <data key="d5">boolean</data>
  <data key="d6">first</data>
  <data key="d0">217</data>
  <data key="d1">first</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="64">
  <data key="d6">true</data>
  <data key="d0">217</data>
  <data key="d1">true</data>
  <data key="d2">BooleanLiteralExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="65">
  <data key="d0">219</data>
  <data key="d1">int keyCnt = 1</data>
  <data key="d2">VariableDeclarationExpr</data>
  <data key="d3">ExpressionStmt</data>
  <data key="d4">true</data>
</node>
<node id="66">
  <data key="d0">219</data>
  <data key="d1">keyCnt = 1</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">true</data>
</node>
<node id="67">
  <data key="d6">int</data>
  <data key="d0">219</data>
  <data key="d1">int</data>
  <data key="d2">PrimitiveType</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="68">
  <data key="d5">int</data>
  <data key="d6">keyCnt</data>
  <data key="d0">219</data>
  <data key="d1">keyCnt</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="69">
  <data key="d6">1</data>
  <data key="d0">219</data>
  <data key="d1">1</data>
  <data key="d2">IntegerLiteralExpr</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">true</data>
</node>
<node id="70">
  <data key="d7">public</data>
  <data key="d0">190</data>
  <data key="d1">/**
 * @throws Exception If failed.
 */
@Test
public void testServerNodeLeft() throws Exception {
    startGrids(3);
    final int CLIENT_ID = 3;
    Ignite clnNode = startClientGrid(CLIENT_ID);
    IgniteOutClosure&lt;IgniteCache&lt;Integer, Integer&gt;&gt; rndCache = new IgniteOutClosure&lt;IgniteCache&lt;Integer, Integer&gt;&gt;() {

        int cnt = 0;

        @Override
        public IgniteCache&lt;Integer, Integer&gt; apply() {
            ++cnt;
            return grid(CLIENT_ID).cache(DEFAULT_CACHE_NAME);
        }
    };
    final CacheEventListener lsnr = new CacheEventListener();
    ContinuousQuery&lt;Object, Object&gt; qry = new ContinuousQuery&lt;&gt;();
    qry.setLocalListener(lsnr);
    QueryCursor&lt;?&gt; cur = clnNode.cache(DEFAULT_CACHE_NAME).query(qry);
    boolean first = true;
    int keyCnt = 1;
    for (int i = 0; i &lt; 10; i++) {
        log.info("Start iteration: " + i);
        if (first)
            first = false;
        else {
            for (int srv = 0; srv &lt; CLIENT_ID - 1; srv++) startGrid(srv);
        }
        lsnr.latch = new CountDownLatch(keyCnt);
        for (int key = 0; key &lt; keyCnt; key++) rndCache.apply().put(key, key);
        assertTrue("Failed to wait for event. Left events: " + lsnr.latch.getCount(), lsnr.latch.await(10, SECONDS));
        for (int srv = 0; srv &lt; CLIENT_ID - 1; srv++) stopGrid(srv);
    }
    tryClose(cur);
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="71">
  <data key="d0">190</data>
  <data key="d1">@Test</data>
  <data key="d2">MarkerAnnotationExpr</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="72">
  <data key="d6">Test</data>
  <data key="d0">190</data>
  <data key="d1">Test</data>
  <data key="d2">Name</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">true</data>
</node>
<node id="73">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">testServerNodeLeft</data>
  <data key="d0">191</data>
  <data key="d1">testServerNodeLeft</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="74">
  <data key="d0">191</data>
  <data key="d1">Exception</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">true</data>
</node>
<node id="75">
  <data key="d7">public</data>
  <data key="d0">153</data>
  <data key="d1">/**
 * Sets a local callback. This callback is called only on local node when new updates are received.
 * &lt;p&gt;
 * The callback predicate accepts ID of the node from where updates are received and a collection
 * of the received entries. Note that for removed entries values will be {@code null}.
 * &lt;p&gt;
 * If the predicate returns {@code false}, query execution will be cancelled.
 * &lt;p&gt;
 * &lt;b&gt;WARNING:&lt;/b&gt; all operations that involve any kind of JVM-local or distributed locking (e.g.,
 * synchronization or transactional cache operations), should be executed asynchronously without
 * blocking the thread that called the callback. Otherwise, you can get deadlocks.
 * &lt;p&gt;
 * If local listener are annotated with {@link IgniteAsyncCallback} then it is executed in an async callback pool
 * (see {@link IgniteConfiguration#getAsyncCallbackPoolSize()}) that allow to perform a cache operations.
 *
 * @param locLsnr Local callback.
 * @return {@code this} for chaining.
 * @see IgniteAsyncCallback
 * @see IgniteConfiguration#getAsyncCallbackPoolSize()
 * @see ContinuousQueryWithTransformer#setLocalListener(EventListener)
 */
public ContinuousQuery&lt;K, V&gt; setLocalListener(CacheEntryUpdatedListener&lt;K, V&gt; locLsnr) {
    this.locLsnr = locLsnr;
    return this;
}</data>
  <data key="d2">MethodDeclaration</data>
  <data key="d3">ClassOrInterfaceDeclaration</data>
</node>
<node id="76">
  <data key="d5">userDefinedMethodName</data>
  <data key="d6">setLocalListener</data>
  <data key="d0">153</data>
  <data key="d1">setLocalListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="77">
  <data key="d0">153</data>
  <data key="d1">CacheEntryUpdatedListener&lt;K, V&gt; locLsnr</data>
  <data key="d2">Parameter</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d0">153</data>
  <data key="d1">CacheEntryUpdatedListener&lt;K, V&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">Parameter</data>
</node>
<node id="79">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">CacheEntryUpdatedListener</data>
  <data key="d0">153</data>
  <data key="d1">CacheEntryUpdatedListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="80">
  <data key="d0">153</data>
  <data key="d1">K</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="81">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">K</data>
  <data key="d0">153</data>
  <data key="d1">K</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="82">
  <data key="d0">153</data>
  <data key="d1">V</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="83">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">V</data>
  <data key="d0">153</data>
  <data key="d1">V</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="84">
  <data key="d5">UnknownType</data>
  <data key="d6">locLsnr</data>
  <data key="d0">153</data>
  <data key="d1">locLsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">Parameter</data>
</node>
<node id="85">
  <data key="d0">153</data>
  <data key="d1">ContinuousQuery&lt;K, V&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="86">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">ContinuousQuery</data>
  <data key="d0">153</data>
  <data key="d1">ContinuousQuery</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="87">
  <data key="d0">153</data>
  <data key="d1">K</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="88">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">K</data>
  <data key="d0">153</data>
  <data key="d1">K</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="89">
  <data key="d0">153</data>
  <data key="d1">V</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="90">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">V</data>
  <data key="d0">153</data>
  <data key="d1">V</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="91">
  <data key="d0">153</data>
  <data key="d1">{
    this.locLsnr = locLsnr;
    return this;
}</data>
  <data key="d2">BlockStmt</data>
  <data key="d3">MethodDeclaration</data>
</node>
<node id="92">
  <data key="d6">=</data>
  <data key="d0">154</data>
  <data key="d1">this.locLsnr = locLsnr</data>
  <data key="d2">AssignExpr</data>
  <data key="d3">ExpressionStmt</data>
</node>
<node id="93">
  <data key="d0">154</data>
  <data key="d1">this.locLsnr</data>
  <data key="d2">FieldAccessExpr</data>
  <data key="d3">AssignExpr</data>
</node>
<node id="94">
  <data key="d0">154</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="95">
  <data key="d5">UnknownType</data>
  <data key="d6">locLsnr</data>
  <data key="d0">154</data>
  <data key="d1">locLsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">FieldAccessExpr</data>
</node>
<node id="96">
  <data key="d5">UnknownType</data>
  <data key="d6">locLsnr</data>
  <data key="d0">154</data>
  <data key="d1">locLsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">NameExpr</data>
</node>
<node id="97">
  <data key="d0">156</data>
  <data key="d1">return this;</data>
  <data key="d2">ReturnStmt</data>
  <data key="d3">BlockStmt</data>
</node>
<node id="98">
  <data key="d0">156</data>
  <data key="d1">this</data>
  <data key="d2">ThisExpr</data>
  <data key="d3">ReturnStmt</data>
</node>
<node id="99">
  <data key="d0">115</data>
  <data key="d1">locLsnr</data>
  <data key="d2">VariableDeclarator</data>
  <data key="d3">FieldDeclaration</data>
</node>
<node id="100">
  <data key="d0">115</data>
  <data key="d1">CacheEntryUpdatedListener&lt;K, V&gt;</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">VariableDeclarator</data>
</node>
<node id="101">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">CacheEntryUpdatedListener</data>
  <data key="d0">115</data>
  <data key="d1">CacheEntryUpdatedListener</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="102">
  <data key="d0">115</data>
  <data key="d1">K</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="103">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">K</data>
  <data key="d0">115</data>
  <data key="d1">K</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="104">
  <data key="d0">115</data>
  <data key="d1">V</data>
  <data key="d2">ClassOrInterfaceType</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="105">
  <data key="d5">nonQualifiedClassName</data>
  <data key="d6">V</data>
  <data key="d0">115</data>
  <data key="d1">V</data>
  <data key="d2">SimpleName</data>
  <data key="d3">ClassOrInterfaceType</data>
</node>
<node id="106">
  <data key="d5">UnknownType</data>
  <data key="d6">locLsnr</data>
  <data key="d0">115</data>
  <data key="d1">locLsnr</data>
  <data key="d2">SimpleName</data>
  <data key="d3">VariableDeclarator</data>
</node>
<edge source="1" target="3">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="6">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="3">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="52">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="4" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="6">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="7">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="10">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="9">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="15">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="11" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="22">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="17" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="20">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="19" target="55">
  <data key="d8">LAST_READ</data>
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
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="31">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="24" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="28">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="46">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="29" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="33" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="35" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="39" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="44">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="39" target="59">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="59">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="45" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="60">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="48" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="51">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="57">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="62" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="63" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="67" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="70" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="73" target="74">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="75" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="75" target="97">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="76" target="77">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="77" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="80" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="84" target="95">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="84" target="96">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="85" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="85" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="87">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="93" target="99">
  <data key="d8">LAST_FIELD_LEX</data>
</edge>
<edge source="93" target="96">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="94" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="95" target="96">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="95" target="106">
  <data key="d8">FIELD</data>
</edge>
<edge source="97" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="99" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="99" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="106">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="101" target="102">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="102" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="104">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="105">
  <data key="d8">AST</data>
</edge>
</graph></graphml>