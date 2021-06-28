---
title: "Get chatMessage"
description: "Read the properties and relationships of a chatMessage object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get chatMessage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [chatMessage](../resources/chatmessage.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /chats/{chatsId}/messages/{chatMessageId}
GET /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}
GET /chats/{chatsId}/messages/{chatMessageId}/replies/{chatMessageId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [chatMessage](../resources/chatmessage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_chatmessage"
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/{chatsId}/messages/{chatMessageId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.chatMessage",
    "id": "301f573e-573e-301f-3e57-1f303e571f30",
    "replyToId": "String",
    "from": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "etag": "String",
    "messageType": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "lastEditedDateTime": "String (timestamp)",
    "deletedDateTime": "String (timestamp)",
    "subject": "String",
    "body": {
      "@odata.type": "microsoft.graph.itemBody"
    },
    "summary": "String",
    "chatId": "String",
    "channelIdentity": {
      "@odata.type": "microsoft.graph.channelIdentity"
    },
    "attachments": [
      {
        "@odata.type": "microsoft.graph.chatMessageAttachment"
      }
    ],
    "mentions": [
      {
        "@odata.type": "microsoft.graph.chatMessageMention"
      }
    ],
    "importance": "String",
    "policyViolation": {
      "@odata.type": "microsoft.graph.chatMessagePolicyViolation"
    },
    "reactions": [
      {
        "@odata.type": "microsoft.graph.chatMessageReaction"
      }
    ],
    "locale": "String",
    "webUrl": "String"
  }
}
```

