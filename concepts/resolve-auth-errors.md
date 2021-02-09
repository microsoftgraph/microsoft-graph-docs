---
title: "Resolve Microsoft Graph authorization errors"
description: "Find out how to resolve Microsoft Graph 401 and 403 authorization errors."
author: "davidmu1"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
---

# Resolve Microsoft Graph authorization errors

Authorization errors can occur as a result of several different issues, most of which generate a 403 error (with a few exceptions). For example, the following can all lead to authorization errors:

* Incorrect [access token acquisition flows](/azure/active-directory/develop/active-directory-authentication-scenarios)
* Poorly configured [permission scopes](/azure/active-directory/develop/active-directory-v2-scopes)
* Lack of [consent](/azure/active-directory/develop/active-directory-devhowto-multi-tenant-overview#understanding-user-and-admin-consent)
* Lack of [permissions](/azure/active-directory/develop/v2-permissions-and-consent)

## Steps to resolve common errors

To resolve common authorization errors, try the steps described for the error that most closely match the error you're getting. More than one error might apply. You can also check the answers already available on Stack Overflow for [401 errors](https://stackoverflow.com/search?q=%5Bmicrosoft-graph%5D+401+isanswered%3Ayes+views%3A50) and [403 errors](https://stackoverflow.com/search?q=%5Bmicrosoft-graph%5D+403+isanswered%3Ayes+views%3A50). If you can't find a solution to your problem, [ask a new question on Stack Overflow](https://stackoverflow.com/questions/ask) and tag with *microsoft-graph*.

**401 Unauthorized error: Is your token valid?** <br>

Make sure that your application is presenting a valid access token to Microsoft Graph as part of the request. This error often means that the access token may be missing in the HTTP authenticate request header or that the token is invalid or has expired. We strongly recommend that you use the [Microsoft Authentication Library (MSAL)](/azure/active-directory/develop/msal-overview) for access token acquisition. Additionally this error may occur, if you try to use a delegated access token granted to a personal Microsoft account, to access an API that only supports work or school accounts (organizational accounts). 

**403 Forbidden error: Have you chosen the right set of permissions?**<br>

Verify that you have requested the correct set of permissions based on the Microsoft Graph APIs your app calls. The least privileged permissions that we recommend are provided in all the Microsoft Graph API method reference topics. Additionally, those permissions must be granted to the application by a user or an administrator. Granting permissions normally happens through a consent page or by granting permissions using the Azure Portal application registration blade. From the **Settings** blade for the application, click **Required Permissions**, and then click **Grant Permissions**. <br>

* [Microsoft Graph permissions](./permissions-reference.md) <br>
* [Understanding Azure AD permissions and consent](/azure/active-directory/develop/v2-permissions-and-consent) <br>

**403 Forbidden error: Did your app acquire a token to match chosen permissions?** <br>

Make sure that the type of permissions requested or granted matches the type of access token that your app acquires. You might be requesting and granting application permissions but using delegated interactive code flow tokens instead of client credential flow tokens, or requesting and granting delegated permissions but using client credential flow tokens instead of delegated code flow tokens. <br>
* [Get access on behalf of users and delegated permissions](/graph/auth_v2_user) 
* [Azure AD v2.0 - OAuth 2.0 authorization code flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow)
* [Get access without a user (daemon service) and application permissions](/graph/auth_v2_service)
* [Azure AD v2.0 - OAuth 2.0 client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow)

**403 Forbidden error: Resetting password** <br>

Currently, there are no application permission daemon service-to-service permissions that allow resetting user passwords. These APIs are only supported using the interactive delegated code flows with a signed-in administrator.

* [Microsoft Graph permissions](./permissions-reference.md) <br>

**403 Forbidden: Does the user have access and are they licensed?** <br>

For delegated code flows, Microsoft Graph evaluates whether the request is allowed based on the permissions granted to the app and the permissions that the signed-in user has. Generally, this error indicates that the user is not privileged enough to perform the request **or** the user is not licensed for the data being accessed. Only users with the required permissions or licenses can make the request successfully.

**403 Forbidden: Did you select the correct resource API?** <br>

API services like Microsoft Graph check that the *aud* claim (audience) in the received access token matches the value it expects for itself, and if not, it results in a `403 Forbidden` error. A common mistake that causes in this error is trying to use a token acquired for Azure AD Graph APIs, Outlook APIs, or SharePoint/OneDrive APIs to call Microsoft Graph (or vice versa). Ensure that the resource (or scope) your app is acquiring a token for matches the API that the app is calling.

**400 Bad Request or 403 Forbidden: Does the user comply with their organization's conditional access (CA) policies?**<br>

Based on an organization's CA policies, a user accessing Microsoft Graph resources via your app might be challenged for additional information that is not present in the access token your app originally acquired. In this case, your app receives a 400 with an *interaction_required* error during access token acquisition or a 403 with *insufficient_claims* error when calling Microsoft Graph. In both cases, the error response contains additional information that can be presented to the authorize endpoint to challenge the user for additional information (like multi-factor authentication or device enrollment).

* [Handling conditional access challenges using MSAL](/azure/active-directory/develop/msal-handling-exceptions#conditional-access-and-claims-challenges)
* [Developer guidance for Azure Active Directory conditional access](/azure/active-directory/develop/conditional-access-dev-guide)