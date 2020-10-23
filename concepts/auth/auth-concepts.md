---
title: "Authentication and authorization basics for Microsoft Graph"
description: "To call Microsoft Graph, your app must acquire an access token from the Microsoft identity platform."
author: "matt-steele"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
ms.custom: graphiamtop20
---

# Authentication and authorization basics for Microsoft Graph

To call Microsoft Graph, your app must acquire an access token from the Microsoft identity platform. The access token contains information about your app and the permissions it has for the resources and APIs available through Microsoft Graph. To get an access token, your app must be registered with the Microsoft identity platform and be authorized by either a user or an administrator for access to the Microsoft Graph resources it needs.

This topic provides an overview of access tokens, the Microsoft identity platform, and how your app can get access tokens. If you are already familiar with integrating an app with the Microsoft identity platform to get tokens, see the [Next Steps](#next-steps) section for information and samples specific to Microsoft Graph.

## Access tokens

Access tokens issued by the Microsoft identity platform contain information (claims) that web APIs secured by the Microsoft identity platform, such as Microsoft Graph, use to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. When calling Microsoft Graph, you should treat access tokens as opaque. You must always transmit access tokens over a secure channel, such as transport layer security (HTTPS).

The following is an example of a Microsoft identity platform access token:

```jwt
EwAoA8l6BAAU7p9QDpi/D7xJLwsTgCg3TskyTaQAAXu71AU9f4aS4rOK5xoO/SU5HZKSXtCsDe0Pj7uSc5Ug008qTI+a9M1tBeKoTs7tHzhJNSKgk7pm5e8d3oGWXX5shyOG3cKSqgfwuNDnmmPDNDivwmi9kmKqWIC9OQRf8InpYXH7NdUYNwN+jljffvNTewdZz42VPrvqoMH7hSxiG7A1h8leOv4F3Ek/oeJX6U8nnL9nJ5pHLVuPWD0aNnTPTJD8Y4oQTp5zLhDIIfaJCaGcQperULVF7K6yX8MhHxIBwek418rKIp11om0SWBXOYSGOM0rNNN59qNiKwLNK+MPUf7ObcRBN5I5vg8jB7IMoz66jrNmT2uiWCyI8MmYDZgAACPoaZ9REyqke+AE1/x1ZX0w7OamUexKF8YGZiw+cDpT/BP1GsONnwI4a8M7HsBtDgZPRd6/Hfqlq3HE2xLuhYX8bAc1MUr0gP9KuH6HDQNlIV4KaRZWxyRo1wmKHOF5G5wTHrtxg8tnXylMc1PKOtaXIU4JJZ1l4x/7FwhPmg9M86PBPWr5zwUj2CVXC7wWlL/6M89Mlh8yXESMO3AIuAmEMKjqauPrgi9hAdI2oqnLZWCRL9gcHBida1y0DTXQhcwMv1ORrk65VFHtVgYAegrxu3NDoJiDyVaPZxDwTYRGjPII3va8GALAMVy5xou2ikzRvJjW7Gm3XoaqJCTCExN4m5i/Dqc81Gr4uT7OaeypYTUjnwCh7aMhsOTDJehefzjXhlkn//2eik+NivKx/BTJBEdT6MR97Wh/ns/VcK7QTmbjwbU2cwLngT7Ylq+uzhx54R9JMaSLhnw+/nIrcVkG77Hi3neShKeZmnl5DC9PuwIbtNvVge3Q+V0ws2zsL3z7ndz4tTMYFdvR/XbrnbEErTDLWrV6Lc3JHQMs0bYUyTBg5dThwCiuZ1evaT6BlMMLuSCVxdBGzXTBcvGwihFzZbyNoX+52DS5x+RbIEvd6KWOpQ6Ni+1GAawHDdNUiQTQFXRxLSHfc9fh7hE4qcD7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

To call Microsoft Graph, you attach the access token as a Bearer token to the Authorization header in an HTTP request. For example, the following call that returns the profile information of the signed-in user (the access token has been shortened for readability):

```http
GET https://graph.microsoft.com/v1.0/me/ HTTP/1.1
Host: graph.microsoft.com
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

## Register your app with the Microsoft identity platform

Before your app can get a token from the Microsoft identity platform, it must be registered in the [Azure portal](https://portal.azure.com/). Registration integrates your app with the Microsoft identity platform and establishes the information that it uses to get tokens, including:

- **Application ID**: A unique identifier assigned by the Microsoft identity platform.
- **Redirect URI/URL**: One or more endpoints at which your app will receive responses from the Microsoft identity platform. (For native and mobile apps, this is a URI assigned by the Microsoft identity platform.)
- **Application Secret**: A password or a public/private key pair that your app uses to authenticate with the Microsoft identity platform. (Not needed for native or mobile apps.)

The properties configured during registration are used in the request. For example, in the following token request: *client_id* is the *Application ID*, *redirect_uri* is one of your app's registered *Redirect URIs*, and *client_secret* is the *Application Secret*.

```http
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

## Microsoft Graph permissions

Microsoft Graph exposes granular permissions that control the access that apps have to resources, like users, groups, and mail. As a developer, you decide which permissions to request for Microsoft Graph. When a user signs in to your app they, or, in some cases, an administrator, are given a chance to consent to these permissions. If the user consents, your app is given access to the resources and APIs that it has requested. For apps that don't take a signed-in user, permissions can be pre-consented to by an administrator when the app is installed.

Microsoft Graph has two types of permissions:

- **Delegated permissions** are used by apps that have a signed-in user present. For these apps, either the user or an administrator consents to the permissions that the app requests and the app can act as the signed-in user when making calls to Microsoft Graph. Some delegated permissions can be consented by non-administrative users, but some higher-privileged permissions require [administrator consent](/azure/active-directory/develop/active-directory-v2-scopes#using-the-admin-consent-endpoint).  

- **Application permissions** are used by apps that run without a signed-in user present; for example, apps that run as background services or daemons. Application permissions can only be [consented by an administrator](/azure/active-directory/develop/active-directory-v2-scopes#requesting-consent-for-an-entire-tenant). 

_Effective permissions_ are the permissions that your app will have when making requests to Microsoft Graph. It is important to understand the difference between the delegated and application permissions that your app is granted and its effective permissions when making calls to Microsoft Graph.

- For delegated permissions, the effective permissions of your app will be the intersection of the delegated permissions the app has been granted (via consent) and the privileges of the currently signed-in user. Your app can never have more privileges than the signed-in user. Within organizations, the privileges of the signed-in user can be determined by policy or by membership in one or more administrator roles. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).<br/><br/>For example, assume your app has been granted the User.ReadWrite.All delegated permission. This permission nominally grants your app permission to read and update the profile of every user in an organization. If the signed-in user is a global administrator, your app will be able to update the profile of every user in the organization. However, if the signed-in user is not in an administrator role, your app will be able to update only the profile of the signed-in user. It will not be able to update the profiles of other users in the organization because the user that it has permission to act on behalf of does not have those privileges.
- For application permissions, the effective permissions of your app will be the full level of privileges implied by the permission. For example, an app that has the User.ReadWrite.All application permission can update the profile of every user in the organization.

>**Note** By default, apps that have been granted application permissions to the following data sets can access all the mailboxes in the organization:

- [Calendars](../permissions-reference.md#calendars-permissions)
- [Contacts](../permissions-reference.md#contacts-permissions)
- [Mail](../permissions-reference.md#mail-permissions)
- [Mailbox settings](../permissions-reference.md#mail-permissions)

>Administrators can configure [application access policy](../auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes.

For a complete list of delegated and application permissions for Microsoft Graph, as well as which permissions require administrator consent, see the [Permissions reference](../permissions-reference.md).

## Getting an access token

Like most developers, you will probably use authentication libraries to manage your token interactions with the Microsoft identity platform. Authentication libraries abstract many protocol details, like validation, cookie handling, token caching, and maintaining secure connections, away from the developer and let you focus your development on your app. Microsoft publishes open source client libraries and server middleware.

For the Microsoft identity platform endpoint:

- Microsoft Authentication Library (MSAL) client libraries are available for .NET, JavaScript, Android, and Objective-c. All platforms are in production-supported preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and for Node.js (Microsoft the Microsoft identity platform Passport.js).
- The Microsoft identity platform is compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft server middleware, and compatible third-party libraries, see [Microsoft identity platform authentication libraries](/azure/active-directory/develop/active-directory-v2-libraries).

You do not need to use an authentication library to get an access token. To learn about directly using the Microsoft identity platform endpoints without the help of an authentication library, see [Microsoft identity platform authentication](/azure/active-directory/develop/authentication-scenarios)

## Next steps

- For quick steps for getting an access token for apps that call Microsoft Graph, choose the type of app that matches your scenario:
  - [Desktop app](/azure/active-directory/develop/scenario-desktop-overview)
  - [Mobile app](/azure/active-directory/develop/scenario-mobile-overview)
  - [Web app](/azure/active-directory/develop/scenario-web-app-call-api-overview)
  - [Single page app](/azure/active-directory/develop/scenario-spa-overview)
  - [Daemon / background service](/azure/active-directory/develop/scenario-daemon-overview)
- To see the permissions that you can use with Microsoft Graph, see [Permissions](../permissions-reference.md).
- If you're a Microsoft Cloud Solution provider interested in accessing partner-managed customer data through Microsoft Graph, see [Manage app access (CSPs)](../auth-cloudsolutionprovider.md).

If you're ready to jump into code, you can use the following resources to help you implement authentication and authorization with the Microsoft identity platform in your app.

### Microsoft Graph training and samples

To help you get started quickly, we've created a series of training modules and other resources that show you how to authenticate and use the API on a variety of platforms.

- Use the [Get started](https://developer.microsoft.com/graph/get-started) page to find the libraries, samples, training content, and other resources for your favorite platform.
- To get running quickly with a pre-configured sample for your platform, see the [Microsoft Graph Quick Start](https://developer.microsoft.com/graph/quick-start).
- See our [Microsoft Graph samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=sample&type=&language=) on GitHub.

### Microsoft identity platform samples and documentation

The Microsoft identity platform documentation contains articles and samples that specifically focus on authentication and authorization with the Microsoft identity platform.

- The easiest place to start is in the [Microsoft identity platform endpoint documentation](/azure/active-directory/develop/active-directory-appmodel-v2-overview). This article contains links to overviews, protocol documentation and getting started articles for different platforms all organized by the type of app you're developing.
- For samples listed by client or server authentication library, see [Microsoft identity platform authentication libraries](/azure/active-directory/develop/active-directory-v2-libraries).
- Explore the Microsoft identity platform samples by platform in the [Azure Code gallery](https://azure.microsoft.com/resources/samples/?service=active-directory).

## See also

- [Microsoft identity platform endpoint documentation](/azure/active-directory/develop/active-directory-appmodel-v2-overview)