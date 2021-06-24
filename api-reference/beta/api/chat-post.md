---
title: "Create chat"
description: "Create a new chat object."
author: "bhartono"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create chat
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [chat](../resources/chat.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Chat.Create, Chat.ReadWrite|
|Delegated (personal Microsoft account) | Not supported. |
|Application | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [chat](../resources/chat.md) object.

The following table lists the properties that are required to create a chat object.

|Property|Type|Description|
|:---|:---|:---|
|topic|(Optional) String|The title of the chat. The chat title can be provided only if the chat is of `group` type.|
|chatType|[chatType](../resources/chat.md#chattype-values)| Specifies the type of chat. Possible values are: `group` and `oneOnOne`. |
|members|[conversationMember](../resources/conversationmember.md) collection|List of conversation members that should be added. Every single user, including the user initiating the create request, who will participate in the chat must be specified in this list.|
|installedApps| [teamsApp](../resources/teamsapp.md) collection|List of apps that should be installed in the chat.|

> **Note:** Currently, only one app installation is supported. If multiple app installations are listed in the request, the response will be a `Bad Request` error.

## Response

### Response for creating a one-on-one chat without installed apps
If successful, this method returns a `201 Created` response code and the newly created [chat](../resources/chat.md) resource in the response body.

### Response for creating a one-on-one chat with installed apps
If successful, this method returns a `202 Accepted` response code and Location header that contains a link to the [teamsAsyncOperation](../resources/teamsasyncoperation.md). The link can be used to get the operation status and details. For details, see [Get operation on chat](teamsasyncoperation-get.md#example-get-operation-on-chat).

## Examples

### Example 1: Create a one-on-one chat

#### Request
<!-- {
  "blockType": "request",
  "name": "create_chat_oneOnOne"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats
Content-Type: application/json

{
  "chatType": "oneOnOne",
  "members": [
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
    },
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')"
    }
  ]
}
```

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats/$entity",
    "id": "19:82fe7758-5bb3-4f0d-a43f-e555fd399c6f_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
    "topic": null,
    "createdDateTime": "2020-12-04T23:10:28.51Z",
    "lastUpdatedDateTime": "2020-12-04T23:10:28.51Z",
    "chatType": "oneOnOne",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3A82fe7758-5bb3-4f0d-a43f-e555fd399c6f_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
}
```

### Example 2: Create a group chat

#### Request
<!-- {
  "blockType": "request",
  "name": "create_chat_group"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats
Content-Type: application/json

{
  "chatType": "group",
  "topic": "Group chat title",
  "members": [
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca')"
    },
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('82fe7758-5bb3-4f0d-a43f-e555fd399c6f')"
    },
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('3626a173-f2bc-4883-bcf7-01514c3bfb82')"
    }
  ]
}
```

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats/$entity",
    "id": "19:1c5b01696d2e4a179c292bc9cf04e63b@thread.v2",
    "topic": "Group chat title",
    "createdDateTime": "2020-12-04T23:11:16.175Z",
    "lastUpdatedDateTime": "2020-12-04T23:11:16.175Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3A1c5b01696d2e4a179c292bc9cf04e63b@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
}
```

### Example 3: Create a one-on-one chat with installed apps

#### Request
<!-- {
  "blockType": "request",
  "name": "create_chat_oneOnOne_with_installed_apps"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats
Content-Type: application/json

{
  "chatType": "oneOnOne",
  "members": [
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
    },
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "roles": ["owner"],
      "user@odata.bind": "https://graph.microsoft.com/beta/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')"
    }
  ],
  "installedApps": [
    {
      "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/05F59CEC-A742-4A50-A62E-202A57E478A4"
    }
  ]
}
```

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: /chats('19:82fe7758-5bb3-4f0d-a43f-e555fd399c6f_bfb5bb25-3a8d-487d-9828-7875ced51a30@unq.gbl.spaces')/operations('2432b57b-0abd-43db-aa7b-16eadd115d34-861f06db-0208-4815-b67a-965df0d28b7f-10adc8a6-60db-42e2-9761-e56a7e4c7bc9')
```

The async operation is initiated, and the response contains a Location header which includes a link to the to the [teamsAsyncOperation](../resources/teamsasyncoperation.md). The link can be used to get the operation status and details. For details, see [Get operation on chat](teamsasyncoperation-get.md#example-get-operation-on-chat).

## See also
- [Get teamsAsyncOperation](teamsasyncoperation-get.md)
