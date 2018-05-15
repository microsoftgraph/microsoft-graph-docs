# Authorization and the security API in Microsoft Graph

Security data accessible via the security API in Microsoft Graph is sensitive and is protected by both permissions and Azure Active Directory (AAD) roles.

The security API supports two types of authorization:

- **Application-level authorization**, where there is no signed-in user (for example, a SIEM scenario). The permissions granted to the application determine authorization. </br>Note: this option can also support cases where _Role-Based Access Control_ (aka RBAC) is managed by the application.
- **User delegated authorization**, where a user who is a member of the AAD tenant is signed in. The user must be a member of an AAD Limited Admin role - either _Security Reader_ or _Securty Administrator_, in addition to the application having been granted the required permissions.

If you're calling the security API from Graph Explorer:

- The AAD tenant admin must explicitly grant consent for the requested permissions to the Graph Explorer application.
- The user must be a member of the Security Reader Limited Admin role in AAD (either _Security Reader_ or _Security Administrator_).

> **Note**: Graph Explorer does not support application-level authorization.

If you're calling the security API from a custom or your own application:


- The AAD tenant admin must explicitly grant consent to your application. This is required both for application-level authorization as well as for user delegated authorization.
- If using user delegated authorization, the user must be a member of the _Security Reader_ or _Security Administrator_ Limited Admin role in AAD.

## Managing authorization in security API client applications

Security data provided via the ecurity API in Microsoft Graph is sensitive and must be protected by appropriate authentication and authorization mechanisms. The following table lists the steps to register and create a client application that can access the security API.

| **Who** | **Action** |
|:---------------------|:------------------|
|Application developer or owner|Register application as an enterprise application.|
|Tenant admin|Grant permissions to the application.|
|Tenant admin|Assign Limited Administrator roles to users.|
|Application developer|Sign in as the user and use the application to access Graph Security API.|

**To clarify:**

<style>
  .blue {
    color:rgb(0,0,255);
  }
  .green {
    color:rgb(0,128,0);
  }
  .red {
    color:rgb(128,0,0);
  }
</style>

- **Application registration** only defines which permissions the application needs in order to run. </br>It does NOT grant these permissions to the application.
- The Azure AD tenant administrator MUST explicitly grant the permissions to the application. </br>This MUST be done per tenant and **performed every time** the application permissions are changed in the application registration portal.
- Let’s assume we have: an application: <b class=blue>App</b>, two AAD tenants: <b class=green>T1</b> and <b class=green>T2</b>, and two scopes, or permissions: <b class=red>P1</b> and <b class=red>P2</b>.
    - Application <b class=blue>App</b> registered to require permission <b class=red>P1</b>.
    - When users in tenant <b class=green>T1</b> get an AAD token for this application, the token does not contain any permissions (see next bullet).
    - The AAD Admin of tenant <b class=green>T1</b> explicitly grants permissions to the application <b class=blue>App</b>. From this moment on, when users in tenant <b class=green>T1</b> get an AAD token for <b class=blue>App</b>, it will contain permission <b class=red>P1</b>.
    - When users in tenant <b class=green>T2</b> get an AAD token for application <b class=blue>App</b>, the token does not contain any permissions - because the admin of tenant <b class=green>T2</b> did not yet grant permissions to <b class=blue>App</b>. </br>The procedure of granting permission must be performed **per tenant** and **per application**.
    - The application <b class=blue>App</b> has its registration changed to now require permissions <b class=red>P1</b> and <b class=red>P2</b>.
    - When users in tenant <b class=green>T1</b> get an AAD token for <b class=blue>App</b>, it only contains permission <b class=red>P1</b>. Permissions granted to an application are recorded as snapshots of what was granted - </br>they **do not change automatically** after the application registration (permission) changes.
    - The admin of tenant <b class=green>T2</b> grants permissions <b class=red>P1</b> and <b class=red>P2</b> to the application <b class=blue>App</b>. </br>From this moment on, when users in tenant <b class=green>T2</b> get AAD token for <b class=blue>App</b>, the token will contain permissions <b class=red>P1</b> and <b class=red>P2</b>.

**Note**: for the same application (<b class=blue>App</b>), the AAD token for the application in tenant <b class=green>T1</b> and that for the application in tenant <b class=green>T2</b> contains different permissions, since each tenant admin has granted different permissions to the application (<b class=blue>App</b>).

- To make <b class=blue>App</b> work again in tenant <b class=green>T1</b>, the admin of tenant <b class=green>T1</b> must explicitly grant permissions <b class=red>P1</b> and <b class=red>P2</b> to the application (<b class=blue>App</b>).

## Register an Application in v2.0 endpoint

[Reference link](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-app-registration)

### What you need:

**Application Name:** a string used for the application name. </br>
**Redirect URL:** where the authentication response from AAD is sent. </br>
To begin with, you can use the test client web app homepage. </br>

**Required Permissions:** the permissions that your application requires to be able to call Microsoft Graph.

### What you need to do:

1. Go to https://apps.dev.microsoft.com/ and sign in.</br>**Note**: there is no need to be a tenant admin. You will be redirected to “My applications” list.
2. Click the “**Add an app**” button, and enter an Application Name to create a new application.
3. It will navigate to the registration page for the new application. </br>Click “**Add Platform**”, choose “**Web**”. In the Redirect URL, enter the Redirect URL.
4. Go to section “**Microsoft Graph Permissions**” and under “**Delegated Permissions**”, click the “**Add**” button. A popup dialog appears; choose required permissions (aka scopes).</br>See this [document](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference#security-permissions) for detailed scopes. The Microsoft Graph Security API requires “SecurityEvents.Read.All” scope for GET queries, and “SecurityEvents.ReadWrite.All” scope for PATCH/POST queries.
5. Scroll down to the bottom of the page and click on the “**Save**” button

### What to save for future steps:

- Application Id
- Redirect URL
- List of required permissions

## Granting Permissions to an Application

Application registration only defines which permission the application requires - it does not grant these permissions to the application. An Azure AD tenant administrator must explicitly grant these permissions by making a call to the admin consent endpoint. </br>[Reference link](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-scopes#using-the-admin-consent-endpoint)

### What you need:

**Application Id:** the application ID from application registration portal. </br>
**Redirect URL:** the string you set in the application registration portal for authentication response.

### What you need to do:

In a text editor, create following URL string:

`https://login.microsoftonline.com/common/adminconsent?client_id=<Application Id>&state=12345&redirect_uri=<Redirect URL>`

In a web browser, navigate to this URL, and sign in as a tenant administrator; the popup dialog shows the list of permission the application requires, as specified in the application registration portal. </br>Click “**OK**” to grant the application these permissions.

> **Note:** this step grants permissions to the application - not to users. This means that all users belonging to the AAD tenant that using this application will be granted these permissions - even non-admin users.

## Assigning AAD roles to users

Once an application is granted permissions, everyone with access to the application (that is, members of the AAD tenant) will receive the granted permissions. To further protect sensitive security data, the Microsoft Graph Security API also requires users be assigned the Azure AD **Security Reader** role. </br>Reference links: [admin role](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-assign-admin-roles-azure-portal),  [assign roles](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-users-assign-role-azure-portal).

### What you need:

A tenant admin must perform this step.

### What you need to do:

The admin must:

- Sign in to [azure portal](https://portal.azure.com) (http://portal.azure.com).

- In the menu, select **Azure Active Directory** > **Users**.
- Select the name of the desired user.
- Select **Manage** > **Directory role**.
- Select “Limited administrator”, check the checkbox “Security reader”.
- Click on the “**Save**” button to save the change.

## Create an authentication code

[Reference link](https://developer.microsoft.com/en-us/graph/docs/concepts/auth_v2_user)

### What you need:

**Application ID:** the application ID from application registration portal.</br>
**Redirect URL:** where the authentication response from AAD is sent to. </br>To begin, you can use http://localhost or the test client web app homepage.</br>
**Application Key** (optional): the key of the application, used when developing an application that will use application-only authentication code (i.e. will not support user delegated authentication)

### What you need to do:

There are code samples demonstrating on how to get authentication tokens for in various kinds of applications, authentication libraries are also provided.

|**Type of applications**|**Authentication Library**|
|------------------------|----------------------------|
|[Desktop apps - iOS](https://docs.microsoft.com/en-us/azure/active-directory/develop/guidedsetups/active-directory-ios)|[MSAL.framework: Microsoft Authentication Library Preview for iOS](https://github.com/AzureAD/microsoft-authentication-library-for-objc)|
|[Desktop apps - Android](https://docs.microsoft.com/en-us/azure/active-directory/develop/guidedsetups/active-directory-android)|[Microsoft Authentication Library (MSAL)](http://javadoc.io/doc/com.microsoft.identity.client/msal)|
|[Desktop apps - .Net](https://docs.microsoft.com/en-us/azure/active-directory/develop/guidedsetups/active-directory-windesktop)|[Microsoft Authentication Library (MSAL)](https://www.nuget.org/packages/Microsoft.Identity.Client)|
|[Web apps - JavaScript SPA](https://docs.microsoft.com/en-us/azure/active-directory/develop/guidedsetups/active-directory-javascriptspa)|[Microsoft Authentication Library for JavaScript Preview](https://github.com/AzureAD/microsoft-authentication-library-for-js)|
|[Web apps - .Net Web Server](https://docs.microsoft.com/en-us/azure/active-directory/develop/guidedsetups/active-directory-aspnetwebapp)|OpenIdConnection, Cookies, SystemWeb|
|[Web apps - NodeJS Web App](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-devquickstarts-node-web)||

If the applications do not use any of the existing libraries, please follow this [doc](https://developer.microsoft.com/en-us/graph/docs/concepts/auth_v2_user).

1. Get a code from AAD. The query to call contains parameter for Application ID, Redirect URl, and **required permissions**.
2. Use the code to get an access token.

If you use OpenId Connect library, please see this [doc](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/authenticate) and call</br> `app.UseOpenIdConnectAuthentication()`
> **Note:** In the library, when requesting user delegated authentication tokens, the parameter for the library is “Requested Scopes”. Use “User.Read” for this parameter instead of using whatever the registered application requires. The “Requested Scopes” parameter does NOT affect the permissions contained in the returned authentication tokens, since these are determined by the permissions that the tenant admin granted the application.

Using .Net MSAL library as example:

`var accessToken = (await client.AcquireTokenAsync(scopes)).AccessToken;`

> Note that scopes in above example should be minimum permission such as “User.Read”. However the returned access token can contain scopes such as “User.Read.All” or “User.ReadWrite.All” which were granted by tenant admin for current user tenant.

### What You receive:

A token (string) is returned by AAD that contains your authentication info and the permissions required by the application. Assign this token to the HTTP header as a bearer token, as in the code below:

`request.Headers.Authorization = new AuthenticationHeaderValue("bearer", accessToken);`

Microsoft Graph will validate the information contained in this token and grant, or reject, access.

To view claims contained in the returned token, use NuGet library System.IdentityModel.Tokens.Jwt.

`JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();`</br>
`var securityToken = tokenHandler.ReadToken(accessToken) as JwtSecurityToken;`

### In case you encounter an Authentication failure

The response from Microsoft Graph contains a header called client-request-id, which is a GUID.</br> If access is denied, please specify this GUID when seeking support at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/Microsoft-Graph-Security-API/ct-p/SecurityGraphAPI), so we can help investigate the cause of this authentication failure. 
