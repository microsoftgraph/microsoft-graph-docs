# Get access tokens to call Microsoft Graph

To call Microsoft Graph, your app must acquire an access token from Azure Active Directory (Azure AD), Microsoft's cloud identity service. The access token contains information (or claims) about your app and the permissions it has for the resources and APIs available through Microsoft Graph. To get an access token, your app must be able to authenticate with Azure AD and be authorized by either a user or an administrator for access to the Microsoft Graph resources it needs. 

This topic provides an overview of access tokens, Azure AD, and how your app can get access tokens. If you are already familiar with integrating an app with Azure AD to get tokens, then you can skip ahead to [Next Steps](#next-steps) for information and samples specific to Microsoft Graph. 

> **Important:**  How conditional access policies apply to Microsoft Graph is changing. Applications need to be updated to handle scenarios where conditional access policies are configured. For more information and guidance, see [Developer Guidance for Azure Active Directory Conditional Access](https://docs.microsoft.com/azure/active-directory/develop/active-directory-conditional-access-developer).

## What is an access token and how do I use it?

Access tokens issued by Azure AD are base 64 encoded JSON Web Tokens (JWT). They contain information (claims) that web APIs secured by Azure AD, like Microsoft Graph, use to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. When calling Microsoft Graph, you can treat access tokens as opaque. You should always transmit access tokens over a secure channel, such as transport layer security (HTTPS).

Here's an example of an Azure AD access token:

`EwAoA8l6BAAU7p9QDpi/D7xJLwsTgCg3TskyTaQAAXu71AU9f4aS4rOK5xoO/SU5HZKSXtCsDe0Pj7uSc5Ug008qTI+a9M1tBeKoTs7tHzhJNSKgk7pm5e8d3oGWXX5shyOG3cKSqgfwuNDnmmPDNDivwmi9kmKqWIC9OQRf8InpYXH7NdUYNwN+jljffvNTewdZz42VPrvqoMH7hSxiG7A1h8leOv4F3Ek/oeJX6U8nnL9nJ5pHLVuPWD0aNnTPTJD8Y4oQTp5zLhDIIfaJCaGcQperULVF7K6yX8MhHxIBwek418rKIp11om0SWBXOYSGOM0rNNN59qNiKwLNK+MPUf7ObcRBN5I5vg8jB7IMoz66jrNmT2uiWCyI8MmYDZgAACPoaZ9REyqke+AE1/x1ZX0w7OamUexKF8YGZiw+cDpT/BP1GsONnwI4a8M7HsBtDgZPRd6/Hfqlq3HE2xLuhYX8bAc1MUr0gP9KuH6HDQNlIV4KaRZWxyRo1wmKHOF5G5wTHrtxg8tnXylMc1PKOtaXIU4JJZ1l4x/7FwhPmg9M86PBPWr5zwUj2CVXC7wWlL/6M89Mlh8yXESMO3AIuAmEMKjqauPrgi9hAdI2oqnLZWCRL9gcHBida1y0DTXQhcwMv1ORrk65VFHtVgYAegrxu3NDoJiDyVaPZxDwTYRGjPII3va8GALAMVy5xou2ikzRvJjW7Gm3XoaqJCTCExN4m5i/Dqc81Gr4uT7OaeypYTUjnwCh7aMhsOTDJehefzjXhlkn//2eik+NivKx/BTJBEdT6MR97Wh/ns/VcK7QTmbjwbU2cwLngT7Ylq+uzhx54R9JMaSLhnw+/nIrcVkG77Hi3neShKeZmnl5DC9PuwIbtNvVge3Q+V0ws2zsL3z7ndz4tTMYFdvR/XbrnbEErTDLWrV6Lc3JHQMs0bYUyTBg5dThwCiuZ1evaT6BlMMLuSCVxdBGzXTBcvGwihFzZbyNoX+52DS5x+RbIEvd6KWOpQ6Ni+1GAawHDdNUiQTQFXRxLSHfc9fh7hE4qcD7PqHGsykYj7A0XqHCjbKKgWSkcAg==`

To call Microsoft Graph, you attach the access token as a Bearer token to the Authorization header in an HTTP request. For example, here's a call that returns the profile information of the signed-in user (the access token has been truncated for readability):

```
HTTP/1.1
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
Host: graph.microsoft.com`
GET https://graph.microsoft.com/v1.0/me/
```

## What are Microsoft Graph permissions?
Microsoft Graph exposes a rich set of granular permissions over the resources it controls. These permissions are expressed as strings and grant apps access to Microsoft Graph resources like users, groups, user mail, etc. For example:

- _User.Read_ allows an app to read the profile of the signed-in user.
- _Mail.Send_ allows an app to send mail on behalf of the signed-in user.

There are two types of permissions:

- Delegated permissions are used by apps that run with a user present. The user's privileges are delegated to the app which makes calls on behalf of the user to Microsoft Graph. Many of these permissions can be consented to by a user, but others require administrator consent.  
- Application permissions are used by apps that run without a user. These often grant an app broad privileges within an organization and always require the consent of an administrator.

For a complete list of Microsoft Graph permissions, as well as the differences between delegated and application permissions, see the [Permissions reference](permissions_reference.md).

## Where does my app get an access token?
Your app gets access tokens from Azure Active Directory (Azure AD), Microsoft's cloud identity service. To get an access token, your app exchanges HTTP requests and responses with Azure AD using industry-standard protocols defined in the OAuth 2.0 and OpenID Connect 1.0 specifications. These protocols describe the Azure AD endpoints and exchanges with them -- or authentication flows -- that your app uses to securely authenticate with Azure AD and get access tokens.  

On a very simple level, to get an access token, your app exchanges HTTP requests with the following endpoints:

- The `/authorize` endpoint, where your app can send a user to authenticate with Azure AD and consent to the permissions your app needs.
- The `/token` endpoint where your app can get an access token once user consent has been granted.

(Note: These definitions are not rigid. Depending on the protocol your app uses, it may get access tokens directly from the `/authorize` endpoint or it may authenticate directly with the `/token` endpoint.) 

Here's an example of one set of the `/authorize` and `/token` endpoints exposed by Azure AD v2.0:

```
https://login.microsoftonline.com/common/oauth2/v2.0/authorize
https://login.microsoftonline.com/common/oauth2/v2.0/token

```
Azure AD exposes two sets of endpoints, Azure AD and Azure AD v2.0. The main difference between them is that Azure AD endpoint supports only work or school accounts (that is, accounts that are associated with an Azure AD tenant), while Azure AD v2.0 also supports Microsoft accounts like _Live.com_ or _outlook.com_ accounts. This means that if you use the Azure AD endpoint, your app can target only organizations, but with Azure AD v2.0 it can target both consumers and organizations. 

Tokens from the Azure AD endpoint are not interchangeable with those from the Azure AD v2.0 endpoint, so before you begin work on an app for production, you must choose between the endpoints. Because the Azure AD v2.0 endpoint is newer and features are still being added, there are some important limitations that you need to factor into your decision about which endpoint to use for your app in production. For more information, see [Deciding between the Azure AD and Azure AD v2.0 endpoints](#deciding-between-the-azure-ad-and-azure-ad-v20-endpoints).

## What's the difference between OAuth 2.0 and OpenID Connect?

OAuth 2.0 is an authorization protocol. It defines how your app can get access tokens by authenticating directly with Azure AD or by redirecting a user to authenticate with Azure AD and consent to the permissions your app requests. In the first case, your app gets an access token that it can use to call Microsoft Graph as itself. In second case, your app gets an access token that it can use to call Microsoft Graph on behalf of a user. With OAuth 2.0, however, your app does not receive any information about the user or how they were authenticated by Azure AD. OAuth 2.0 flows are most often used by mobile or native apps, which already know the identity of the user; or by apps like background services or daemons, which call Microsoft Graph under their own identity and not on behalf of a user.

OpenID Connect extends OAuth 2.0 to provide an identity layer. With OpenID Connect, in addition to an access token, your app can also get an id token from Azure AD. OpenID Connect id tokens contain claims about the user's identity and details about how and where they were authenticated. OpenID Connect flows are typically used by web apps, including single page apps (SPAs). These apps can use the id token to customize their behavior for the user they've requested an access token for, and, in many cases, will outsource sign-in of their users to Azure AD and enable experiences like Single Sign-on (SSO).

## What kind of apps can I call Microsoft Graph from?
You can call Microsoft Graph from the following kinds of apps: 

- **Native apps**: Apps that run on a device such as a desktop, tablet, or mobile phone. These apps use the operating system (OS) native to the device like iOS, Android, or Windows for user presentation and to make calls to Microsoft Graph on behalf of a user.
- **Web apps**: Apps that run on a server and interact with the signed-in user through a user-agent, usually a web browser. Most of the presentation layer is handled on the server, and calls to Microsoft Graph are made from the server-side on behalf of a user.
- **Single Page Apps (SPA)**: Web apps with rich user experiences that handle much of the presentation layer through client-side scripting in the browser. Calls to Microsoft Graph are made from client-side script using technologies like AJAX and frameworks like Angular.js. Calls are made on behalf of a user.
- **Background Services/Daemons**: Background services and daemons that run on a server without the presence of a user and make calls to Microsoft Graph under their own identity.
- **Web APIs**: A client app calls a web API (secured by Azure AD), which then calls Microsoft Graph, all on behalf of a user. Supported by the Azure AD endpoint. For the Azure AD v2.0 endpoint, only supported if the client and the web API have the same Application ID; for example, a native app that calls a web API back end. 

## How do I get my app talking to Azure AD and Microsoft Graph?
Before your app can get a token from Azure AD, it must be registered. For the Azure AD v2.0 endpoint, you use the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) to register your app. For the Azure AD endpoint, you use the [Azure portal](https://portal.azure.com/). Registration integrates your app with Azure AD and establishes the coordinates and identifiers that it uses to get tokens. These are:

- **Application ID**: A unique identifier assigned by Azure AD. 
- **Redirect URI/URL**: One or more endpoints at which your app will receive responses from Azure AD. (For native and mobile apps this is a URI assigned by Azure AD.)
- **Application Secret**: A password or a public/private key pair that your app uses to authenticate with Azure AD. (Not needed for native or mobile apps.)

For apps that use the Azure AD endpoint, you'll also pre-configure the Microsoft Graph permissions that your app needs during registration. For apps that use the Azure AD v2.0 endpoint, you may or may not need to pre-configure permissions. 

The properties configured during registration are used on the wire. For example, in the following token request: *client_id* is the *Application ID*, *redirect_uri* is one of your app's registered *Redirect URIs*, and *client_secret* is the *Application Secret*. 

```
// Line breaks for legibility only

POST /common/oauth2/v2.0/token HTTP/1.1
Host: https://login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

client_id=6731de76-14a6-49ae-97bc-6eba6914391e
&scope=user.read%20mail.read
&code=OAAABAAAAiL9Kn2Z27UubvWFPbm0gLWQJVzCTE9UkP3pSx1aXxUjq3n8b2JRLk4OxVXr...
&redirect_uri=http%3A%2F%2Flocalhost%2Fmyapp%2F
&grant_type=authorization_code
&client_secret=JqQX2PNo9bpM0uEihUPzyrh    // NOTE: Only required for web apps
```

## Are there authentication libraries available?
Like most developers, you will probably use authentication libraries to manage your interactions with Azure AD. Authentication libraries abstract many protocol details, like validation, cookie handling, token caching, and maintaining secure connections, away from the developer and let you focus your development on your app. Microsoft publishes open source client libraries and server middleware for both the Azure AD and Azure AD v2.0 endpoints. 

For the Azure AD v2.0 endpoint: 

- Microsoft Authentication Library (MSAL) client libraries are available for .NET, JavaScript, Android, and Objective-c. All platforms are in production-supported preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and for Node.js (Microsoft Azure AD Passport.js). 
- The v2.0 endpoint is compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft server middleware, and compatible third-party libraries, see [Azure Active Directory v2.0 authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-libraries).

For the Azure AD endpoint:

- Active Directory Authentication Library (ADAL) client libraries are available on a slightly larger number of platforms. 
- Server middleware from Microsoft is available for .NET core and ASP.NET, as well as Node.js. 

For a complete list of Microsoft client libraries and server middleware, see [Azure Active Directory Authentication Libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-libraries).

## Deciding between the Azure AD and Azure AD v2.0 endpoints

Azure AD exposes two sets of endpoints, Azure AD and Azure AD v2.0, where you can get access tokens to use when you call Microsoft Graph. Tokens received from each endpoint are not interchangeable. To run samples or explore the functionality of Microsoft Graph, your choice of Azure AD endpoints is not critical. However, before you begin development on a production app, you need to decide which endpoint makes the best sense for your scenario. The following discussion provides some general guidelines that you can use to help make your decision, but for the most current and comprehensive information you must see [Should I use the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations) in the Azure Active Directory documentation. 

The main difference between Azure AD and Azure AD v2.0 is that:

* Azure AD supports only work or school accounts; that is, accounts that are associated with an Azure AD tenant. This means that your app can target only organizations.
* Azure AD v2.0 supports both work and school accounts and Microsoft accounts like _live.com_ or _outlook.com_ accounts. This means that your app can target both consumers and organizations using the v2.0 endpoint. 

There are some additional advantages with Azure AD v2.0. For example:

* Your app can use a single Application ID for multiple platforms. This simplifies app management for both developers and administrators.
* [Support for dynamic and incremental consent](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-compare#incremental-and-dynamic-consent). With this feature your app can request additional permissions during runtime, pairing the request for the user's consent  with the functionality that requires it. This provides a much more comfortable experience for users than having to consent to a long list of permissions when they sign-in for the first time.  

Because Azure AD v2.0 is newer than Azure AD and features are still being added, there are some limitations with the v2.0 endpoint that you need to factor into your decision. For example:

* Some features may not yet be fully implemented in v2.0. For example, your app might not work if your enterprise customer turns on enterprise mobility security features like [conditional device access](https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-device-policies).
* You cannot call Microsoft Graph from a [standalone web API](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations#restrictions-on-app-types). 
* You cannot call Cloud Solution provider apps.
* [Windows integrated authentication for federated tenants](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations#restrictions-for-work-and-school-accounts) is not supported. This means that users of federated Azure AD tenants cannot silently authenticate with their on-premises Active Directory instance. They will have to re-enter their credentials.

For more information about differences between the Azure AD v2.0 endpoint and the Azure AD endpoint, see [What's different about the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-compare).

>**Important**
>
>**Before making a decision about which endpoint to use when developing an app for production, consult [Should I use the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations).**

## Next steps

Once you've registered your app, you're ready to get started!

- For quick steps on getting an access token for apps that call Microsoft Graph on behalf of a user, see [Get access on behalf of users](auth_v2_user.md).
- For quick steps on getting an access token for apps that call Microsoft Graph without a user, see [Get access without a user](auth_v2_service.md).
- To see the permissions that you can use with Microsoft Graph, see [Permissions](permissions_reference.md).
- If you're a Microsoft Cloud Solution provider interested in accessing partner-managed customer data through Microsoft Graph, see [Manage app access (CSPs)](auth_cloudsolutionprovider.md).


If you're ready to jump into code, you can use the following resources to help you implement authentication and authorization with Azure AD in your app.

### Microsoft Graph Connect samples 

Microsoft publishes Connect samples for Microsoft Graph for a wide variety of platforms, including: Android, Angular.JS, ASP.NET, iOS (Obj-C and Swift), Node.JS, PHP, Python, Ruby, UWP, and Xamarin. You can use these samples to examine code that uses various authentication libraries to get tokens from Azure AD. Currently, most samples use third-party authentication libraries; however, the ASP.NET and UWP samples use Microsoft libraries.

- The [Build your first app](get-started.md) section contains detailed articles that show you how to create Connect apps using the Azure AD v2.0 endpoint, and covers the authentication libraries used on each platform. Available samples are listed by platform and authentication endpoint.
- To quickly get a running sample on your platform of choice, see [Microsoft Graph Quick Start](https://developer.microsoft.com/graph/Quick-Start).
- Visit the [Microsoft Graph repo](https://github.com/microsoftgraph) on GitHub to see all the samples available for Microsoft Graph. 

### Azure Active Directory samples and documentation 
The Azure AD documentation contains articles and samples that specifically focus on authentication and authorization with Azure AD.

For the Azure AD v2.0 endpoint: 

- The easiest place to start is in the [Azure AD v2.0 endpoint documentation](https://docs.microsoft.com/azure/active-directory/develop/active-directory-appmodel-v2-overview). This article contains links to overviews, protocol documentation and getting started articles for different platforms all organized by the type of app you're developing. 
- For samples listed by client or server authentication library, see [Azure Active Directory v2.0 Authentication Libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-libraries). 
- Or you can explore Azure AD samples by platform in the [Azure Code gallery](https://azure.microsoft.com/resources/samples/?service=active-directory). Note: you cannot qualify your search by endpoint version. 

For the Azure AD endpoint: 

- The easiest place to start is in the [Azure AD Developer's guide overview](https://docs.microsoft.com/azure/active-directory/develop/active-directory-developers-guide). This article contains links to overviews, protocol documentation, and getting started articles for different platforms organized by the type of app you're developing. 
- For samples listed by client or server authentication library, see [Azure Active Directory Authentication Libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-libraries). 
- For samples listed by app type and platform, see [Azure Active Directory Code Samples](https://docs.microsoft.com/azure/active-directory/develop/active-directory-code-samples).
- Or you can explore Azure AD samples by platform in the [Azure Code gallery](https://azure.microsoft.com/resources/samples/?service=active-directory). Note: you cannot qualify your search by endpoint version. 


## See also

- [Azure Active Directory endpoint documentation](https://docs.microsoft.com/azure/active-directory/develop/active-directory-developers-guide)
- [Azure Active Directory v2.0 endpoint documentation](https://docs.microsoft.com/azure/active-directory/develop/active-directory-appmodel-v2-overview)
