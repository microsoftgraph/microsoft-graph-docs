---
title: "List chatMessageHostedImages in a chatmessage"
description: "List all the hosted images in a chatMessage."
localization_priority: Priority
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List chatMessageHostedImages in a chatMessage

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [hosted images](../resources/chatmessagehostedimage.md) in a [chatMessage](../resources/chatmessage.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)|Group.Read.All, Group.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application| Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{id}/channels/{id}/messages/{id}/hostedImages
GET /teams/{id}/channels/{id}/messages/{id}/replies/{id}/hostedImages
GET /chats/{id}/messages/{id}/hostedImages
GET /users/{id}/chats/{id}/messages/{id}/hostedImages
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hostedImage](../resources/chatmessagehostedimage.md) objects in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_channel_messages"
}-->

```http
GET https://graph.microsoft.com/beta/teams/{id}/channels/{id}/messages/{id}/hostedImages
```

##### Response

Here is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
  "value": [
    {
        "id": "id-value",
        "url": "url-value"
    },
    {
        "id": "id-value",
        "url": "url-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List hosted images in a chatmessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/chatmessagehostedimage-list.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
