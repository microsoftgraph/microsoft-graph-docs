---
title: "List hostedContents"
description: "Retrieve the list of chatMessageHostedContent objects from a message."
localization_priority: Normal
author: "RamjotSingh"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# List hostedContents

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) objects from a message. This API only lists the hosted content objects. To get the content bytes, see [get chatmessage hosted content](chatmessagehostedcontent-get.md)

## Permissions

### Permissions for channel

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChannelMessage.Read.All, Group.Read.All, Group.Read.WriteAll |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChannelMessage.Read.Group*, ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All |

### Permissions for chat

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| Chat.Read, Chat.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChatMessage.Read.Chat*, Chat.Read.All, Chat.ReadWrite.All|

> **Note**: Permissions marked with * use [resource-specific consent]( https://aka.ms/teams-rsc).

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

**Get hostedContents in a channel message**
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels/{channel-id}/messages/{message-id}/hostedContents
GET /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}/hostedContents
```

**Get hostedContents in a chat message**
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/messages/{message-id}/hostedContents
GET /users/{user-id | user-principal-name}/chats/{chat-id}/messages/{message-id}/hostedContents
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) objects in the response body.

## Examples

### Example 1: List hosted content for a channel message

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hostedcontentschannelmessage_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1616963377068/hostedContents
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hostedcontentschannelmessage-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hostedcontentschannelmessage-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-hostedcontentschannelmessage-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hostedcontentschannelmessage-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** `contentBytes` and `contentType` are always set to null.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages('1616963377068')/hostedContents",
    "@odata.count": 2,
    "value": [
        {
            "id": "aWQ9eF8wLXd1cy1kMS02YmI3Nzk3ZGU2MmRjODdjODA4YmQ1ZmI0OWM4NjI2ZCx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kMS02YmI3Nzk3ZGU2MmRjODdjODA4YmQ1ZmI0OWM4NjI2ZC92aWV3cy9pbWdv",
            "contentBytes": null,
            "contentType": null
        },
        {
            "id": "aWQ9eF8wLXd1cy1kNi0xMzY3OTE4MzVlODIxOGZlMmUwZWEwYTA1ODAxNjRiNCx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kNi0xMzY3OTE4MzVlODIxOGZlMmUwZWEwYTA1ODAxNjRiNC92aWV3cy9pbWdv",
            "contentBytes": null,
            "contentType": null
        }
    ]
}
```

### Example 2: List hosted content for reply to a channel message

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hostedcontentschannelmessage_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1616963377068/replies/1616963389737/hostedContents
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hostedcontentschannelmessage-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hostedcontentschannelmessage-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-hostedcontentschannelmessage-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hostedcontentschannelmessage-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** `contentBytes` and `contentType` are always set to null.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages('1616963377068')/replies('1616963389737')/hostedContents",
    "@odata.count": 2,
    "value": [
        {
            "id": "aWQ9eF8wLXd1cy1kMy1hMDE3MmZiYjVkYzcxNGM4NWU5NDQwNWE5ZjNkNThmYyx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kMy1hMDE3MmZiYjVkYzcxNGM4NWU5NDQwNWE5ZjNkNThmYy92aWV3cy9pbWdv",
            "contentBytes": null,
            "contentType": null
        },
        {
            "id": "aWQ9eF8wLXd1cy1kOS03ZDlmOGVlMzk4ZGQ3YTZkMDdhMDg4OGI5ODZlNDdkYyx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kOS03ZDlmOGVlMzk4ZGQ3YTZkMDdhMDg4OGI5ODZlNDdkYy92aWV3cy9pbWdv",
            "contentBytes": null,
            "contentType": null
        }
    ]
}
```

### Example 2 : List hosted content for message in a chat

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hostedcontentschatmessage_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1615971548136/hostedContents
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hostedcontentschatmessage-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hostedcontentschatmessage-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-hostedcontentschatmessage-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hostedcontentschatmessage-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** `contentBytes` and `contentType` are always set to null.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3A2da4c29f6d7041eca70b638b43d45437%40thread.v2')/messages('1615971548136')/hostedContents",
    "@odata.count": 1,
    "value": [
        {
            "id": "aWQ9eF8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNix0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNi92aWV3cy9pbWdv",
            "contentBytes": null,
            "contentType": null
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List hostedContents",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


