---
title: "chat resource type"
description: "A chat is a collection of chatMessages between one or more participants."
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chat resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A chat is a collection of [chatMessages](chatmessage.md) between one or more participants. Participants can be users or apps.

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[List chats](../api/chat-list.md) | [chat](channel.md) collection | Get the list of chats a user is part of.|
|[Get chat](../api/chat-get.md) | [chat](channel.md) | Read properties and relationships of the chat.|
|[List chat members](../api/conversationmember-list.md) | [conversationmember](conversationmember.md) collection | Get the list of all users in the chat.|
|[Get chat member](../api/conversationmember-get.md) | [conversationmember](conversationmember.md) | Get a single user in the chat.|
|[List messages in a chat](../api/chatmessage-list.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a 1:1 or group chat. |
|[Get message in chat](../api/chatmessage-get.md)  | [chatMessage](../resources/chatmessage.md) | Get a single message in a chat. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| The chat's unique identifier. Read-only.|
| topic| String|  (Optional) Subject or topic for the chat. Only available for group chats.|
| createdDateTime| dateTimeOffset|  Date and time at which the chat was created. Read-only.|
| lastUpdatedDateTime| dateTimeOffset|  Date and time at which the chat was updated. Read-only.|

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
