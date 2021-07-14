---
title: "Update chat"
description: "Update the properties of a chat object."
author: "bhartono"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Update chat
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [chat](../resources/chat.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Chat.ReadWrite|
|Delegated (personal Microsoft account) | Not supported. |
|Application | ChatSettings.ReadWrite.Chat*, Chat.ReadWrite.All |

> **Note**: Permissions marked with * use [resource-specific consent](https://aka.ms/teams-rsc).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /chats/{chat-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [chat](../resources/chat.md) object.

The following table shows the properties that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|topic|String|The title of the chat. This can only be set for a chat with a **chatType** value of `group`.|


## Response

If successful, this method returns a `200 OK response` code and the updated **chat** resource in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_chat"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/chats/19:1c5b01696d2e4a179c292bc9cf04e63b@thread.v2
Content-Type: application/json

{
    "topic": "Group chat title update"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-chat-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats/$entity",
    "id": "19:1c5b01696d2e4a179c292bc9cf04e63b@thread.v2",
    "topic": "Group chat title update",
    "createdDateTime": "2020-12-04T23:11:16.175Z",
    "lastUpdatedDateTime": "2020-12-04T23:12:19.943Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3A1c5b01696d2e4a179c292bc9cf04e63b@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
}
```

