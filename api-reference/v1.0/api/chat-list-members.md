---
title: "List members of a chat"
description: "Retrieve members of a chat."
author: "bhartono"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List members of a chat

Namespace: microsoft.graph

List all [conversation members](../resources/conversationmember.md) in a [chat](../resources/chat.md).

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future. The client should not assume that all members are from the current tenant only.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All. |

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/members
GET /users/{user-id | user-principal-name}/chats/{chat-id}/members
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

If successful, this method returns a `200 OK` response code and a list of [conversationMember](../resources/conversationmember.md) objects in the response body.

## Example

### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_conversation_members_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/chats/19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_5031bb31-22c0-4f6f-9f73-91d34ab2b32d@unq.gbl.spaces/members
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-conversation-members-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-conversation-members-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-conversation-members-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-conversation-members-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')/chats('19%3A8b081ef6-4792-4def-b2c9-c363a1bf41d5_5031bb31-22c0-4f6f-9f73-91d34ab2b32d%40unq.gbl.spaces')/members",
    "@odata.count": 3,
    "value": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "roles": [
                "owner"
            ],
            "displayName": "John Doe",
            "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "email": null,
            "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
            "visibleHistoryStartDateTime": "2019-04-18T23:51:43.255Z"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "2de87aaf-844d-4def-9dee-2c317f0be1b3",
            "roles": [
                "owner"
            ],
            "displayName": "Bart Hogan",
            "userId": "2de87aaf-844d-4def-9dee-2c317f0be1b3",
            "email": null,
            "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z"
    },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "07ad17ad-ada5-4f1f-a650-7a963886a8a7",
            "roles": [
                "owner"
            ],
            "displayName": "Minna Pham",
            "userId": "07ad17ad-ada5-4f1f-a650-7a963886a8a7",
            "email": null,
            "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
            "visibleHistoryStartDateTime": "2019-04-18T23:51:43.255Z"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conversation: member list",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


