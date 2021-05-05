---
title: "List tabs in chat"
description: "Retrieve the list of tabs in the specified chat. "
author: "subray"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List tabs in chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [tabs](../resources/teamstab.md) in the specified [chat](../resources/chat.md).

> **Note**: If the chat is associated with an [onlineMeeting](../resources/onlinemeeting.md) instance, then, effectively, the tabs pinned in the meeting will be listed. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsTab.ReadWriteForChat, TeamsTab.Read.All, TeamsTab.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamsTab.ReadWriteForChat.All, TeamsTab.Read.All, TeamsTab.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /chats/{chat-id}/tabs
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
If successful, this method returns a `200 OK` response code and collection of [tabs](../resources/teamstab.md) objects in the response body.

## Examples

### Example 1: List all the tabs in the chat along with associated Teams app
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_tabs_in_chat"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/tabs?$expand=teamsApp
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-tabs-in-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-tabs-in-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-tabs-in-chat-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-tabs-in-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsTab)"
}
-->

```http
HTTP/1.1 200 Success
Content-type: application/json

{
  "value": [
    {
      "id": "794f0e4e-4d10-4bb5-9079-3a465a629eff",
      "displayName": "My Contoso Tab - updated",
      "sortOrderIndex": "20",
      "webUrl": "https://teams.microsoft.com/l/entity/com.microsoft.teamspace.tab.web/_djb2_msteams_prefix_193fe248-24e6-478f-a66c-ede9ce6dd547?context=%7b%0d%0a++%22context%22%3a+%22chat%22%2c%0d%0a++%22chatId%22%3a+%2219%3ad65713bc498c4a428c71ef9353e6ce20%40thread.v2%22%2c%0d%0a++%22subEntityId%22%3a+null%0d%0a%7d&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
      "configuration": {
        "entityId": "2DCA2E6C7A10415CAF6B8AB6661B3154",
        "contentUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView",
        "websiteUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154",
        "removeUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab"
      },
      "teamsApp": {
        "id": "06805b9e-77e3-4b93-ac81-525eb87513b8",
        "displayName": "Contoso",
        "distributionMethod": "store"
      }
    },
    {
      "id": "1f7b40e5-ecdf-40cb-b02e-e785cf71c0e9",
      "displayName": "Website2",
      "teamsAppId": null,
      "sortOrderIndex": "10000100",
      "messageId": "1607411851584",
      "webUrl": "https://teams.microsoft.com/l/entity/com.microsoft.teamspace.tab.web/_djb2_msteams_prefix_44125e1d-04b1-421a-9f45-19d913494b3e?context=%7b%0d%0a++%22context%22%3a+%22chat%22%2c%0d%0a++%22chatId%22%3a+%2219%3ad65713bc498c4a428c71ef9353e6ce20%40thread.v2%22%2c%0d%0a++%22subEntityId%22%3a+null%0d%0a%7d&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
      "configuration": {
        "entityId": null,
        "contentUrl": "https://www.bing.com",
        "removeUrl": null,
        "websiteUrl": "https://www.bing.com",
        "dateAdded": "2020-12-08T07:17:29.748Z"
      },
      "teamsApp": {
        "id": "com.microsoft.teamspace.tab.web",
        "externalId": null,
        "displayName": "Website",
        "distributionMethod": "store"
      }
    },
    {
      "id": "b92dd123-1624-425c-a808-2f11e03534a5",
      "displayName": "Some random board",
      "sortOrderIndex": "10000100100",
      "messageId": "1607412162267",
      "webUrl": "https://teams.microsoft.com/l/entity/49e6f432-d79c-49e8-94f7-89b94f3672fd/_djb2_msteams_prefix_2919ec48-12d8-4533-b849-56c4d207734b?context=%7b%0d%0a++%22context%22%3a+%22chat%22%2c%0d%0a++%22chatId%22%3a+%2219%3ad65713bc498c4a428c71ef9353e6ce20%40thread.v2%22%2c%0d%0a++%22subEntityId%22%3a+null%0d%0a%7d&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
      "configuration": {
        "entityId": "5fcf29c17a3a3142160b8694",
        "contentUrl": "https://trello.com/integrations/teams/tab-content?iframeSource=msteams&contentUrl=https%3A%2F%2Ftrello.com%2Fb%2FkS2FslqK%2Fsome-random-board",
        "removeUrl": "https://trello.com/integrations/teams/tab-delete?iframeSource=msteams",
        "websiteUrl": "https://trello.com/b/kS2FslqK/some-random-board",
        "dateAdded": "2020-12-08T07:22:40.001Z"
      },
      "teamsApp": {
        "id": "49e6f432-d79c-49e8-94f7-89b94f3672fd",
        "externalId": null,
        "displayName": "Trello",
        "distributionMethod": "store"
      }
    }
  ]
}
```

### Example 2: List all the tabs belonging to a specific app in a chat
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_tabs_in_chat_app_filter"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/tabs?$expand=teamsApp&$filter=teamsApp/id eq 'com.microsoft.teamspace.tab.web'
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-tabs-in-chat-app-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-tabs-in-chat-app-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-tabs-in-chat-app-filter-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-tabs-in-chat-app-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsTab)"
}
-->

```http
HTTP/1.1 200 Success
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3Ad65713bc498c4a428c71ef9353e6ce20%40thread.v2')/tabs(teamsApp())",
    "@odata.count": 1,
    "value": [
        {
            "id": "1f7b40e5-ecdf-40cb-b02e-e785cf71c0e9",
            "displayName": "Website2",
            "teamsAppId": null,
            "sortOrderIndex": "10000100",
            "messageId": "1607411851584",
            "webUrl": "https://teams.microsoft.com/l/entity/com.microsoft.teamspace.tab.web/_djb2_msteams_prefix_44125e1d-04b1-421a-9f45-19d913494b3e?context=%7b%0d%0a++%22context%22%3a+%22chat%22%2c%0d%0a++%22chatId%22%3a+%2219%3ad65713bc498c4a428c71ef9353e6ce20%40thread.v2%22%2c%0d%0a++%22subEntityId%22%3a+null%0d%0a%7d&tenantId=139d16b4-7223-43ad-b9a8-674ba63c7924",
            "configuration": {
                "entityId": null,
                "contentUrl": "https://www.bing.com",
                "removeUrl": null,
                "websiteUrl": "https://www.bing.com",
                "dateAdded": "2020-12-08T07:17:29.748Z"
            },
            "teamsApp": {
                "id": "com.microsoft.teamspace.tab.web",
                "externalId": null,
                "displayName": "Website",
                "distributionMethod": "store"
            }
        }
    ]
}
```

## See also

- [List tabs in channel](channel-list-tabs.md)
- 
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List all tabs in chat",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


