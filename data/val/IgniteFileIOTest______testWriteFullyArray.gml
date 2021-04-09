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
  <data key="d1">284</data>
  <data key="d2">/**
 * test for 'full write' functionality.
 */
@Test
public void testWriteFullyArray() throws Exception {
    byte[] arr = new byte[TEST_DATA_SIZE];
    byte[] arrSrc = new byte[TEST_DATA_SIZE];
    fillRandomArray(arrSrc);
    TestFileIO fileIO = new TestFileIO(arr) {

        @Override
        public int write(byte[] buf, int off, int len) throws IOException {
            return super.write(buf, off, len &lt; 2 ? len : (len &gt;&gt; 1));
        }
    };
    fileIO.writeFully(arrSrc, 0, arrSrc.length);
    assert compareArrays(arr, arrSrc);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">284</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">284</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testWriteFullyArray</data>
  <data key="d1">285</data>
  <data key="d2">testWriteFullyArray</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">285</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">285</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">285</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">285</data>
  <data key="d2">{
    byte[] arr = new byte[TEST_DATA_SIZE];
    byte[] arrSrc = new byte[TEST_DATA_SIZE];
    fillRandomArray(arrSrc);
    TestFileIO fileIO = new TestFileIO(arr) {

        @Override
        public int write(byte[] buf, int off, int len) throws IOException {
            return super.write(buf, off, len &lt; 2 ? len : (len &gt;&gt; 1));
        }
    };
    fileIO.writeFully(arrSrc, 0, arrSrc.length);
    assert compareArrays(arr, arrSrc);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">286</data>
  <data key="d2">byte[] arr = new byte[TEST_DATA_SIZE]</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">286</data>
  <data key="d2">arr = new byte[TEST_DATA_SIZE]</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d1">286</data>
  <data key="d2">byte[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d6">byte</data>
  <data key="d1">286</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayType</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d7">byte[]</data>
  <data key="d6">arr</data>
  <data key="d1">286</data>
  <data key="d2">arr</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">286</data>
  <data key="d2">new byte[TEST_DATA_SIZE]</data>
  <data key="d3">ArrayCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d6">byte</data>
  <data key="d1">286</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d1">286</data>
  <data key="d2">[TEST_DATA_SIZE]</data>
  <data key="d3">ArrayCreationLevel</data>
  <data key="d4">ArrayCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">int</data>
  <data key="d6">TEST_DATA_SIZE</data>
  <data key="d1">286</data>
  <data key="d2">TEST_DATA_SIZE</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d1">288</data>
  <data key="d2">byte[] arrSrc = new byte[TEST_DATA_SIZE]</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">288</data>
  <data key="d2">arrSrc = new byte[TEST_DATA_SIZE]</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d1">288</data>
  <data key="d2">byte[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d6">byte</data>
  <data key="d1">288</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayType</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d7">byte[]</data>
  <data key="d6">arrSrc</data>
  <data key="d1">288</data>
  <data key="d2">arrSrc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d1">288</data>
  <data key="d2">new byte[TEST_DATA_SIZE]</data>
  <data key="d3">ArrayCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d6">byte</data>
  <data key="d1">288</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d1">288</data>
  <data key="d2">[TEST_DATA_SIZE]</data>
  <data key="d3">ArrayCreationLevel</data>
  <data key="d4">ArrayCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d7">int</data>
  <data key="d6">TEST_DATA_SIZE</data>
  <data key="d1">288</data>
  <data key="d2">TEST_DATA_SIZE</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">290</data>
  <data key="d2">fillRandomArray(arrSrc)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">otherMethodCall</data>
  <data key="d6">fillRandomArray</data>
  <data key="d1">290</data>
  <data key="d2">fillRandomArray</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">byte[]</data>
  <data key="d6">arrSrc</data>
  <data key="d1">290</data>
  <data key="d2">arrSrc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d7">org.apache.ignite.internal.processors.cache.persistence.file.IgniteFileIOTest.TestFileIO</data>
  <data key="d6">fileIO</data>
  <data key="d1">292</data>
  <data key="d2">fileIO</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d7">UnknownType</data>
  <data key="d6">arr</data>
  <data key="d1">292</data>
  <data key="d2">arr</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">298</data>
  <data key="d2">fileIO.writeFully(arrSrc, 0, arrSrc.length)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d7">org.apache.ignite.internal.processors.cache.persistence.file.IgniteFileIOTest.TestFileIO</data>
  <data key="d6">fileIO</data>
  <data key="d1">298</data>
  <data key="d2">fileIO</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d7">otherMethodCall</data>
  <data key="d6">writeFully</data>
  <data key="d1">298</data>
  <data key="d2">writeFully</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d7">byte[]</data>
  <data key="d6">arrSrc</data>
  <data key="d1">298</data>
  <data key="d2">arrSrc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d6">0</data>
  <data key="d1">298</data>
  <data key="d2">0</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">298</data>
  <data key="d2">arrSrc.length</data>
  <data key="d3">FieldAccessExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d7">byte[]</data>
  <data key="d6">arrSrc</data>
  <data key="d1">298</data>
  <data key="d2">arrSrc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">int</data>
  <data key="d6">length</data>
  <data key="d1">298</data>
  <data key="d2">length</data>
  <data key="d3">SimpleName</data>
  <data key="d4">FieldAccessExpr</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d1">300</data>
  <data key="d2">assert compareArrays(arr, arrSrc);</data>
  <data key="d3">AssertStmt</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d1">300</data>
  <data key="d2">compareArrays(arr, arrSrc)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">AssertStmt</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d7">otherMethodCall</data>
  <data key="d6">compareArrays</data>
  <data key="d1">300</data>
  <data key="d2">compareArrays</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d7">byte[]</data>
  <data key="d6">arr</data>
  <data key="d1">300</data>
  <data key="d2">arr</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d7">byte[]</data>
  <data key="d6">arrSrc</data>
  <data key="d1">300</data>
  <data key="d2">arrSrc</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d0">private,static</data>
  <data key="d1">306</data>
  <data key="d2">/**
 * @param arr Array.
 */
private static void fillRandomArray(@NotNull final byte[] arr) {
    ThreadLocalRandom.current().nextBytes(arr);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="46">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">fillRandomArray</data>
  <data key="d1">306</data>
  <data key="d2">fillRandomArray</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="47">
  <data key="d0">final</data>
  <data key="d1">306</data>
  <data key="d2">@NotNull final byte[] arr</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="48">
  <data key="d1">306</data>
  <data key="d2">@NotNull</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">Parameter</data>
</node>
<node id="49">
  <data key="d6">NotNull</data>
  <data key="d1">306</data>
  <data key="d2">NotNull</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="50">
  <data key="d1">306</data>
  <data key="d2">byte[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">Parameter</data>
</node>
<node id="51">
  <data key="d6">byte</data>
  <data key="d1">306</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayType</data>
</node>
<node id="52">
  <data key="d7">byte[]</data>
  <data key="d6">arr</data>
  <data key="d1">306</data>
  <data key="d2">arr</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="53">
  <data key="d1">306</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="54">
  <data key="d1">306</data>
  <data key="d2">{
    ThreadLocalRandom.current().nextBytes(arr);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="55">
  <data key="d1">307</data>
  <data key="d2">ThreadLocalRandom.current().nextBytes(arr)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
</node>
<node id="56">
  <data key="d1">307</data>
  <data key="d2">ThreadLocalRandom.current()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="57">
  <data key="d7">UnknownType</data>
  <data key="d6">ThreadLocalRandom</data>
  <data key="d1">307</data>
  <data key="d2">ThreadLocalRandom</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="58">
  <data key="d7">otherMethodCall</data>
  <data key="d6">current</data>
  <data key="d1">307</data>
  <data key="d2">current</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="59">
  <data key="d7">otherMethodCall</data>
  <data key="d6">nextBytes</data>
  <data key="d1">307</data>
  <data key="d2">nextBytes</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="60">
  <data key="d7">byte[]</data>
  <data key="d6">arr</data>
  <data key="d1">307</data>
  <data key="d2">arr</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="61">
  <data key="d0">private,static</data>
  <data key="d1">314</data>
  <data key="d2">/**
 * @param arr1 Array 1.
 * @param arr2 Array 2.
 */
private static boolean compareArrays(@NotNull final byte[] arr1, @NotNull final byte[] arr2) {
    if (arr1.length != arr2.length)
        return false;
    for (int i = 0; i &lt; arr1.length; i++) if (arr1[i] != arr2[i])
        return false;
    return true;
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="62">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">compareArrays</data>
  <data key="d1">314</data>
  <data key="d2">compareArrays</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="63">
  <data key="d0">final</data>
  <data key="d1">314</data>
  <data key="d2">@NotNull final byte[] arr1</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="64">
  <data key="d1">314</data>
  <data key="d2">@NotNull</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">Parameter</data>
</node>
<node id="65">
  <data key="d6">NotNull</data>
  <data key="d1">314</data>
  <data key="d2">NotNull</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="66">
  <data key="d1">314</data>
  <data key="d2">byte[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">Parameter</data>
</node>
<node id="67">
  <data key="d6">byte</data>
  <data key="d1">314</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayType</data>
</node>
<node id="68">
  <data key="d7">byte[]</data>
  <data key="d6">arr1</data>
  <data key="d1">314</data>
  <data key="d2">arr1</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="69">
  <data key="d0">final</data>
  <data key="d1">314</data>
  <data key="d2">@NotNull final byte[] arr2</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="70">
  <data key="d1">314</data>
  <data key="d2">@NotNull</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">Parameter</data>
</node>
<node id="71">
  <data key="d6">NotNull</data>
  <data key="d1">314</data>
  <data key="d2">NotNull</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
</node>
<node id="72">
  <data key="d1">314</data>
  <data key="d2">byte[]</data>
  <data key="d3">ArrayType</data>
  <data key="d4">Parameter</data>
</node>
<node id="73">
  <data key="d6">byte</data>
  <data key="d1">314</data>
  <data key="d2">byte</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">ArrayType</data>
</node>
<node id="74">
  <data key="d7">byte[]</data>
  <data key="d6">arr2</data>
  <data key="d1">314</data>
  <data key="d2">arr2</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="75">
  <data key="d6">boolean</data>
  <data key="d1">314</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="76">
  <data key="d1">314</data>
  <data key="d2">{
    if (arr1.length != arr2.length)
        return false;
    for (int i = 0; i &lt; arr1.length; i++) if (arr1[i] != arr2[i])
        return false;
    return true;
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="77">
  <data key="d1">322</data>
  <data key="d2">return true;</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="78">
  <data key="d6">true</data>
  <data key="d1">322</data>
  <data key="d2">true</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<edge source="1" target="5">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="7">
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
  <data key="d8">AST</data>
</edge>
<edge source="5" target="7">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="8">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="18">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="10" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="14">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="31">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="13" target="43">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="14" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="27">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="29">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="22" target="35">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="22" target="38">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="22" target="44">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="23" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="23" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="25">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="25" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="29" target="35">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="30" target="33">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="31" target="43">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="32" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="40">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="33" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="35" target="38">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="35" target="44">
  <data key="d8">LAST_LEXICAL_SCOPE_USE</data>
</edge>
<edge source="36" target="37">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="37" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="44">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="43" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="45" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="47" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="52">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="60">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="61" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="77">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="62" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="69">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="66" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="66" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
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
<edge source="76" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="77" target="78">
  <data key="d8">AST</data>
</edge>
</graph></graphml>