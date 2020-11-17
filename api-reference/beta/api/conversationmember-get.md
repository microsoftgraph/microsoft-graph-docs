---
title: "Get conversationMember"
description: "Retrieve a member of a chat or channel."
author: "clearab"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get conversationMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a [conversationMember](../resources/conversationmember.md) from a [chat](../resources/chat.md) or [channel](../resources/channel.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| For **user** or **chat** resource: Chat.ReadBasic, Chat.Read, Chat.ReadWrite<br/><br/>For **channel** resource: ChannelMember.Read.All, ChannelMember.ReadWrite, Group.Read.All, Group.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| For **user** or **chat** resource: Not supported.<br/><br/>For **channel** resource: Member.Read.Group*, ChannelMember.Read.All, ChannelMember.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

> **Note**: Permissions marked with * use [resource-specific consent](https://aka.ms/teams-rsc).

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{id}/members/{id}
GET /users/{id}/chats/{id}/members/{id}
GET /teams/{id}/channels/{id}/members/{id}
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

If successful, this method returns a `200 OK` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Example

### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_conversation_member"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/{id}/members/{id}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-conversation-member-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-conversation-member-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-conversation-member-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-conversation-member-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_conversation_member",
  "@odata.type": "microsoft.graph.conversationMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
  "id": "id-value",
  "displayName": "display-name-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conversation: member get",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


