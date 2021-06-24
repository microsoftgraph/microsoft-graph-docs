---
title: "List fido2AuthenticationMethod"
description: "Retrieve a list of the fido2AuthenticationMethod objects and their properties."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List fido2AuthenticationMethod
Namespace: microsoft.graph

Retrieve a list of a user's [FIDO2 Security Key Authentication Method](../resources/fido2authenticationmethod.md) objects and their properties.

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

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/authentication/fido2Methods
GET /users/{id | userPrincipalName}/authentication/fido2Methods
```

## Optional query parameters
This method does not support optional query parameters to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) objects in the response body.

## Examples

### Request


``` http
GET https://graph.microsoft.com/v1.0/me/authentication/fido2Methods
```

### Response
The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fido2AuthenticationMethod)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
  "value": [
    {
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
      "id": "_jpuR-TGZgk6aQCLF3BQjA2",
      "displayName": "Blue key",
      "creationDateTime": "2020-08-10T06:25:38Z",
      "aaGuid": "c5ef55ff-ad9a-4b9f-b580-ababafe026d0",
      "model": "USB key",
      "attestationCertificates": [
          "b479e7652167f574296e76bfa76731b8ccd22ed7"
      ],
      "attestationLevel": "attested"
    }
  ]
}
```

