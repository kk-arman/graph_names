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
  <data key="d1">NEW_LINE</data>
  <data key="d2">22</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="2">
  <data key="d1">hex:</data>
  <data key="d2">23</data>
  <data key="d3">"hex:"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="3">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">23</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="4">
  <data key="d1">  746869732069732061206c6f6e672073656e74656e636520736f207468617420</data>
  <data key="d2">24</data>
  <data key="d3">"  746869732069732061206c6f6e672073656e74656e636520736f207468617420"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="5">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">24</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="6">
  <data key="d1">  492063616e20656e737572652074686174207468652062797465206172726179</data>
  <data key="d2">25</data>
  <data key="d3">"  492063616e20656e737572652074686174207468652062797465206172726179"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="7">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">25</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="8">
  <data key="d1">  207072696e74696e6720646f657320636f72726563746c792077726170206e69</data>
  <data key="d2">26</data>
  <data key="d3">"  207072696e74696e6720646f657320636f72726563746c792077726170206e69"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="9">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">26</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="10">
  <data key="d1">  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474</data>
  <data key="d2">27</data>
  <data key="d3">"  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="11">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">27</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="12">
  <data key="d1">  7920626c6f636b73206f662062617365363420616e64206865782062696e6172</data>
  <data key="d2">28</data>
  <data key="d3">"  7920626c6f636b73206f662062617365363420616e64206865782062696e6172"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="13">
  <data key="d7">public</data>
  <data key="d2">12</data>
  <data key="d3">@Test
public void shouldPrintByteArray() {
    // given
    byte[] bytes = "this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary".getBytes(UTF_8);
    // then
    assertThat(BinaryArrayFormatter.byteArrayToString(bytes), is("base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE + "  79"));
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="14">
  <data key="d2">12</data>
  <data key="d3">@Test</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="15">
  <data key="d1">Test</data>
  <data key="d2">12</data>
  <data key="d3">Test</data>
  <data key="d4">Name</data>
  <data key="d5">MarkerAnnotationExpr</data>
  <data key="d6">true</data>
</node>
<node id="16">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">shouldPrintByteArray</data>
  <data key="d2">13</data>
  <data key="d3">shouldPrintByteArray</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="17">
  <data key="d2">13</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="18">
  <data key="d2">13</data>
  <data key="d3">{
    // given
    byte[] bytes = "this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary".getBytes(UTF_8);
    // then
    assertThat(BinaryArrayFormatter.byteArrayToString(bytes), is("base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE + "  79"));
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
  <data key="d6">true</data>
</node>
<node id="19">
  <data key="d2">15</data>
  <data key="d3">byte[] bytes = "this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary".getBytes(UTF_8)</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="20">
  <data key="d2">15</data>
  <data key="d3">bytes = "this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary".getBytes(UTF_8)</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">VariableDeclarationExpr</data>
  <data key="d6">true</data>
</node>
<node id="21">
  <data key="d2">15</data>
  <data key="d3">byte[]</data>
  <data key="d4">ArrayType</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="22">
  <data key="d1">byte</data>
  <data key="d2">15</data>
  <data key="d3">byte</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">ArrayType</data>
  <data key="d6">true</data>
</node>
<node id="23">
  <data key="d0">byte[]</data>
  <data key="d1">bytes</data>
  <data key="d2">15</data>
  <data key="d3">bytes</data>
  <data key="d4">SimpleName</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="24">
  <data key="d2">15</data>
  <data key="d3">"this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary".getBytes(UTF_8)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">VariableDeclarator</data>
  <data key="d6">true</data>
</node>
<node id="25">
  <data key="d1">this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary</data>
  <data key="d2">15</data>
  <data key="d3">"this is a long sentence so that I can ensure that the byte array printing does correctly wrap nicely into nice looking and pretty blocks of base64 and hex binary"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="26">
  <data key="d0">otherMethodCall</data>
  <data key="d1">getBytes</data>
  <data key="d2">15</data>
  <data key="d3">getBytes</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="27">
  <data key="d0">java.nio.charset.Charset</data>
  <data key="d1">UTF_8</data>
  <data key="d2">15</data>
  <data key="d3">UTF_8</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="28">
  <data key="d2">18</data>
  <data key="d3">assertThat(BinaryArrayFormatter.byteArrayToString(bytes), is("base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE + "  79"))</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">ExpressionStmt</data>
  <data key="d6">true</data>
</node>
<node id="29">
  <data key="d0">otherMethodCall</data>
  <data key="d1">assertThat</data>
  <data key="d2">18</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="30">
  <data key="d2">18</data>
  <data key="d3">BinaryArrayFormatter.byteArrayToString(bytes)</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="31">
  <data key="d0">UnknownType</data>
  <data key="d1">BinaryArrayFormatter</data>
  <data key="d2">18</data>
  <data key="d3">BinaryArrayFormatter</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="32">
  <data key="d0">otherMethodCall</data>
  <data key="d1">byteArrayToString</data>
  <data key="d2">18</data>
  <data key="d3">byteArrayToString</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="33">
  <data key="d0">byte[]</data>
  <data key="d1">bytes</data>
  <data key="d2">18</data>
  <data key="d3">bytes</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="34">
  <data key="d2">18</data>
  <data key="d3">is("base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE + "  79")</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="35">
  <data key="d0">otherMethodCall</data>
  <data key="d1">is</data>
  <data key="d2">18</data>
  <data key="d3">is</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="36">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE + "  79"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">MethodCallExpr</data>
  <data key="d6">true</data>
</node>
<node id="37">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="38">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE + "  7920626c6f636b73206f662062617365363420616e64206865782062696e6172"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="39">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="40">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE + "  63656c7920696e746f206e696365206c6f6f6b696e6720616e64207072657474"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="41">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="42">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE + "  207072696e74696e6720646f657320636f72726563746c792077726170206e69"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="43">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="44">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE + "  492063616e20656e737572652074686174207468652062797465206172726179"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="45">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="46">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE + "  746869732069732061206c6f6e672073656e74656e636520736f207468617420"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="47">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="48">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE + "hex:"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="49">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk=" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="50">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE + "  NjQgYW5kIGhleCBiaW5hcnk="</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="51">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="52">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE + "  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="53">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="54">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE + "  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="55">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="56">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE + "  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh"</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="57">
  <data key="d2">18</data>
  <data key="d3">"base64:" + NEW_LINE</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="58">
  <data key="d1">base64:</data>
  <data key="d2">18</data>
  <data key="d3">"base64:"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="59">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">28</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="60">
  <data key="d1">  79</data>
  <data key="d2">29</data>
  <data key="d3">"  79"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="61">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">18</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="62">
  <data key="d1">  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh</data>
  <data key="d2">19</data>
  <data key="d3">"  dGhpcyBpcyBhIGxvbmcgc2VudGVuY2Ugc28gdGhhdCBJIGNhbiBlbnN1cmUgdGhh"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="63">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">19</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="64">
  <data key="d1">  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p</data>
  <data key="d2">20</data>
  <data key="d3">"  dCB0aGUgYnl0ZSBhcnJheSBwcmludGluZyBkb2VzIGNvcnJlY3RseSB3cmFwIG5p"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="65">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">20</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="66">
  <data key="d1">  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl</data>
  <data key="d2">21</data>
  <data key="d3">"  Y2VseSBpbnRvIG5pY2UgbG9va2luZyBhbmQgcHJldHR5IGJsb2NrcyBvZiBiYXNl"</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="67">
  <data key="d0">UnknownType</data>
  <data key="d1">NEW_LINE</data>
  <data key="d2">21</data>
  <data key="d3">NEW_LINE</data>
  <data key="d4">SimpleName</data>
  <data key="d5">NameExpr</data>
  <data key="d6">true</data>
</node>
<node id="68">
  <data key="d1">  NjQgYW5kIGhleCBiaW5hcnk=</data>
  <data key="d2">22</data>
  <data key="d3">"  NjQgYW5kIGhleCBiaW5hcnk="</data>
  <data key="d4">StringLiteralExpr</data>
  <data key="d5">BinaryExpr</data>
  <data key="d6">true</data>
</node>
<node id="69">
  <data key="d7">public,static</data>
  <data key="d2">13</data>
  <data key="d3">public static String byteArrayToString(byte[] bytes) {
    if (bytes != null &amp;&amp; bytes.length &gt; 0) {
        return "base64:" + NEW_LINE + "  " + Joiner.on("\n  ").join(Splitter.fixedLength(64).split(Base64.getEncoder().encodeToString(bytes))) + NEW_LINE + "hex:" + NEW_LINE + "  " + Joiner.on("\n  ").join(Splitter.fixedLength(64).split(String.valueOf(Hex.encodeHex(bytes))));
    } else {
        return "base64:" + NEW_LINE + NEW_LINE + "hex:" + NEW_LINE;
    }
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="70">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">byteArrayToString</data>
  <data key="d2">13</data>
  <data key="d3">byteArrayToString</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="71">
  <data key="d2">13</data>
  <data key="d3">byte[] bytes</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="72">
  <data key="d2">13</data>
  <data key="d3">byte[]</data>
  <data key="d4">ArrayType</data>
  <data key="d5">Parameter</data>
</node>
<node id="73">
  <data key="d1">byte</data>
  <data key="d2">13</data>
  <data key="d3">byte</data>
  <data key="d4">PrimitiveType</data>
  <data key="d5">ArrayType</data>
</node>
<node id="74">
  <data key="d0">byte[]</data>
  <data key="d1">bytes</data>
  <data key="d2">13</data>
  <data key="d3">bytes</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="75">
  <data key="d2">13</data>
  <data key="d3">String</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="76">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">String</data>
  <data key="d2">13</data>
  <data key="d3">String</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="77">
  <data key="d2">13</data>
  <data key="d3">{
    if (bytes != null &amp;&amp; bytes.length &gt; 0) {
        return "base64:" + NEW_LINE + "  " + Joiner.on("\n  ").join(Splitter.fixedLength(64).split(Base64.getEncoder().encodeToString(bytes))) + NEW_LINE + "hex:" + NEW_LINE + "  " + Joiner.on("\n  ").join(Splitter.fixedLength(64).split(String.valueOf(Hex.encodeHex(bytes))));
    } else {
        return "base64:" + NEW_LINE + NEW_LINE + "hex:" + NEW_LINE;
    }
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="78">
  <data key="d7">public,static</data>
  <data key="d2">31</data>
  <data key="d3">public static &lt;T&gt; void assertThat(String reason, T actual, Matcher&lt;? super T&gt; matcher) {
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">ClassOrInterfaceDeclaration</data>
</node>
<node id="79">
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">TypeParameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="80">
  <data key="d0">runtimeGenericType</data>
  <data key="d1">T</data>
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">SimpleName</data>
  <data key="d5">TypeParameter</data>
</node>
<node id="81">
  <data key="d0">userDefinedMethodName</data>
  <data key="d1">assertThat</data>
  <data key="d2">31</data>
  <data key="d3">assertThat</data>
  <data key="d4">SimpleName</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="82">
  <data key="d2">31</data>
  <data key="d3">String reason</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="83">
  <data key="d2">31</data>
  <data key="d3">String</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="84">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">String</data>
  <data key="d2">31</data>
  <data key="d3">String</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="85">
  <data key="d0">java.lang.String</data>
  <data key="d1">reason</data>
  <data key="d2">31</data>
  <data key="d3">reason</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="86">
  <data key="d2">31</data>
  <data key="d3">T actual</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="87">
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="88">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">T</data>
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="89">
  <data key="d0">UnknownType</data>
  <data key="d1">actual</data>
  <data key="d2">31</data>
  <data key="d3">actual</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="90">
  <data key="d2">31</data>
  <data key="d3">Matcher&lt;? super T&gt; matcher</data>
  <data key="d4">Parameter</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="91">
  <data key="d2">31</data>
  <data key="d3">Matcher&lt;? super T&gt;</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">Parameter</data>
</node>
<node id="92">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">Matcher</data>
  <data key="d2">31</data>
  <data key="d3">Matcher</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="93">
  <data key="d2">31</data>
  <data key="d3">? super T</data>
  <data key="d4">WildcardType</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="94">
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">WildcardType</data>
</node>
<node id="95">
  <data key="d0">nonQualifiedClassName</data>
  <data key="d1">T</data>
  <data key="d2">31</data>
  <data key="d3">T</data>
  <data key="d4">SimpleName</data>
  <data key="d5">ClassOrInterfaceType</data>
</node>
<node id="96">
  <data key="d0">UnknownType</data>
  <data key="d1">matcher</data>
  <data key="d2">31</data>
  <data key="d3">matcher</data>
  <data key="d4">SimpleName</data>
  <data key="d5">Parameter</data>
</node>
<node id="97">
  <data key="d2">31</data>
  <data key="d3">void</data>
  <data key="d4">VoidType</data>
  <data key="d5">MethodDeclaration</data>
</node>
<node id="98">
  <data key="d2">31</data>
  <data key="d3">{
    if (!matcher.matches(actual)) {
        Description description = new StringDescription();
        description.appendText(reason).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
        matcher.describeMismatch(actual, description);
        throw new BpmnError(description.toString());
    }
}</data>
  <data key="d4">BlockStmt</data>
  <data key="d5">MethodDeclaration</data>
</node>
<edge source="1" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="50">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="2" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="2" target="49">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="3" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="3" target="48">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="4" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="4" target="47">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="5" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="5" target="46">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="6" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="6" target="45">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="7" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="7" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="8" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="43">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="9" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="42">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="10" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="11" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="11" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="12" target="39">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="13" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="13" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="16">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="16" target="17">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="17" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="18" target="28">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="28">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="20" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="21" target="23">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="24">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="23" target="33">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="24" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="24" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="25" target="26">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="28" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="29">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="28" target="78">
  <data key="d8">AST</data>
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
<edge source="30" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="30" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="31" target="32">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="32" target="33">
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
<edge source="36" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="38" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="39" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="40" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="43" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="45" target="46">
  <data key="d8">AST</data>
</edge>
<edge source="46" target="47">
  <data key="d8">AST</data>
</edge>
<edge source="47" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="48" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="52" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="52" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="53" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="65">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="64">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="56" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="56" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="62">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="61">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="69" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="75">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="71" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="74">
  <data key="d8">AST</data>
</edge>
<edge source="71" target="75">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="72" target="74">
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
<edge source="78" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="81">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="79" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="82" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="83" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="90">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="90" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="90" target="97">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="91" target="92">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="91" target="96">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="93">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="94" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="97" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>