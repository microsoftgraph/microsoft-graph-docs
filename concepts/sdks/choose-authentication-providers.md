---
title: "Choose a Microsoft Graph authentication provider"
description: "Learn how to choose scenario-specific authentication providers for your application."
localization_priority: Normal
author: MichaelMainer
---

# Choose a Microsoft Graph authentication provider based on scenario

Authentication providers implement the code required to acquire a token using the Microsoft Authentication Library (MSAL); handle a number of potential errors for cases like incremental consent, expired passwords, and conditional access; and then set the HTTP request authorization header. The following table lists the set of providers that match the scenarios for different [application types](/azure/active-directory/develop/v2-app-types).

|Scenario | Flow/Grant | Audience | Provider|
|--|--|--|--|
| [Single Page App](/azure/active-directory/develop/scenario-spa-acquire-token)| | | |
| | Implicit | Delegated Consumer/Org |[Implicit Provider](#ImplicitProvider) |
| [Web App that calls web APIs](/azure/active-directory/develop/scenario-web-app-call-api-acquire-token) | | | |
| | Authorization Code | Delegated Consumer/Org | [Authorization Code Provider](#AuthCodeProvider) |
| | Client Credentials  | App Only | [Client Credentials Provider](#ClientCredentialsProvider) |
| [Web API that calls web APIs](/azure/active-directory/develop/scenario-web-api-call-api-acquire-token) | | | |
| | On Behalf Of | Delegated Consumer/Org | [On Behalf Of Provider](#OnBehalfOfProvider) |
| | Client Credentials  | App Only | [Client Credentials Provider](#ClientCredentialsProvider) |
| [Desktop app that calls web APIs](/azure/active-directory/develop/scenario-desktop-acquire-token) | | | |
| | Interactive | Delegated Consumer/Org | [Interactive Provider](#InteractiveProvider) |
| | Integrated Windows | Delegated Org | [Integrated Windows Provider](#IntegratedWindowsProvider) |
| | Resource Owner  | Delegated Org | [Username / Password Provider](#UsernamePasswordProvider) |
| | Device Code  | Delegated Org | [Device Code Provider](#DeviceCodeProvider) |
| [Daemon app](/azure/active-directory/develop/scenario-daemon-acquire-token) | | | |
| | Client Credentials  | App Only | [Client Credentials Provider](#ClientCredentialsProvider) |
| [Mobile app that calls web APIs](/azure/active-directory/develop/scenario-mobile-acquire-token) | | | |
| | Interactive | Delegated Consumer/Org | [Interactive Provider](#InteractiveProvider) |


## <a name="AuthCodeProvider" ></a>Authorization code provider

The authorization code flow enables native and web apps to securely obtain tokens in the name of the user. To learn more, see [Microsoft identity platform and OAuth 2.0 authorization code flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow).

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication confidentialClientApplication = ConfidentialClientApplicationBuilder
    .Create(clientId)
    .WithRedirectUri(redirectUri)
    .WithClientSecret(clientSecret) // or .WithCertificate(certificate)
    .Build();

AuthorizationCodeProvider authProvider = new AuthorizationCodeProvider(confidentialClientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. For more information, see [Using a custom authentication provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md).

# [Java](#tab/Java)

```java
AuthorizationCodeProvider authProvider = new AuthorizationCodeProvider(
                                                    clientId,
                                                    scopes,
                                                    authorizationCode,
                                                    redirectUri,
                                                    clientSecret);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

##  <a name="ClientCredentialsProvider"></a>Client credentials provider

The client credential flow enables service applications to run without user interaction. Access is based on the identity of the application. For more information, see [Microsoft identity platform and the OAuth 2.0 client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication confidentialClientApplication = ConfidentialClientApplicationBuilder
    .Create(clientId)
    .WithTenantId(tenantID)
    .WithClientSecret(clientSecret)
    .Build();

ClientCredentialProvider authProvider = new ClientCredentialProvider(confidentialClientApplication);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. For more information, see [Using a custom authentication provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md).

# [Java](#tab/Java)

```java
ClientCredentialProvider authProvider = new ClientCredentialProvider(
                                                    clientId,
                                                    scopes,
                                                    clientSecret,
                                                    tenant,
                                                    NationalCloud.Global);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

##  <a name="OnBehalfOfProvider"></a>On-behalf-of provider

The on-behalf-of flow is applicable when your application calls a service/web API which in turns calls the Microsoft Graph API. Learn more by reading [Microsoft identity platform and OAuth 2.0 On-Behalf-Of flow](/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow)

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication confidentialClientApplication = ConfidentialClientApplicationBuilder
    .Create(clientId)
    .WithRedirectUri(redirectUri)
    .WithClientSecret(clientSecret)
    .Build();

OnBehalfOfProvider authProvider = new OnBehalfOfProvider(confidentialClientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

# [Java](#tab/Java)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## <a name="ImplicitProvider"></a>Implicit provider

The implicit grant flow is used in browser-based applications. For more information, see [Microsoft identity platform and Implicit grant flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow).

# [C#](#tab/CS)

Not applicable.

# [Javascript](#tab/Javascript)

```javascript
const clientId = "your_client_id"; // Client Id of the registered application
const callback = (errorDesc, token, error, tokenType) => {};
// An Optional options for initializing the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#configuration-options
const options = {
	redirectUri: "Your redirect URI",
};
const graphScopes = ["user.read", "mail.send"]; // An array of graph scopes

// Initialize the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#initialization-of-msal
const userAgentApplication = new Msal.UserAgentApplication(clientId, undefined, callback, options);
const authProvider = new MicrosoftGraph.ImplicitMSALAuthenticationProvider(userAgentApplication, graphScopes);

const options = {
	authProvider, // An instance created from previous step
};
const Client = MicrosoftGraph.Client;
const client = Client.initWithMiddleware(options);
```

# [Java](#tab/Java)

Not applicable.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

##  <a name="DeviceCodeProvider"></a>Device code provider

The device code flow enables sign in to devices by way of another device. For details, see [Microsoft identity platform and the OAuth 2.0 device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

# [C#](#tab/CS)

```csharp
IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
            .Create(clientId)
            .Build();

Func<DeviceCodeResult, Task> deviceCodeReadyCallback = async dcr => await Console.Out.WriteLineAsync(dcr.Message);

DeviceCodeProvider authProvider = new DeviceCodeProvider(publicClientApplication, scopes, deviceCodeReadyCallback);
```

# [Javascript](#tab/Javascript)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

##  <a name="IntegratedWindowsProvider"></a>Integrated Windows provider

The integrated Windows flow provides a way for Windows computers to silently acquire an access token when they are domain joined. For details, see [Integrated Windows authentication](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Integrated-Windows-Authentication).

# [C#](#tab/CS)

```csharp
IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
            .Create(clientId)
            .WithTenantId(tenantID)
            .Build();

IntegratedWindowsAuthenticationProvider authProvider = new IntegratedWindowsAuthenticationProvider(publicClientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not applicable.

# [Java](#tab/Java)

Not applicable.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

##  <a name="InteractiveProvider"></a>Interactive provider

The interactive flow is used by mobile applications (Xamarin and UWP) and desktops applications to call Microsoft Graph in the name of a user. For details, see [Acquiring tokens interactively](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-interactively).

# [C#](#tab/CS)

```csharp
IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
            .Create(clientId)
            .Build();

InteractiveAuthenticationProvider authProvider = new InteractiveAuthenticationProvider(publicClientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

```java
PublicClientApplication publicClientApplication = new PublicClientApplication(getApplicationContext(), "CLIENT_ID_OF_YOUR_APPLICATION");
MSALAuthenticationProvider msalAuthenticationProvider = new MSALAuthenticationProvider(
    getActivity(),
    getApplication(),
    publicClientApplication,
    scopes);

IGraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(msalAuthenticationProvider)
    .buildClient();
```

# [Objective-C](#tab/Objective-C)

```objc
NSError *error = nil;
MSALPublicClientApplication *publicClientApplication = [[MSALPublicClientApplication alloc] initWithClientId:@"INSERT-CLIENT-APP-ID"
error:&error];

MSALAuthenticationProviderOptions *authProviderOptions= [[MSALAuthenticationProviderOptions alloc] initWithScopes:<array-of-scopes-for-which-you-need-access-token>];

 MSALAuthenticationProvider *authenticationProvider = [[MSALAuthenticationProvider alloc] initWithPublicClientApplication:publicClientApplication
 andOptions:authProviderOptions];
```

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

##  <a name="UsernamePasswordProvider"></a>Username/password provider

The username/password provider allows an application to sign in a user by using their username and password. Use this flow only when you cannot use any of the other OAuth flows. For more information, see [Microsoft identity platform and the OAuth 2.0 resource owner password credential](/azure/active-directory/develop/v2-oauth-ropc)



# [C#](#tab/CS)

```csharp
IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
            .Create(clientId)
            .WithTenantId(tenantID)
            .Build();

UsernamePasswordProvider authProvider = new UsernamePasswordProvider(publicClientApplication, scopes);

GraphServiceClient graphClient = new GraphServiceClient(authProvider);

User me = await graphClient.Me.Request()
                .WithUsernamePassword(email, password)
                .GetAsync();
```

# [Javascript](#tab/Javascript)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

```java
UsernamePasswordProvider authProvider = new UsernamePasswordProvider(
                                                    clientId,
                                                    scopes,
                                                    username,
                                                    password);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## Next steps

* Authentication providers require an client ID. You'll want to [register your application](https://portal.azure.com/) after you set up your authentication provider.
* Let us know if a required OAuth flow isn't currently supported by voting for or opening a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
