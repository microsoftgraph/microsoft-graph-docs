---
title: "educationClass: delta"
description: "Get newly created or updated classes, including membership changes, without having to perform a full read of the entire class collection."
localization_priority: Normal
author: "mlafleur"
ms.prod: "education"
doc_type: apiPageType
---

# educationClass: delta

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created or updated classes, including membership changes, without having to perform a full read of the entire class collection. See [Use delta query](/graph/delta-query-overview) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                              |
| :------------------------------------- | :----------------------------------------------------------------------- |
| Delegated (work or school account)     | EduRoster.ReadBasic, EduRoster.Read, or EduRoster.ReadWrite              |
| Delegated (personal Microsoft account) | Not supported.                                                           |
| Application                            | EduRoster.ReadBasic.All, EduRoster.Read.All, or EduRoster.WriteWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/classes/{id}/delta
POST /education/me/classes/{id}/delta
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationClass](../resources/educationclass.md) collection object in the response body.

## Example

The following example shows how to call this API.

##### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "educationclass_delta"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/{id}/delta
```

##### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationClass",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 585

{
  "value": [
    {
      "displayName": "displayName-value",
      "mailNickname": "mailNickname-value",
      "description": "description-value",
      "createdBy": {
        "application": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "device": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "user": {
          "displayName": "displayName-value",
          "id": "id-value"
        }
      },
      "classCode": "classCode-value",
      "externalName": "externalName-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationClass: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
