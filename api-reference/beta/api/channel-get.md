---
title: "Get channel"
description: "Retrieve the properties and relationships of a channel."
author: "nkramer"
doc_type: apiPageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Get channel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [channel](../resources/channel.md).

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
GET /teams/{team-id}/channels/{channel-id}
```

## Optional query parameters

This method supports the `$filter`, `$select`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [channel](../resources/channel.md) object in the response body.

## Example

### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_channel"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-channel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-channel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-channel-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-channel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
    "id": "19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2",
    "createdDateTime": "2020-05-27T19:22:25.692Z",
    "displayName": "General",
    "description": "AutoTestTeam_20210311_150740.2550_fim3udfdjen9",
    "membershipType": "standard"
}

```

Here is an example of the response for a standard channel with channel moderation off.

```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('8bb12236-b929-42e0-94a0-1c417466ebf8')/channels/$entity",
    "id": "19:d468258bc90f4a358361b5d73b89d39b@thread.skype",
    "displayName": "TestChannelModeration",
    "description": "Test channel moderation.",
    "isFavoriteByDefault": null,
    "email": "",
    "webUrl": "https://teams.microsoft.com/l/channel/19%3Ad468258bc90f4a358361b5d73b89d39b%40thread.skype/General?groupId=8bb12236-b929-42e0-94a0-1c417466ebf8&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
    "membershipType": "standard",
    "moderationSettings": {
        "userNewMessageRestriction": "everyone",
        "replyRestriction": "everyone",
        "allowNewMessageFromBots": true,
        "allowNewMessageFromConnectors": true
    }
}
```

Here is an example of the response for a standard channel with channel moderation on.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('8bb12236-b929-42e0-94a0-1c417466ebf8')/channels/$entity",
    "id": "19:d468258bc90f4a358361b5d73b89d39b@thread.skype",
    "displayName": "TestChannelModeration",
    "description": "Test channel moderation.",
    "isFavoriteByDefault": null,
    "email": "",
    "webUrl": "https://teams.microsoft.com/l/channel/19%3Ad468258bc90f4a358361b5d73b89d39b%40thread.skype/General?groupId=8bb12236-b929-42e0-94a0-1c417466ebf8&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
    "membershipType": "standard",
    "moderationSettings": {
        "userNewMessageRestriction": "moderators",
        "replyRestriction": "everyone",
        "allowNewMessageFromBots": true,
        "allowNewMessageFromConnectors": true
    }
}
```

Here is an example of the response for a private channel.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('8bb12236-b929-42e0-94a0-1c417466ebf8')/channels/$entity",
    "id": "19:d468258bc90f4a358361b5d73b89d39b@thread.skype",
    "displayName": "TestChannelModeration",
    "description": "Test channel moderation.",
    "isFavoriteByDefault": null,
    "email": "",
    "webUrl": "https://teams.microsoft.com/l/channel/19%3Ad468258bc90f4a358361b5d73b89d39b%40thread.skype/General?groupId=8bb12236-b929-42e0-94a0-1c417466ebf8&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
    "membershipType": "private",
    "moderationSettings": null
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


