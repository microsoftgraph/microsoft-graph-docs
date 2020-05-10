---
title: "Create itemPhone"
description: "Use this API to create a new itemPhone."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create itemPhoneNumber

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new [itemPhone](../resources/itemphone.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All |
| Application                            | User.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/profile/phones
POST /users/{id|userPrincipalName}/profile/phones
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [itemPhone](../resources/itemphone.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [itemPhone](../resources/itemphone.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_itemphone_from_profile"
}-->

```http
POST https://graph.microsoft.com/beta/me/profile/phones
Content-type: application/json

{
  "displayName": null,
  "type": "business",
  "number": "+1 412 555 0109",
  "allowedAudiences": "organization",
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-itemphone-from-profile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-itemphone-from-profile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-itemphone-from-profile-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemPhone"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "displayName": null,
    "type": "business",
    "number": "+1 412 555 0109",
    "allowedAudiences": "organization",
    "createdDateTime": "2020-02-18T16:07:14Z",
    "inference": null,
    "lastModifiedDateTime": "2020-02-18T16:07:14Z",
    "id": "a545e073-999d-4813-9cc5-b6f45a6560f8",
    "createdBy": {
        "device": null,
        "user": null,
        "application": {
            "displayName": "AAD",
            "id": null
        }
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create itemPhone",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
