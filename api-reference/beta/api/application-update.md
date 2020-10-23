---
title: "Update application"
description: "Update the properties of an application object."
author: "sureshja"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update application

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [application](../resources/application.md) object.

> [!IMPORTANT]
> Using PATCH to set [**passwordCredential**](../resources/passwordcredential.md) is not supported. Use the [addPassword](./application-addpassword.md) and [removePassword](./application-removepassword.md) methods to update the password for an application.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Application.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All |
|Delegated (personal Microsoft account) | Application.ReadWrite.All    |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/{id}
```
## Request headers
| Name       | Description|
|:-----------|:----------|
| Authorization | Bearer {token}. Required.  |
| Content-Type | application/json. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property                | Type                                                                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:------------------------|:----------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| api                     | [apiApplication](../resources/apiapplication.md)                            | Specifies settings for an application that implements a web API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| appRoles                | [appRole](../resources/approle.md) collection                               | The collection of application roles that an application may declare. These roles can be assigned to users, groups, or service principals. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                |
| displayName             | String                                                                      | The display name for the application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| groupMembershipClaims   | String                                                                      | Configures the **groups** claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following valid string values:<ul><li>`None`</li><li>`SecurityGroup`: For security groups and Azure Active Directory (Azure AD) roles</li><li>`All`: This will get all of the security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of</li></ul>                                                                                                                       |
| identifierUris          | String collection                                                           | The URIs that identify the application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. For more information, see [Application Objects and Service Principal Objects](https://docs.microsoft.com/azure/active-directory/develop/app-objects-and-service-principals). The *any* operator is required for filter expressions on multi-valued properties. Not nullable.                                                                                                                                                 |
| info                    | [informationalUrl](../resources/informationalurl.md)                        | Basic profile information of the application such as  app's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see [Add Terms of service and privacy statement for registered Azure AD apps](https://docs.microsoft.com/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement).                                                                                                                       |
| isFallbackPublicClient  | Boolean                                                                     | Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is `false`, which means the fallback application type is confidential client such as web app. There are certain scenarios where Azure AD cannot determine the client application type (for example, [ROPC](https://tools.ietf.org/html/rfc6749#section-4.3) flow where it is configured without specifying a redirect URI). In those cases, Azure AD will interpret the application type based on the value of this property. |
| keyCredentials          | [keyCredential](../resources/keycredential.md) collection                   | The collection of key credentials associated with the application. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| logo                    | Stream                                                                      | The main logo for the application. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| onPremisesPublishing    | [onPremisesPublishing](../resources/onpremisespublishing.md)                | Represents the set of properties for configuring [Azure AD Application Proxy](https://aka.ms/whyappproxy) for an on-premises application. This property can only be set after the application has been created.                                                                                                                                                                                                                                                                                                                                                       |
| optionalClaims          | optionalClaims                                                              | Application developers can configure optional claims in their Azure AD apps to specify which claims they want in tokens sent to their application by the Microsoft security token service. See [optional claims](https://docs.microsoft.com/azure/active-directory/develop/active-directory-optional-claims) for more information.                                                                                                                                                                                                                                     |
| parentalControlSettings | [parentalControlSettings](../resources/parentalcontrolsettings.md)          | Specifies parental control settings for an application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| publicClient            | [publicClientApplication](../resources/publicclientapplication.md)          | Specifies settings for installed clients such as desktop or mobile devices.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| requiredResourceAccess  | [requiredResourceAccess](../resources/requiredresourceaccess.md) collection | Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. Not nullable.                                                                                                                                                                                                                                                                                                 |
| signInAudience          | String                                                                      | Specifies what Microsoft accounts are supported for the current application. Supported values are:<ul><li>`AzureADMyOrg`: Users with a Microsoft work or school account in my organization’s Azure AD tenant (i.e. single tenant)</li><li>`AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization’s Azure AD tenant (i.e. multi-tenant)</li> <li>`AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant</li></ul>                           |
| tags                    | String collection                                                           | Custom strings that can be used to categorize and identify the application. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| tokenEncryptionKeyId    | String                                                                      | Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.                                                                                                                                                                                                                               |
| web                     | [webApplication](../resources/webapplication.md)                            | Specifies settings for a web application.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

## Response

If successful, this method returns a `204 No Content` response code and does not return anything in the response body.
## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_application"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/{id}
Content-type: application/json
Content-length: 72

{
  "displayName": "New display name"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-application-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update application",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


