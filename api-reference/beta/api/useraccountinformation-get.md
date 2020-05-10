---
title: "Get userAccountInformation"
description: "Retrieve the properties and relationships of useraccountinformation object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "Profile"
doc_type: "apiPageType"
---

# Get userAccountInformation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [userAccountInformation](../resources/useraccountinformation.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)            |
|:---------------------------------------|:-------------------------------------------------------|
| Delegated (work or school account)     | User.Read, User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite, User.ReadWrite.All          |
| Application                            | User.ReadWrite.All                                     |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/profile/accounts
GET /users/{id|userPrincipalName}/profile/accounts/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [userAccountInformation](../resources/useraccountinformation.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_useraccountinformation"
}-->

```http
GET https://graph.microsoft.com/Beta/user/profile/account
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userAccountInformation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "allowedAudiences": "organization",
  "ageGroup": "3",
  "countryCode": "NO",
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "AAD",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
  "inference": null,
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "lastModifiedBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "preferredLanguageTag": {
        "locale": "en-AU",
        "displayName": "English (Australian)"
      },
  "source": null,
  "userPrincipalName": "ikoren@contoso.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get userAccountInformation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
