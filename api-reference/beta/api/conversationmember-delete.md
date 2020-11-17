---
title: "Delete conversationMember"
description: "Delete a conversationMember from a channel."
author: "clearab"
doc_type: "apiPageType"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Delete conversationMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [conversationMember](../resources/conversationmember.md) from a [channel](../resources/channel.md).

> [!NOTE]
> This operation is only supported on channels with a [channelMembershipType](../resources/enums.md#channelmembershiptype-values) of `private`. Calls with any other [channelMembershipType](../resources/enums.md#channelmembershiptype-values) will return a `400 Bad Request` response.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChannelMember.ReadWrite.All, Group.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChannelMember.ReadWrite.All, Group.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored"} -->
```http
DELETE /teams/{id}/channels/{id}/members/{id}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_conversation_member"
} -->
```http
DELETE https://graph.microsoft.com/beta/teams/{id}/channels/{id}/members/{id}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-conversation-member-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-conversation-member-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-conversation-member-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-conversation-member-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```


