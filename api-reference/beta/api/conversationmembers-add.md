---
title: "conversationMember: add"
description: "Add members in bulk to team."
author: "nkramer"
doc_type: "apiPageType"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# conversationMember: add

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add multiple members in a single request to a [team](../resources/team.md). The response provides details about which memberships could and could not be created.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged) | 
|:--------------------|:--------------------------|
| Delegated (work or school account) | TeamMember.ReadWrite.All  |
| Delegated (personal Microsoft account) | Not supported |
| Application | TeamMember.ReadWrite.All   |


## HTTP Request

This is a bound action for adding multiple elements to a **conversationMember** collection in a single request.
<!-- { "blockType": "ignored" } -->

```http
POST /teams/{team-id}/members/add
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the JSON representation of the list of `conversationMember` derivatives that need to be added to the team.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|values|[conversationMember](../resources/conversationmember.md) collection|List of conversation members that should be added.|


## Response

If successful, this action returns a `200 OK` response code and a collection of derivatives of [actionResultPart](../resources/actionresultpart.md) in the response body.

This API returns a `200` response indicating all members supplied were added to the team or a `207` response indicating that only some of the supplied members were added to the team. The caller should inspect the response payload to determine which member additions failed. The response body is a collection of derivatives of the [actionResultPart](../resources/actionresultpart.md) resource.

## Examples

### Example 1: Add members in bulk to a team

#### Request

The following example shows a request to add multiple members to a team.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "bulkaddmembers_team"
}-->

```http
POST https://graph.microsoft.com/beta/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/add
Content-Type: application/json

{
    "values": [
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "roles":[],
            "user@odata.bind": "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')"
        },
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "roles":["owner"],
            "user@odata.bind": "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
        }
    ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bulkaddmembers-team-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bulkaddmembers-team-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/bulkaddmembers-team-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bulkaddmembers-team-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is the response.

> **Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.actionResultPart)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.aadUserConversationMemberResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "18a80140-b0fb-4489-b360-2f6efaf225a0",
            "error": null
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "86503198-b81b-43fe-81ee-ad45b8848ac9",
            "error": null
        }
    ]
}
```

### Example 2: Add members in bulk and encounter partial failure

#### Request

The following example shows a request to add multiple members to a team that results in a partial failure.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "bulkaddmembers_team_partial_failure"
}-->

```http
POST https://graph.microsoft.com/beta/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/add
Content-Type: application/json

{
    "values": [
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "roles":[],
            "user@odata.bind": "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')"
        },
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "roles":["owner"],
            "user@odata.bind": "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
        }
    ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bulkaddmembers-team-partial-failure-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bulkaddmembers-team-partial-failure-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/bulkaddmembers-team-partial-failure-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bulkaddmembers-team-partial-failure-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is the response.

> **Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.actionResultPart)"
} -->

```http
HTTP/1.1 207 MULTI-STATUS
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.addConversationMemberResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "18a80140-b0fb-4489-b360-2f6efaf225a0",
            "error": {
                "code": "NotFound",
                "message": ""
            }
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "86503198-b81b-43fe-81ee-ad45b8848ac9",
            "error": null
        }
    ]
}
```


## See also

- [Add member to team](team-post-members.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add members to team in bulk",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
