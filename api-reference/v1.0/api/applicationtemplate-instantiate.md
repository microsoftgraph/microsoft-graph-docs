---
title: 'applicationTemplate: instantiate'
description: 'Add an instance of an application from the Azure AD application gallery into your directory.'
localization_priority: Normal
author: 'luleonpla'
ms.prod: 'applications'
doc_type: 'apiPageType'
---

# applicationTemplate: instantiate

Namespace: microsoft.graph

Add an instance of an application from the Azure AD application gallery into your directory.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)        |
| :------------------------------------- | :------------------------------------------------- |
| Delegated (work or school account)     | Application.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                     |
| Application                            | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applicationTemplates/{id}/instantiate
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter   | Type   | Description                    |
| :---------- | :----- | :----------------------------- |
| displayName | String | Custom name of the application |

## Response

If successful, this method returns a `201 OK` response code and a new [applicationServicePrincipal](../resources/applicationserviceprincipal.md) object in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.

> You can use this API to instantiate [non-gallery apps](/azure/active-directory/manage-apps/add-non-gallery-app). Use the following ID for **applicationTemplate**: `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applicationtemplate_instantiate"
}-->

```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/{id}/instantiate
Content-type: application/json

{
  "displayName": "My custom name"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applicationtemplate-instantiate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applicationtemplate-instantiate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/applicationtemplate-instantiate-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applicationtemplate-instantiate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->

```http
HTTP/1.1 201 OK
Content-type: application/json

{
   "servicePrincipal":{
      "accountEnabled":true,
      "addIns":[],
      "alternativeNames":[
         "http://contoso/a7770d29-4321-41a6-b863-ca11d6639448"
      ],
      "appDisplayName":"appDisplayName-value",
      "appId":"appId-value",
      "appOwnerOrganizationId":"appOwnerOrganizationId-value",
      "appRoleAssignmentRequired":true,
      "appRoles":[],
      "displayName":"Display name",
      "endpoints":[],
      "homepage":null,
      "id":"id-value",
      "info":{
         "termsOfServiceUrl":null,
         "supportUrl":null,
         "privacyStatementUrl":null,
         "marketingUrl":null,
         "logoUrl":null
      },
      "keyCredentials":[],
      "logoutUrl":null,
      "oauth2PermissionScopes":[],
      "passwordCredentials":[],
      "publisherName":null,
      "replyUrls":[],
      "servicePrincipalNames":[],
      "servicePrincipalType":null,
      "tags":[],
      "tokenEncryptionKeyId":null
   },
   "application":{
      "id":"id-value",
      "isFallbackPublicClient":null,
      "appId":"appId-value",
      "applicationTemplateId":null,
      "identifierUris":[],
      "createdDateTime":"2019-09-17T19:10:35.2742618Z",
      "displayName":"Display name",
      "isDeviceOnlyAuthSupported":null,
      "groupMembershipClaims":null,
      "optionalClaims":null,
      "addIns":[],
      "publisherDomain":"contoso.onmicrosoft.com",
      "signInAudience":"AzureADMyOrg",
      "tags":[],
      "tokenEncryptionKeyId":null,
      "api":{
         "requestedAccessTokenVersion":2,
         "acceptMappedClaims":null,
         "knownClientApplications":[],
         "oauth2PermissionScopes":[],
         "preAuthorizedApplications":[]
      },
      "appRoles":[],
      "publicClient":{
         "redirectUris":[]
      },
      "info":{
         "termsOfServiceUrl":null,
         "supportUrl":null,
         "privacyStatementUrl":null,
         "marketingUrl":null,
         "logoUrl":null
      },
      "keyCredentials":[],
      "parentalControlSettings":{
         "countriesBlockedForMinors":[],
         "legalAgeGroupRule":"Allow"
      },
      "passwordCredentials":[],
      "requiredResourceAccess":[ ],
      "web":{
         "redirectUris":[],
         "homePageUrl":null,
         "logoutUrl":null,
         "implicitGrantSettings":{
            "enableIdTokenIssuance":false,
            "enableAccessTokenIssuance":false
         }
      }
   }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate: instantiate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
