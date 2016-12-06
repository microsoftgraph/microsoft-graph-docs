
# Microsoft Graph app authentication using Azure AD

This article presents a detailed look at an example authentication and authorization flow for a Microsoft Graph app. This example uses Azure Active Directory (Azure AD) and the authentication provider, and the <a href="https://msdn.microsoft.com/en-us/library/azure/dn645542.aspx" target="_newtab">Authorization Code Grant Flow</a> as the auth flow. This example will show you how to use Azure AD in a Microsoft Graph app to authenticate a user, get an access token, and renew an access token using a refresh token.

For code grant flows, the authentication process can be broken down to two basic steps:

1. Request an authorization code
2. Use authorization code to request an access token and refresh token. 

You can use the refresh token to acquire a new access token when the current access token expires.
 
##Authenticate a user and get app authorized

To get your app authorized, you must get the user authenticated first. You do this by redirecting the user to the Azure Active Directory (Azure AD) authorization endpoint, along with your app information, to sign in to their work or school account. Once the user is signed in, and consents to 
the permissions requested by your app (if the user has not done so already), your app will receive an authorization code required to acquire an OAuth access token.

> **Note**:  You can do this by calling methods on the [Azure AD Authentication Library (ADAL)](https://msdn.microsoft.com/en-us/library/azure/jj573266.aspx). For more information about authorization flow, see [Authorization Code Grant Flow](https://msdn.microsoft.com/en-us/library/azure/dn645542.aspx).

Authorizing an app starts with submitting an HTTPS GET request using the following URL:
 
```GET https://login.microsoftonline.com/common/oauth2/authorize?response_type=code&redirect_uri=<uri>&client_id=<id>```

**Required query string parameters**

| Parameter name  | Value  | Description                                                                                            |
|:----------------|:-------|:-------------------------------------------------------------------------------------------------------|
| *client_id*     | string | The client ID created for your app. This is your app's **CLIENT ID** value set in the Azure tenant's application registry.                                                                  |
| *response_type* | string | Specifies the requested response type. In an authorization code grant request, the value must be code. |
| *redirect_uri*  | string | The redirect URL that the browser is sent to when authentication is complete.  This value must match the app's pre-configured **REPLY URL** value                        |
 


The following shows an example of such a request as implemented in a running application:


```GET https://login.microsoftonline.com/common/oauth2/authorize?response_type=code&redirect_uri=http%3a%2f%2flocalhost:1339/auth/azureoauth/callback&client_id=8b8539cd-7b75-427f-bef1-4a6264fd4940``` 

This request returns a `200 OK` response and presents the Azure AD account login page. 

After the user signs in with valid credentials and consents to the permissions granted for the app, the login page sends a `POST` request to Azure. If that request succeeds, Azure responds with a `302 Found` message to forward the call to the app's 
redirect URI for the app to receive the required access token. The forwarded URI, specified in the response's `Location` header, corresponds to the app's REPLY URL, with two query parameters, `code=...` and `session_state=...` appended to it. 
The following example shows an excerpt of such a response: 

```no-highlight 
HTTP/1.1 302 Found
Cache-Control: no-cache, no-store
Pragma: no-cache
Content-Type: text/html; charset=utf-8
Expires: -1
Location: http://localhost:1339/auth/azureoauth/callback?code=AAABAAAAvPM...&session_state=a9556cd3-cae6-4bc9-bf51-672f7b79b7c6
Server: Microsoft-IIS/8.5
P3P: CP="DSP CUR OTPi IND OTRi ONL FIN"

..... 
```

In this example, the app's REPLY URL is `http://localhost:1339/auth/azureoauth/callback`. In processing this response, 
you must extract the `code` parameter value and use it to acquire the initial OAuth 2.0 access and refresh tokens (see next section).

> **Note:** The `302 Found` response above is different from the `302 Found` response you would get if you started the login process against 
the `https://login.windows.net/<tenantId>/oauth2/authorize?...` URL. In the latter case, the `302 Found` response forwards your request to `login.microsoftonline.com`.
 
<!---<a name="msg_get_app_authenticated"> </a> -->

##Acquire an access token
To access Microsoft Graph resources, your app must include a valid OAuth 2.0 access token in every HTTP request. You can obtain the access token using the following POST request:

```no-highlight 
POST https://login.microsoftonline.com/common/oauth2/token HTTP/1.1
content-type : application/x-www-form-urlencoded
content-length : 144
```
 
This request requires a URL-encoded payload of the following format:
 
```no-highlight 
grant_type=authorization_code
&redirect_uri=<uri>
&client_id=<id>
&client_secret=<secret_key>
&code=<code>
&resource=https%3A%2F%2Fgraph.microsoft.com%2F
```

**Required query string parameters**

| Parameter name  | Value  | Description                                                                                            |
|:----------------|:-------|:-------------------------------------------------------------------------------------------------------|
| *client_id*     | string | The client ID created for your app.  |
| *client_secret*  | string | The key created for your app. This value is the same value in the **Keys** section of the app configuration page on the Azure Management Portal|
| *redirect_uri*  | string | The redirect URL that the browser is sent to when authentication is complete.  |
| *code*  | string | The authorization code. The `code` query parameter value returned from the response to the authorization request. |
| *resource*   | string | The resource you want to access. To call the Microsoft Graph API, set this parameter value to "https://graph.microsoft.com/".|

The following snippet shows an example of the request payload used to acquire the initial OAuth 2.0 access token:

```no-highlight  
grant_type=authorization_code&
redirect_uri=http%3A%2F%2Flocalhost%3A1339%2Fauth%2Fazureoauth%2Fcallback&
client_id=8b8539cd-7b75-427f-bef1-4a6264fd4940&client_secret=PJW3dznGfyNSm3rM9aHeXWGKsTMepKXT1Eqy45XXdU4%3D&
code=AAABAAAAvPM1KaPlrEqdFSBzjqfTGBLRVQc6BtQmJ_9DQZUg8Tb7TJgTmbTE7AHM93qB5EKc4Bf-bOgzt3mebAywK-09X1uBHwOluuqSWfd9LU2HHgZtxcZFIYI5UL7L1UEvhrJRvX2iHhfz9ZSRMZMVL55n_K79gCOxtSATeCUw52zPk5ZaQ87Y42SCLsRZN4Y_zddhD3mMpkObiHVT8HzfhBUiT0oX0e-Q439vkbZoKiq1HaqMR3IPHiCXDbPPH5u7a4NTe5xAhh-o2MUIe6s4Xqql86sv1-IwyroOJJMueGUarkfbgwqmYL9Tm-jWab8o-BAK_plVsN73GU8cXO8ts30wa2YmNR5ZxSkw8oiB4mSZwGzGQlch55DRnucDs0SZBgj5etGi3SeXv5jhKlDU2S0bAPnGxF3QAH0N_zBpfakETVlcsHKi714u-tn9da6aTPQsE0IYKTAYgxjTMei6zfRFvCZi-tKdFR6X9TvvmF2iPdGQGWKeLw8CMWUzU8VmOhiHc0aBKG6RaXAOTM067J_9WKYPxMopcytD2z8HVkL1QhggAA&
resource=https%3A%2F%2Fgraph.microsoft.com%2F
```

When this request succeeds, a `200 OK` response will be returned. An example is shown as follows:

```no-highlight  
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
Expires: -1
Content-Length: 2978
Access-Control-Allow-Origin: *

{
    "token_type":"Bearer",
    "expires_in":"3599",
    "expires_on":"1426551729",
    "not_before":"1426547829",
    "resource":"https://graph.microsoft.com/",
    "access_token":"eyJ0eXAiOiJKV1QiLCJhb...",
    "refresh_token":"AAABAAAAvPM1KaPlrEqd...",
    "scope": "Calendar.ReadWrite Directory.Read.All Files.ReadWrite Group.ReadWrite.All Mail.ReadWrite Mail.Send User.ReadBasic.All",
    "id_token":"eyJ0eXAiOiJKV1QiLCJhbGci..."
}
```

 
The response body is a JSON-formatted string containing the access token (`access_token`). 
You need to supply this token to any ensuing HTTP requests to access Microsoft Graph  resources. 

The `scope` property value should match the permissions granted for the app during the app's registration.

The access token remains valid within the specified time interval (`3599` in the above example) seconds (or 1 hour) 
from the time of issuance, as specified in the `expires_in` property. The result also contains a refresh token (`refresh_token`) that must be used to renew an expiring or expired access token. 

In any production code, your app needs to watch for the expiration of these tokens and renew the expiring access token before the refresh token expires. 
-->

<!---<a name="msg_renew_access_token using refresh token"> </a> -->

##Renew expiring access token using refresh token
To refresh an expired access token, use a POST request similar to the following example (provided that the refresh token has not expired):

```no-highlight  
POST https://login.microsoftonline.com/common/oauth2/token HTTP/1.1
Host: login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded
Content-Length: 897


grant_type=refresh_token
&redirect_uri=http%3A%2F%2Flocalhost%3A1339%2Fauth%2Fazureoauth%2Fcallback
&client_id=8b8539cd-7b75-427f-bef1-4a6264fd4940
&client_secret=PJW3dznGfyNSm3rM9aHeXWGKsTMepKXT1Eqy45XXdU4%3D
&refresh_token=AAABAAAAvPM1KaPlrEqdFSBzjqfTGM74--...
&resource=https%3A%2F%2Fgraph.microsoft.com%2F
```

**Required query string parameters**

| Parameter name  | Value  | Description                                                                                                                                         |
|:----------------|:-------|:----------------------------------------------------------------------------------------------------------------------------------------------------|
| *client_id*     | string | The client ID created for your application.  |
| *redirect_uri*  | string | The redirect URL that the browser is sent to when authentication is complete. This should match the *redirect_uri* value used in the first request. |
| *client_secret* | string | One of the Keys values created for your application.                                                                                                     |
| *refresh_token* | string | The refresh token you received previously.    |
| *resource*      | string | The resource you want to access.|

Note that this request is almost identical to the initial token acquisition request. There are two differences in the request payload, 
namely, the `grant_type` parameter now has the value of `refresh_token` (instead of `code`).
 
The successful response returns the payload of an JSON string similar to the following output:

```no-highlight 
{
    "token_type":"Bearer",
    "expires_in":"3600",
    "expires_on":"1426561346",
    "not_before":"1426557446",
    "resource":"https://graph.microsoft.com/",
    "access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOi...", 
    "refresh_token":"AAABAAAAvPM1KaPlrEqdFSBzj...",
   "scope":"Graph.Read",
    "pwd_exp":"6553342",
    "pwd_url":"https://portal.microsoftonline.com/ChangePassword.aspx"
}
```
 
Other than the missing `id_token` property, this response body has the identical syntax and semantics as that of 
the initial token-acquiring response. The life times of the newly returned `access_token` and `refresh_token` values 
are extended. The new expiration time for the access token is the number of seconds, specified in the `expires_in` 
value, from the time when the token-refreshing request was submitted successfully. 
 
When the refresh token expires, you cannot renew any expired access token using the just-described POST request. 
Instead, you must restart the app authorization and authentication process.



