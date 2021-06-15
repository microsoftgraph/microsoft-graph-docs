---
title: "List channels"
description: "Retrieve the list of channels in this team."
author: "clearab"
doc_type: "apiPageType"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# List channels

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [channels](../resources/channel.md) in this [team](../resources/team.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelSettings.Read.Group*, ChannelSettings.ReadWrite.Group*, Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

> **Note**: Permissions marked with * use [resource-specific consent]( https://aka.ms/teams-rsc).

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels
```

## Optional query parameters
This method supports the $filter, $select, and $expand [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Channel](../resources/channel.md) objects in the response body.

## Examples

### Example 1: List all channels

#### Request

The following example shows a request to list all channels.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_channels"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/channels
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-channels-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-channels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-channels-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-channels-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 262

{
  "value": [
    {
      "id": "19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2",
      "createdDateTime": "2020-05-27T19:22:25.692Z",
      "displayName": "General",
      "description": "AutoTestTeam_20210311_150740.2550_fim3udfdjen9",
      "membershipType": "standard"
    }
  ]
}
```

### Example 2: List all private channels

#### Request

The following example shows a request to list all private channels.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_private_channels"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/64c323f2-226a-4e64-8ba4-3e6e3f7b9330/channels?$filter=membershipType eq 'private'
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-private-channels-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-private-channels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-private-channels-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-private-channels-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 262

{
  "value": [
    {
      "id": "19:982abbfca323a582f0a6d00ae2deca@thread.tacv2",
      "createdDateTime": "2020-05-27T19:22:25.692Z",
      "displayName": "General",
      "description": "test private team",
      "membershipType": "private"
    }
  ]
}
```

### Example 3: List all shared channels

#### Request

The following example shows a request to list all shared channels.
> **Note:** Shared channels are only availble in private preview.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_shared_channels"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/6a720ba5-7373-463b-bc9f-4cd04b5c6742/channels?$filter=membershipType eq 'shared'
```



#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 262

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('6a720ba5-7373-463b-bc9f-4cd04b5c6742')/channels",
    "@odata.count": 1,
    "value": [
        {
            "id": "19:LpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81@thread.tacv2",
            "createdDateTime": null,
            "displayName": "shared channel-01",
            "description": "this is shared channel description",
            "isFavoriteByDefault": null,
            "email": "",
            "webUrl": "https://teams.microsoft.com/l/channel/19%3ALpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81%40thread.tacv2/shared%20channel-01?groupId=6a720ba5-7373-463b-bc9f-4cd04b5c6742&tenantId=df81db53-c7e2-418a-8803-0e68d4b88607",
            "membershipType": "shared",
            "moderationSettings": null
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List channels",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


