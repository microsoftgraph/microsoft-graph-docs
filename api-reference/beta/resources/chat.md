---
title: "chat resource type"
description: "A chat is a collection of chatMessages between one or more participants."
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A chat is a collection of [chatMessages](chatmessage.md) between one or more participants. Participants can be users or apps.

## Methods

|  Method       |  Return Type  | Description| Permissions |
|:---------------|:--------|:----------|-----------|
|[List chats](../api/chat-list.md) | [chat](chat.md) collection | Get the list of chats a user is part of.| **Delegated only** |
|[Get chat](../api/chat-get.md) | [chat](chat.md) | Read properties and relationships of the chat.| **Delegated only** |
|[List chat members](../api/conversationmember-list.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the chat.| Delegated and application* |
|[Get chat member](../api/conversationmember-get.md) | [conversationMember](conversationmember.md) | Get a single user in the chat.| Delegated and application* |
|[List messages in a chat](../api/chat-list-message.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a 1:1 or group chat. | Delegated and application* |
|[Get message in chat](../api/chat-get-message.md)  | [chatMessage](../resources/chatmessage.md) | Get a single message in a chat. | Delegated and application* |

>**Note:** When using application permissions, be sure you know how you're going to get the chat ID. Because listing chats with application permissions is not supported, 
not all scenarios are possible. It is possible to get chat IDs with delegated permissions, and from [change notifications for /chats/getAllMessages](../api/subscription-post-subscriptions.md) with application permissions.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| The chat's unique identifier. Read-only.|
| topic| String|  (Optional) Subject or topic for the chat. Only available for group chats.|
| createdDateTime| dateTimeOffset|  Date and time at which the chat was created. Read-only.|
| lastUpdatedDateTime| dateTimeOffset|  Date and time at which the chat was renamed or membership changed. lastUpdatedDateTime is not updated when a message is sent to the chat. Read-only.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
| installedApps | [teamsAppInstallation](teamsappinstallation.md) collection | A collection of all the apps in the chat. Nullable. |
| members | [conversationMember](conversationmember.md) collection | A collection of all people in the chat. Nullable. |
| messages | [chatMessage](chatmessage.md) collection | A collection of all the messages in the chat. Nullable. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chat"
}-->

```json
{
  "id": "string (identifier)",
  "topic": "string",
  "createdDateTime": "dateTimeOffset",
  "lastUpdatedDateTime": "dateTimeOffset"
}
```

## See also

- [channel](channel.md)
- [chatMessage](chatmessage.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->


