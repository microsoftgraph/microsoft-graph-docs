---
title: "Add member to channel"
description: "Add member to channel."
author: "laujan" 
doc_type: apiPageType
localization_priority: Normal 
ms.prod: "microsoft-teams"
---

# Add member to channel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [conversationMember](../resources/conversationmember.md) to a [channel](../resources/channel.md). This operation is allowed only for channels with a **membershipType** value of `private` or `shared`.
> **Note:** Shared channels are only available in private preview.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChannelMember.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored"} -->
```http
POST /teams/{team-id}/channels/{channel-id}/members
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-type | application/json. Required. |

## Request body

Include the following properties in the request body.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|roles|string collection|The role for the user. Must be `owner` or empty.|
|user|[user](../resources/user.md)|The user to add to the channel.|

## Response

If successful, this method returns a `201 Created` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Examples

### Example 1: Add a member to a private channel

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channel_add_member_1"
} -->
```http
POST https://graph.microsoft.com/beta/teams/ece6f0a1-7ca4-498b-be79-edf6c8fc4d82/channels/19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype/members
Content-type: application/json
Content-length: 100

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "roles": ["owner"],
    "user@odata.bind": "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/channel-add-member-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/channel-add-member-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/channel-add-member-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/channel-add-member-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 468

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('ece6f0a1-7ca4-498b-be79-edf6c8fc4d82')/channels('19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype')/members/microsoft.graph.aadUserConversationMember/$entity",
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "id": "ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=",
  "roles": [],
  "displayName": "John Doe",
  "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "email": null
}
```

### Example 2: Add a member with the owner role to a private channel

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channel_add_member_2"
} -->

```http
POST https://graph.microsoft.com/beta/teams/ece6f0a1-7ca4-498b-be79-edf6c8fc4d82/channels/19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype/members
Content-type: application/json
Content-length: 100

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "roles": ["owner"],
    "user@odata.bind": "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/channel-add-member-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/channel-add-member-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/channel-add-member-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/channel-add-member-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 468

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('ece6f0a1-7ca4-498b-be79-edf6c8fc4d82')/channels('19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype')/members/microsoft.graph.aadUserConversationMember/$entity",
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "roles": ["owner"],
  "displayName": "John Doe",
  "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "email": null
}
```
### Example 3: Add a user who is part of the same tenant as a member to a shared channel

#### Request
<!-- {
  "blockType": "request",
  "name": "shared_channel_add_intra_tenant_member"
} -->

```http
POST https://graph.microsoft.com/beta/teams/6a720ba5-7373-463b-bc9f-4cd04b5c6742/channels/19:LpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81@thread.tacv2/members
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "roles": [],
    "user@odata.bind": "https://graph.microsoft.com/beta/users/24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4"
}
```

#### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 468

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('6a720ba5-7373-463b-bc9f-4cd04b5c6742')/channels('19%3ALpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81%40thread.tacv2')/members/$entity",
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "id": "ZGY4MWRiNTMtYzdlMi00MThhLTg4MDMtMGU2OGQ0Yjg4NjA3IyMxOTpMcHhTaEhaWmg5dXRqTmNFbVVTNWFPRVA5QVN3ODVPVW4wNU5jV1lBaFg4MUB0aHJlYWQudGFjdjIjIzI0YjM4MTliLTRlMWQtNGYzZS04NmJkLWU0MmI1NGQwYjJiNA==",
    "roles": [],
    "displayName": "John Doe",
    "visibleHistoryStartDateTime": null,
    "userId": "24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4",
    "email": "john_doe@crosstenantchannel1.onmicrosoft.com",
    "tenantId": "df81db53-c7e2-418a-8803-0e68d4b88607"
}
```

### Example 4: Add a user who is part of a different tenant as a member to a shared channel

#### Request
<!-- {
  "blockType": "request",
  "name": "shared_channel_add_x_tenant_member"
} -->

```http
POST https://graph.microsoft.com/beta/teams/6a720ba5-7373-463b-bc9f-4cd04b5c6742/channels/19:LpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81@thread.tacv2/members
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "roles": [],
    "user@odata.bind": "https://graph.microsoft.com/beta/users/bc3598dd-cce4-4742-ae15-173429951408",
    "tenantId": "a18103d1-a6ef-4f66-ac64-e4ef42ea8681"
}
```

#### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 468

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('6a720ba5-7373-463b-bc9f-4cd04b5c6742')/channels('19%3ALpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81%40thread.tacv2')/members/$entity",
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "id": "YTE4MTAzZDEtYTZlZi00ZjY2LWFjNjQtZTRlZjQyZWE4NjgxIyMxOTpMcHhTaEhaWmg5dXRqTmNFbVVTNWFPRVA5QVN3ODVPVW4wNU5jV1lBaFg4MUB0aHJlYWQudGFjdjIjI2JjMzU5OGRkLWNjZTQtNDc0Mi1hZTE1LTE3MzQyOTk1MTQwOA==",
    "roles": [],
    "displayName": "John Doe",
    "visibleHistoryStartDateTime": null,
    "userId": "bc3598dd-cce4-4742-ae15-173429951408",
    "email": "John_Doe@fabrikam.onmicrosoft.com",
    "tenantId": "a18103d1-a6ef-4f66-ac64-e4ef42ea8681"
}
```

## See also

- [Add member to team](team-post-members.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add member to channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
