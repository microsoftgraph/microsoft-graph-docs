---
title: "List methods"
description: "Retrieve a list of authentication method objects."
localization_priority: Normal
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# List methods

Namespace: microsoft.graph

Retrieve a list of [authentication method](../resources/authenticationmethod.md) objects.

> **Note:** Only methods supported on v1.0 will be returned.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on self

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read, UserAuthenticationMethod.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### Permissions acting on other users

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|:-----------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |

For delegated scenarios where an admin is acting on another user, the admin needs [one of the following roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):
* Global admin
* Global reader
* Privileged authentication admin
* Authentication admin (only sees masked phone numbers)

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/authentication/methods
GET /users/{id | userPrincipalName}/authentication/methods
```

## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationMethod](../resources/authenticationmethod.md) objects in the response body.

## Examples

### Request

The following is an example of the request.


```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/authentication/methods
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethod",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
      "id": "-2_GRUg2-HYz6_1YG4YRAQ2",
      "displayName": "Red key",
      "creationDateTime": "2020-08-10T06:44:09Z",
      "aaGuid": "2fc0579f-8113-47ea-b116-555a8db9202a",
      "model": "NFC key",
      "attestationCertificates": [
          "dbe793efdf1945e2df25d93653a1e8a3268a9075"
      ],
      "attestationLevel": "attested"
    },
    {
    "@odata.type": "#microsoft.graph.windowsHelloForBusinessAuthenticationMethod",
    "id": "b5e01f81-1f81-b5e0-811f-e0b5811fe0b5",
    "displayName": "Jordan's Surface Book",
    "createdDateTime": "2020-11-27T23:12:49Z",
    "keyStrength": "normal"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List methods",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
