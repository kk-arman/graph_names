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
  <data key="d1">114</data>
  <data key="d2">@Test
public void testDifferentRefreshTokenMaintainsState() throws Exception {
    // create access token
    getTokenServices().setAccessTokenValiditySeconds(1);
    getTokenServices().setClientDetailsService(new ClientDetailsService() {

        public ClientDetails loadClientByClientId(String clientId) throws OAuth2Exception {
            BaseClientDetails client = new BaseClientDetails();
            client.setAccessTokenValiditySeconds(1);
            client.setAuthorizedGrantTypes(Arrays.asList("authorization_code", "refresh_token"));
            return client;
        }
    });
    OAuth2Authentication expectedAuthentication = new OAuth2Authentication(RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read")), new TestAuthentication("test2", false));
    DefaultOAuth2AccessToken firstAccessToken = (DefaultOAuth2AccessToken) getTokenServices().createAccessToken(expectedAuthentication);
    OAuth2RefreshToken expectedExpiringRefreshToken = firstAccessToken.getRefreshToken();
    // Make it expire (and rely on mutable state in volatile token store)
    firstAccessToken.setExpiration(new Date(System.currentTimeMillis() - 1000));
    // create another access token
    OAuth2AccessToken secondAccessToken = getTokenServices().createAccessToken(expectedAuthentication);
    assertFalse("The new access token should be different", firstAccessToken.getValue().equals(secondAccessToken.getValue()));
    assertEquals("The new access token should have the same refresh token", expectedExpiringRefreshToken.getValue(), secondAccessToken.getRefreshToken().getValue());
    // refresh access token with refresh token
    TokenRequest tokenRequest = new TokenRequest(Collections.singletonMap("client_id", "id"), "id", Collections.singleton("read"), null);
    getTokenServices().refreshAccessToken(expectedExpiringRefreshToken.getValue(), tokenRequest);
    assertEquals(1, getAccessTokenCount());
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="2">
  <data key="d1">114</data>
  <data key="d2">@Test</data>
  <data key="d3">MarkerAnnotationExpr</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="3">
  <data key="d6">Test</data>
  <data key="d1">114</data>
  <data key="d2">Test</data>
  <data key="d3">Name</data>
  <data key="d4">MarkerAnnotationExpr</data>
  <data key="d5">true</data>
</node>
<node id="4">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">testDifferentRefreshTokenMaintainsState</data>
  <data key="d1">115</data>
  <data key="d2">testDifferentRefreshTokenMaintainsState</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="5">
  <data key="d1">115</data>
  <data key="d2">Exception</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="6">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Exception</data>
  <data key="d1">115</data>
  <data key="d2">Exception</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="7">
  <data key="d1">115</data>
  <data key="d2">void</data>
  <data key="d3">VoidType</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="8">
  <data key="d1">115</data>
  <data key="d2">{
    // create access token
    getTokenServices().setAccessTokenValiditySeconds(1);
    getTokenServices().setClientDetailsService(new ClientDetailsService() {

        public ClientDetails loadClientByClientId(String clientId) throws OAuth2Exception {
            BaseClientDetails client = new BaseClientDetails();
            client.setAccessTokenValiditySeconds(1);
            client.setAuthorizedGrantTypes(Arrays.asList("authorization_code", "refresh_token"));
            return client;
        }
    });
    OAuth2Authentication expectedAuthentication = new OAuth2Authentication(RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read")), new TestAuthentication("test2", false));
    DefaultOAuth2AccessToken firstAccessToken = (DefaultOAuth2AccessToken) getTokenServices().createAccessToken(expectedAuthentication);
    OAuth2RefreshToken expectedExpiringRefreshToken = firstAccessToken.getRefreshToken();
    // Make it expire (and rely on mutable state in volatile token store)
    firstAccessToken.setExpiration(new Date(System.currentTimeMillis() - 1000));
    // create another access token
    OAuth2AccessToken secondAccessToken = getTokenServices().createAccessToken(expectedAuthentication);
    assertFalse("The new access token should be different", firstAccessToken.getValue().equals(secondAccessToken.getValue()));
    assertEquals("The new access token should have the same refresh token", expectedExpiringRefreshToken.getValue(), secondAccessToken.getRefreshToken().getValue());
    // refresh access token with refresh token
    TokenRequest tokenRequest = new TokenRequest(Collections.singletonMap("client_id", "id"), "id", Collections.singleton("read"), null);
    getTokenServices().refreshAccessToken(expectedExpiringRefreshToken.getValue(), tokenRequest);
    assertEquals(1, getAccessTokenCount());
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
  <data key="d5">true</data>
</node>
<node id="9">
  <data key="d1">117</data>
  <data key="d2">getTokenServices().setAccessTokenValiditySeconds(1)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="10">
  <data key="d1">117</data>
  <data key="d2">getTokenServices()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="11">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getTokenServices</data>
  <data key="d1">117</data>
  <data key="d2">getTokenServices</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="12">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setAccessTokenValiditySeconds</data>
  <data key="d1">117</data>
  <data key="d2">setAccessTokenValiditySeconds</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="13">
  <data key="d6">1</data>
  <data key="d1">117</data>
  <data key="d2">1</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="14">
  <data key="d1">126</data>
  <data key="d2">OAuth2Authentication expectedAuthentication = new OAuth2Authentication(RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read")), new TestAuthentication("test2", false))</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="15">
  <data key="d1">126</data>
  <data key="d2">expectedAuthentication = new OAuth2Authentication(RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read")), new TestAuthentication("test2", false))</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="16">
  <data key="d1">126</data>
  <data key="d2">OAuth2Authentication</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="17">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OAuth2Authentication</data>
  <data key="d1">126</data>
  <data key="d2">OAuth2Authentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="18">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedAuthentication</data>
  <data key="d1">126</data>
  <data key="d2">expectedAuthentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="19">
  <data key="d1">126</data>
  <data key="d2">new OAuth2Authentication(RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read")), new TestAuthentication("test2", false))</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="20">
  <data key="d1">126</data>
  <data key="d2">OAuth2Authentication</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="21">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OAuth2Authentication</data>
  <data key="d1">126</data>
  <data key="d2">OAuth2Authentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="22">
  <data key="d1">126</data>
  <data key="d2">RequestTokenFactory.createOAuth2Request("id", false, Collections.singleton("read"))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="23">
  <data key="d7">UnknownType</data>
  <data key="d6">RequestTokenFactory</data>
  <data key="d1">126</data>
  <data key="d2">RequestTokenFactory</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="24">
  <data key="d7">otherMethodCall</data>
  <data key="d6">createOAuth2Request</data>
  <data key="d1">126</data>
  <data key="d2">createOAuth2Request</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="25">
  <data key="d6">id</data>
  <data key="d1">127</data>
  <data key="d2">"id"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="26">
  <data key="d6">false</data>
  <data key="d1">127</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="27">
  <data key="d1">127</data>
  <data key="d2">Collections.singleton("read")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="28">
  <data key="d7">UnknownType</data>
  <data key="d6">Collections</data>
  <data key="d1">127</data>
  <data key="d2">Collections</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="29">
  <data key="d7">otherMethodCall</data>
  <data key="d6">singleton</data>
  <data key="d1">127</data>
  <data key="d2">singleton</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="30">
  <data key="d6">read</data>
  <data key="d1">127</data>
  <data key="d2">"read"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="31">
  <data key="d1">127</data>
  <data key="d2">new TestAuthentication("test2", false)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="32">
  <data key="d1">127</data>
  <data key="d2">TestAuthentication</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="33">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">TestAuthentication</data>
  <data key="d1">127</data>
  <data key="d2">TestAuthentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="34">
  <data key="d6">test2</data>
  <data key="d1">127</data>
  <data key="d2">"test2"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="35">
  <data key="d6">false</data>
  <data key="d1">127</data>
  <data key="d2">false</data>
  <data key="d3">BooleanLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="36">
  <data key="d1">128</data>
  <data key="d2">DefaultOAuth2AccessToken firstAccessToken = (DefaultOAuth2AccessToken) getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="37">
  <data key="d1">128</data>
  <data key="d2">firstAccessToken = (DefaultOAuth2AccessToken) getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="38">
  <data key="d1">128</data>
  <data key="d2">DefaultOAuth2AccessToken</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="39">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">DefaultOAuth2AccessToken</data>
  <data key="d1">128</data>
  <data key="d2">DefaultOAuth2AccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="40">
  <data key="d7">UnknownType</data>
  <data key="d6">firstAccessToken</data>
  <data key="d1">128</data>
  <data key="d2">firstAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="41">
  <data key="d1">128</data>
  <data key="d2">(DefaultOAuth2AccessToken) getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">CastExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="42">
  <data key="d1">128</data>
  <data key="d2">DefaultOAuth2AccessToken</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="43">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">DefaultOAuth2AccessToken</data>
  <data key="d1">128</data>
  <data key="d2">DefaultOAuth2AccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="44">
  <data key="d1">128</data>
  <data key="d2">getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">CastExpr</data>
  <data key="d5">true</data>
</node>
<node id="45">
  <data key="d1">128</data>
  <data key="d2">getTokenServices()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="46">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getTokenServices</data>
  <data key="d1">128</data>
  <data key="d2">getTokenServices</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="47">
  <data key="d7">otherMethodCall</data>
  <data key="d6">createAccessToken</data>
  <data key="d1">128</data>
  <data key="d2">createAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="48">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedAuthentication</data>
  <data key="d1">129</data>
  <data key="d2">expectedAuthentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="49">
  <data key="d1">130</data>
  <data key="d2">OAuth2RefreshToken expectedExpiringRefreshToken = firstAccessToken.getRefreshToken()</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="50">
  <data key="d1">130</data>
  <data key="d2">expectedExpiringRefreshToken = firstAccessToken.getRefreshToken()</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="51">
  <data key="d1">130</data>
  <data key="d2">OAuth2RefreshToken</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="52">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OAuth2RefreshToken</data>
  <data key="d1">130</data>
  <data key="d2">OAuth2RefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="53">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedExpiringRefreshToken</data>
  <data key="d1">130</data>
  <data key="d2">expectedExpiringRefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="54">
  <data key="d1">130</data>
  <data key="d2">firstAccessToken.getRefreshToken()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="55">
  <data key="d7">UnknownType</data>
  <data key="d6">firstAccessToken</data>
  <data key="d1">130</data>
  <data key="d2">firstAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="56">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRefreshToken</data>
  <data key="d1">130</data>
  <data key="d2">getRefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="57">
  <data key="d1">132</data>
  <data key="d2">firstAccessToken.setExpiration(new Date(System.currentTimeMillis() - 1000))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="58">
  <data key="d7">UnknownType</data>
  <data key="d6">firstAccessToken</data>
  <data key="d1">132</data>
  <data key="d2">firstAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="59">
  <data key="d7">otherMethodCall</data>
  <data key="d6">setExpiration</data>
  <data key="d1">132</data>
  <data key="d2">setExpiration</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="60">
  <data key="d1">132</data>
  <data key="d2">new Date(System.currentTimeMillis() - 1000)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="61">
  <data key="d1">132</data>
  <data key="d2">Date</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="62">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Date</data>
  <data key="d1">132</data>
  <data key="d2">Date</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="63">
  <data key="d1">132</data>
  <data key="d2">System.currentTimeMillis() - 1000</data>
  <data key="d3">BinaryExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="64">
  <data key="d1">132</data>
  <data key="d2">System.currentTimeMillis()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">true</data>
</node>
<node id="65">
  <data key="d7">UnknownType</data>
  <data key="d6">System</data>
  <data key="d1">132</data>
  <data key="d2">System</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="66">
  <data key="d7">otherMethodCall</data>
  <data key="d6">currentTimeMillis</data>
  <data key="d1">132</data>
  <data key="d2">currentTimeMillis</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="67">
  <data key="d6">1000</data>
  <data key="d1">132</data>
  <data key="d2">1000</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">BinaryExpr</data>
  <data key="d5">true</data>
</node>
<node id="68">
  <data key="d1">134</data>
  <data key="d2">OAuth2AccessToken secondAccessToken = getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="69">
  <data key="d1">134</data>
  <data key="d2">secondAccessToken = getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="70">
  <data key="d1">134</data>
  <data key="d2">OAuth2AccessToken</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="71">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OAuth2AccessToken</data>
  <data key="d1">134</data>
  <data key="d2">OAuth2AccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="72">
  <data key="d7">UnknownType</data>
  <data key="d6">secondAccessToken</data>
  <data key="d1">134</data>
  <data key="d2">secondAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="73">
  <data key="d1">134</data>
  <data key="d2">getTokenServices().createAccessToken(expectedAuthentication)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="74">
  <data key="d1">134</data>
  <data key="d2">getTokenServices()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="75">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getTokenServices</data>
  <data key="d1">134</data>
  <data key="d2">getTokenServices</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="76">
  <data key="d7">otherMethodCall</data>
  <data key="d6">createAccessToken</data>
  <data key="d1">134</data>
  <data key="d2">createAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="77">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedAuthentication</data>
  <data key="d1">134</data>
  <data key="d2">expectedAuthentication</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="78">
  <data key="d1">135</data>
  <data key="d2">assertFalse("The new access token should be different", firstAccessToken.getValue().equals(secondAccessToken.getValue()))</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="79">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertFalse</data>
  <data key="d1">135</data>
  <data key="d2">assertFalse</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="80">
  <data key="d6">The new access token should be different</data>
  <data key="d1">135</data>
  <data key="d2">"The new access token should be different"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="81">
  <data key="d1">136</data>
  <data key="d2">firstAccessToken.getValue().equals(secondAccessToken.getValue())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="82">
  <data key="d1">136</data>
  <data key="d2">firstAccessToken.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="83">
  <data key="d7">UnknownType</data>
  <data key="d6">firstAccessToken</data>
  <data key="d1">136</data>
  <data key="d2">firstAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="84">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">136</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="85">
  <data key="d7">otherMethodCall</data>
  <data key="d6">equals</data>
  <data key="d1">136</data>
  <data key="d2">equals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="86">
  <data key="d1">136</data>
  <data key="d2">secondAccessToken.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="87">
  <data key="d7">UnknownType</data>
  <data key="d6">secondAccessToken</data>
  <data key="d1">136</data>
  <data key="d2">secondAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="88">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">136</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="89">
  <data key="d1">137</data>
  <data key="d2">assertEquals("The new access token should have the same refresh token", expectedExpiringRefreshToken.getValue(), secondAccessToken.getRefreshToken().getValue())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="90">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">137</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="91">
  <data key="d6">The new access token should have the same refresh token</data>
  <data key="d1">137</data>
  <data key="d2">"The new access token should have the same refresh token"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="92">
  <data key="d1">138</data>
  <data key="d2">expectedExpiringRefreshToken.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="93">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedExpiringRefreshToken</data>
  <data key="d1">138</data>
  <data key="d2">expectedExpiringRefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="94">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">138</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="95">
  <data key="d1">138</data>
  <data key="d2">secondAccessToken.getRefreshToken().getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="96">
  <data key="d1">138</data>
  <data key="d2">secondAccessToken.getRefreshToken()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="97">
  <data key="d7">UnknownType</data>
  <data key="d6">secondAccessToken</data>
  <data key="d1">138</data>
  <data key="d2">secondAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="98">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getRefreshToken</data>
  <data key="d1">138</data>
  <data key="d2">getRefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="99">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">138</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="100">
  <data key="d1">141</data>
  <data key="d2">TokenRequest tokenRequest = new TokenRequest(Collections.singletonMap("client_id", "id"), "id", Collections.singleton("read"), null)</data>
  <data key="d3">VariableDeclarationExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="101">
  <data key="d1">141</data>
  <data key="d2">tokenRequest = new TokenRequest(Collections.singletonMap("client_id", "id"), "id", Collections.singleton("read"), null)</data>
  <data key="d3">VariableDeclarator</data>
  <data key="d4">VariableDeclarationExpr</data>
  <data key="d5">true</data>
</node>
<node id="102">
  <data key="d1">141</data>
  <data key="d2">TokenRequest</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="103">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">TokenRequest</data>
  <data key="d1">141</data>
  <data key="d2">TokenRequest</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="104">
  <data key="d7">UnknownType</data>
  <data key="d6">tokenRequest</data>
  <data key="d1">141</data>
  <data key="d2">tokenRequest</data>
  <data key="d3">SimpleName</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="105">
  <data key="d1">141</data>
  <data key="d2">new TokenRequest(Collections.singletonMap("client_id", "id"), "id", Collections.singleton("read"), null)</data>
  <data key="d3">ObjectCreationExpr</data>
  <data key="d4">VariableDeclarator</data>
  <data key="d5">true</data>
</node>
<node id="106">
  <data key="d1">141</data>
  <data key="d2">TokenRequest</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="107">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">TokenRequest</data>
  <data key="d1">141</data>
  <data key="d2">TokenRequest</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
  <data key="d5">true</data>
</node>
<node id="108">
  <data key="d1">141</data>
  <data key="d2">Collections.singletonMap("client_id", "id")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="109">
  <data key="d7">UnknownType</data>
  <data key="d6">Collections</data>
  <data key="d1">141</data>
  <data key="d2">Collections</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="110">
  <data key="d7">otherMethodCall</data>
  <data key="d6">singletonMap</data>
  <data key="d1">141</data>
  <data key="d2">singletonMap</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="111">
  <data key="d6">client_id</data>
  <data key="d1">141</data>
  <data key="d2">"client_id"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="112">
  <data key="d6">id</data>
  <data key="d1">141</data>
  <data key="d2">"id"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="113">
  <data key="d6">id</data>
  <data key="d1">141</data>
  <data key="d2">"id"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="114">
  <data key="d1">142</data>
  <data key="d2">Collections.singleton("read")</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="115">
  <data key="d7">UnknownType</data>
  <data key="d6">Collections</data>
  <data key="d1">142</data>
  <data key="d2">Collections</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="116">
  <data key="d7">otherMethodCall</data>
  <data key="d6">singleton</data>
  <data key="d1">142</data>
  <data key="d2">singleton</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="117">
  <data key="d6">read</data>
  <data key="d1">142</data>
  <data key="d2">"read"</data>
  <data key="d3">StringLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="118">
  <data key="d1">142</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">ObjectCreationExpr</data>
  <data key="d5">true</data>
</node>
<node id="119">
  <data key="d1">143</data>
  <data key="d2">getTokenServices().refreshAccessToken(expectedExpiringRefreshToken.getValue(), tokenRequest)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="120">
  <data key="d1">143</data>
  <data key="d2">getTokenServices()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="121">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getTokenServices</data>
  <data key="d1">143</data>
  <data key="d2">getTokenServices</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="122">
  <data key="d7">otherMethodCall</data>
  <data key="d6">refreshAccessToken</data>
  <data key="d1">143</data>
  <data key="d2">refreshAccessToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="123">
  <data key="d1">143</data>
  <data key="d2">expectedExpiringRefreshToken.getValue()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="124">
  <data key="d7">UnknownType</data>
  <data key="d6">expectedExpiringRefreshToken</data>
  <data key="d1">143</data>
  <data key="d2">expectedExpiringRefreshToken</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="125">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getValue</data>
  <data key="d1">143</data>
  <data key="d2">getValue</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="126">
  <data key="d7">UnknownType</data>
  <data key="d6">tokenRequest</data>
  <data key="d1">143</data>
  <data key="d2">tokenRequest</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
  <data key="d5">true</data>
</node>
<node id="127">
  <data key="d1">144</data>
  <data key="d2">assertEquals(1, getAccessTokenCount())</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ExpressionStmt</data>
  <data key="d5">true</data>
</node>
<node id="128">
  <data key="d7">otherMethodCall</data>
  <data key="d6">assertEquals</data>
  <data key="d1">144</data>
  <data key="d2">assertEquals</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="129">
  <data key="d6">1</data>
  <data key="d1">144</data>
  <data key="d2">1</data>
  <data key="d3">IntegerLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="130">
  <data key="d1">144</data>
  <data key="d2">getAccessTokenCount()</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="131">
  <data key="d7">otherMethodCall</data>
  <data key="d6">getAccessTokenCount</data>
  <data key="d1">144</data>
  <data key="d2">getAccessTokenCount</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
  <data key="d5">true</data>
</node>
<node id="132">
  <data key="d0">public,static</data>
  <data key="d1">49</data>
  <data key="d2">public static OAuth2Request createOAuth2Request(Map&lt;String, String&gt; parameters, String clientId, boolean approved, Collection&lt;String&gt; scope) {
    return createOAuth2Request(parameters, clientId, null, approved, scope, null, null, null, null);
}</data>
  <data key="d3">MethodDeclaration</data>
  <data key="d4">ClassOrInterfaceDeclaration</data>
</node>
<node id="133">
  <data key="d7">userDefinedMethodName</data>
  <data key="d6">createOAuth2Request</data>
  <data key="d1">49</data>
  <data key="d2">createOAuth2Request</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="134">
  <data key="d1">49</data>
  <data key="d2">Map&lt;String, String&gt; parameters</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="135">
  <data key="d1">49</data>
  <data key="d2">Map&lt;String, String&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="136">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Map</data>
  <data key="d1">49</data>
  <data key="d2">Map</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="137">
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="138">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="139">
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="140">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="141">
  <data key="d7">java.util.Map</data>
  <data key="d6">parameters</data>
  <data key="d1">49</data>
  <data key="d2">parameters</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="142">
  <data key="d1">49</data>
  <data key="d2">String clientId</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="143">
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="144">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">49</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="145">
  <data key="d7">java.lang.String</data>
  <data key="d6">clientId</data>
  <data key="d1">49</data>
  <data key="d2">clientId</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="146">
  <data key="d1">49</data>
  <data key="d2">boolean approved</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="147">
  <data key="d6">boolean</data>
  <data key="d1">49</data>
  <data key="d2">boolean</data>
  <data key="d3">PrimitiveType</data>
  <data key="d4">Parameter</data>
</node>
<node id="148">
  <data key="d7">boolean</data>
  <data key="d6">approved</data>
  <data key="d1">49</data>
  <data key="d2">approved</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="149">
  <data key="d1">50</data>
  <data key="d2">Collection&lt;String&gt; scope</data>
  <data key="d3">Parameter</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="150">
  <data key="d1">50</data>
  <data key="d2">Collection&lt;String&gt;</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">Parameter</data>
</node>
<node id="151">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">Collection</data>
  <data key="d1">50</data>
  <data key="d2">Collection</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="152">
  <data key="d1">50</data>
  <data key="d2">String</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="153">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">String</data>
  <data key="d1">50</data>
  <data key="d2">String</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="154">
  <data key="d7">java.util.Collection</data>
  <data key="d6">scope</data>
  <data key="d1">50</data>
  <data key="d2">scope</data>
  <data key="d3">SimpleName</data>
  <data key="d4">Parameter</data>
</node>
<node id="155">
  <data key="d1">49</data>
  <data key="d2">OAuth2Request</data>
  <data key="d3">ClassOrInterfaceType</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="156">
  <data key="d7">nonQualifiedClassName</data>
  <data key="d6">OAuth2Request</data>
  <data key="d1">49</data>
  <data key="d2">OAuth2Request</data>
  <data key="d3">SimpleName</data>
  <data key="d4">ClassOrInterfaceType</data>
</node>
<node id="157">
  <data key="d1">50</data>
  <data key="d2">{
    return createOAuth2Request(parameters, clientId, null, approved, scope, null, null, null, null);
}</data>
  <data key="d3">BlockStmt</data>
  <data key="d4">MethodDeclaration</data>
</node>
<node id="158">
  <data key="d1">51</data>
  <data key="d2">return createOAuth2Request(parameters, clientId, null, approved, scope, null, null, null, null);</data>
  <data key="d3">ReturnStmt</data>
  <data key="d4">BlockStmt</data>
</node>
<node id="159">
  <data key="d1">51</data>
  <data key="d2">createOAuth2Request(parameters, clientId, null, approved, scope, null, null, null, null)</data>
  <data key="d3">MethodCallExpr</data>
  <data key="d4">ReturnStmt</data>
</node>
<node id="160">
  <data key="d7">otherMethodCall</data>
  <data key="d6">createOAuth2Request</data>
  <data key="d1">51</data>
  <data key="d2">createOAuth2Request</data>
  <data key="d3">SimpleName</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="161">
  <data key="d7">java.util.Map</data>
  <data key="d6">parameters</data>
  <data key="d1">51</data>
  <data key="d2">parameters</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="162">
  <data key="d7">java.lang.String</data>
  <data key="d6">clientId</data>
  <data key="d1">51</data>
  <data key="d2">clientId</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="163">
  <data key="d1">51</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="164">
  <data key="d7">boolean</data>
  <data key="d6">approved</data>
  <data key="d1">51</data>
  <data key="d2">approved</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="165">
  <data key="d7">java.util.Collection</data>
  <data key="d6">scope</data>
  <data key="d1">51</data>
  <data key="d2">scope</data>
  <data key="d3">SimpleName</data>
  <data key="d4">NameExpr</data>
</node>
<node id="166">
  <data key="d1">51</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="167">
  <data key="d1">51</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="168">
  <data key="d1">51</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<node id="169">
  <data key="d1">51</data>
  <data key="d2">null</data>
  <data key="d3">NullLiteralExpr</data>
  <data key="d4">MethodCallExpr</data>
</node>
<edge source="1" target="8">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="2">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="4">
  <data key="d8">AST</data>
</edge>
<edge source="1" target="5">
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
<edge source="8" target="68">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="36">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="49">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="89">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="119">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="9">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="14">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="78">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="127">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="57">
  <data key="d8">AST</data>
</edge>
<edge source="8" target="100">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="10">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="12">
  <data key="d8">AST</data>
</edge>
<edge source="9" target="13">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="11">
  <data key="d8">AST</data>
</edge>
<edge source="10" target="12">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="12" target="13">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="15">
  <data key="d8">AST</data>
</edge>
<edge source="14" target="36">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="14" target="25">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="14" target="132">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="19">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="18">
  <data key="d8">AST</data>
</edge>
<edge source="15" target="16">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="17">
  <data key="d8">AST</data>
</edge>
<edge source="16" target="18">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="19">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="18" target="48">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="18" target="77">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="19" target="31">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="22">
  <data key="d8">AST</data>
</edge>
<edge source="19" target="20">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="21">
  <data key="d8">AST</data>
</edge>
<edge source="20" target="22">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="22" target="25">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="24">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="23">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="27">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="26">
  <data key="d8">AST</data>
</edge>
<edge source="22" target="31">
  <data key="d8">NEXT_TOKEN</data>
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
<edge source="26" target="27">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="27" target="30">
  <data key="d8">AST</data>
</edge>
<edge source="27" target="29">
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
<edge source="31" target="35">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="34">
  <data key="d8">AST</data>
</edge>
<edge source="31" target="32">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="33">
  <data key="d8">AST</data>
</edge>
<edge source="32" target="34">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="34" target="35">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="36" target="37">
  <data key="d8">AST</data>
</edge>
<edge source="36" target="49">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="37" target="38">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="41">
  <data key="d8">AST</data>
</edge>
<edge source="37" target="40">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="39">
  <data key="d8">AST</data>
</edge>
<edge source="38" target="40">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="41">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="40" target="55">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="40" target="58">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="40" target="83">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="41" target="44">
  <data key="d8">AST</data>
</edge>
<edge source="41" target="42">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="43">
  <data key="d8">AST</data>
</edge>
<edge source="42" target="44">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="44" target="45">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="48">
  <data key="d8">AST</data>
</edge>
<edge source="44" target="47">
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
<edge source="48" target="77">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="49" target="50">
  <data key="d8">AST</data>
</edge>
<edge source="49" target="57">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="50" target="54">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="53">
  <data key="d8">AST</data>
</edge>
<edge source="50" target="51">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="52">
  <data key="d8">AST</data>
</edge>
<edge source="51" target="53">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="54">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="53" target="93">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="53" target="124">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="54" target="55">
  <data key="d8">AST</data>
</edge>
<edge source="54" target="56">
  <data key="d8">AST</data>
</edge>
<edge source="55" target="56">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="55" target="58">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="57" target="59">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="58">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="60">
  <data key="d8">AST</data>
</edge>
<edge source="57" target="68">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="59">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="58" target="83">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="59" target="60">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="60" target="63">
  <data key="d8">AST</data>
</edge>
<edge source="60" target="61">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="62">
  <data key="d8">AST</data>
</edge>
<edge source="61" target="63">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="63" target="67">
  <data key="d8">AST</data>
</edge>
<edge source="63" target="64">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="66">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="65">
  <data key="d8">AST</data>
</edge>
<edge source="64" target="67">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="65" target="66">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="69">
  <data key="d8">AST</data>
</edge>
<edge source="68" target="78">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="68" target="81">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="69" target="70">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="73">
  <data key="d8">AST</data>
</edge>
<edge source="69" target="72">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="71">
  <data key="d8">AST</data>
</edge>
<edge source="70" target="72">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="73">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="72" target="87">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="72" target="97">
  <data key="d8">LAST_WRITE</data>
</edge>
<edge source="73" target="77">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="76">
  <data key="d8">AST</data>
</edge>
<edge source="73" target="74">
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
<edge source="78" target="81">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="78" target="80">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="79">
  <data key="d8">AST</data>
</edge>
<edge source="78" target="89">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="78" target="92">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="79" target="80">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="80" target="81">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="81" target="82">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="86">
  <data key="d8">AST</data>
</edge>
<edge source="81" target="85">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="83">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="84">
  <data key="d8">AST</data>
</edge>
<edge source="82" target="85">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="83" target="84">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="85" target="86">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="86" target="87">
  <data key="d8">AST</data>
</edge>
<edge source="86" target="88">
  <data key="d8">AST</data>
</edge>
<edge source="87" target="88">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="87" target="97">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="89" target="91">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="95">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="90">
  <data key="d8">AST</data>
</edge>
<edge source="89" target="92">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="89" target="100">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="90" target="91">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="91" target="92">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="92" target="94">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="93">
  <data key="d8">AST</data>
</edge>
<edge source="92" target="95">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="94">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="93" target="124">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="95" target="99">
  <data key="d8">AST</data>
</edge>
<edge source="95" target="96">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="98">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="97">
  <data key="d8">AST</data>
</edge>
<edge source="96" target="99">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="97" target="98">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="100" target="101">
  <data key="d8">AST</data>
</edge>
<edge source="100" target="119">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="100" target="114">
  <data key="d8">CONTROL_FLOW</data>
</edge>
<edge source="101" target="105">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="104">
  <data key="d8">AST</data>
</edge>
<edge source="101" target="102">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="103">
  <data key="d8">AST</data>
</edge>
<edge source="102" target="104">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="105">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="104" target="126">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="105" target="113">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="106">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="118">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="108">
  <data key="d8">AST</data>
</edge>
<edge source="105" target="114">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="107">
  <data key="d8">AST</data>
</edge>
<edge source="106" target="108">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="108" target="112">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="111">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="110">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="109">
  <data key="d8">AST</data>
</edge>
<edge source="108" target="113">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="109" target="110">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="110" target="111">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="111" target="112">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="113" target="114">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="114" target="117">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="116">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="115">
  <data key="d8">AST</data>
</edge>
<edge source="114" target="118">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="115" target="116">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="116" target="117">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="119" target="122">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="126">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="120">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="123">
  <data key="d8">AST</data>
</edge>
<edge source="119" target="127">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="120" target="121">
  <data key="d8">AST</data>
</edge>
<edge source="120" target="122">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="122" target="123">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="123" target="125">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="124">
  <data key="d8">AST</data>
</edge>
<edge source="123" target="126">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="124" target="125">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="127" target="130">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="129">
  <data key="d8">AST</data>
</edge>
<edge source="127" target="128">
  <data key="d8">AST</data>
</edge>
<edge source="128" target="129">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="129" target="130">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="130" target="131">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="134">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="149">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="157">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="146">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="155">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="142">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="133">
  <data key="d8">AST</data>
</edge>
<edge source="132" target="158">
  <data key="d8">RETURNS_TO</data>
</edge>
<edge source="133" target="134">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="134" target="135">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="141">
  <data key="d8">AST</data>
</edge>
<edge source="134" target="142">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="135" target="136">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="137">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="139">
  <data key="d8">AST</data>
</edge>
<edge source="135" target="141">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="136" target="137">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="137" target="138">
  <data key="d8">AST</data>
</edge>
<edge source="137" target="139">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="139" target="140">
  <data key="d8">AST</data>
</edge>
<edge source="141" target="161">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="142" target="143">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="145">
  <data key="d8">AST</data>
</edge>
<edge source="142" target="146">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="143" target="144">
  <data key="d8">AST</data>
</edge>
<edge source="143" target="145">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="145" target="162">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="146" target="147">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="148">
  <data key="d8">AST</data>
</edge>
<edge source="146" target="149">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="147" target="148">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="148" target="164">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="149" target="150">
  <data key="d8">AST</data>
</edge>
<edge source="149" target="154">
  <data key="d8">AST</data>
</edge>
<edge source="149" target="155">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="150" target="151">
  <data key="d8">AST</data>
</edge>
<edge source="150" target="152">
  <data key="d8">AST</data>
</edge>
<edge source="150" target="154">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="151" target="152">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="152" target="153">
  <data key="d8">AST</data>
</edge>
<edge source="154" target="165">
  <data key="d8">LAST_READ</data>
</edge>
<edge source="155" target="156">
  <data key="d8">AST</data>
</edge>
<edge source="155" target="157">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="157" target="158">
  <data key="d8">AST</data>
</edge>
<edge source="158" target="159">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="168">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="162">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="165">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="169">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="160">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="163">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="161">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="166">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="164">
  <data key="d8">AST</data>
</edge>
<edge source="159" target="167">
  <data key="d8">AST</data>
</edge>
<edge source="160" target="161">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="161" target="162">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="162" target="163">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="163" target="164">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="164" target="165">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="165" target="166">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="166" target="167">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="167" target="168">
  <data key="d8">NEXT_TOKEN</data>
</edge>
<edge source="168" target="169">
  <data key="d8">NEXT_TOKEN</data>
</edge>
</graph></graphml>