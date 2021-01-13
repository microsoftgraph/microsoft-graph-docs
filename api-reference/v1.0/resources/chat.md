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

A chat is a collection of [chatMessages](chatmessage.md) between one or more participants. Participants can be users or apps.

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[Get chat between user and app](../api/userscopeteamsappinstallation-get-chat.md) | [chat](chat.md)| Get one-on-one chat between user and the app | 

>**Note:** When using application permissions, be sure you know how you're going to get the chat ID. Because listing chats with application permissions is not supported, 
not all scenarios are possible. It is possible to get chat IDs with delegated permissions, and from [change notifications for /chats/getAllMessages](../api/subscription-post-subscriptions.md) with application permissions.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| The chat's unique identifier. Read-only.|


## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
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


