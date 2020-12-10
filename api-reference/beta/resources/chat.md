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

|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List chats](../api/chat-list.md) | [chat](chat.md) collection | Get the list of chats a user is part of.| 
|[Get chat](../api/chat-get.md) | [chat](chat.md) | Read properties and relationships of the chat.| 
|[List chat members](../api/conversationmember-list.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the chat.| 
|[Get chat member](../api/conversationmember-get.md) | [conversationMember](conversationmember.md) | Get a single user in the chat.| 
|[List messages in a chat](../api/chat-list-message.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a 1:1 or group chat. | 
|[Get message in chat](../api/chat-get-message.md)  | [chatMessage](../resources/chatmessage.md) | Get a single message in a chat. | 
|[Get chat between user and app](../api/userscopeteamsappinstallation-get-chat.md) | [chat](chat.md)| Get one-on-one chat between user and the app |
|[Get all chat messages](../api/chats-getallmessages.md)| [chat](chat.md) collection| Get messages from all chats that a user is a participant in, including one-on-one chats, group chats, and meeting chats. |
|[List apps in chat](../api/chat-list-installedapps.md) |[teamsAppInstallation](teamsappinstallation.md) collection | List apps installed in a chat.|
|[Get app in chat](../api/chat-get-installedapps.md) | [teamsAppInstallation](teamsappinstallation.md) | Get a specific app installed in a chat.|
|[Add app in chat](../api/chat-post-installedapps.md) | | Adds (installs) an app in a chat.|
|[Upgrade app in chat](../api/chat-teamsappinstallation-upgrade.md) | None | Update to the latest version of the app installed in chat.|
|[Uninstall app from chat](../api/chat-delete-installedapps.md) | None | Remove (uninstall) app from a chat.|
|[List tabs in chat](../api/chat-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a chat.|
|[Get tab in chat](../api/chat-get-tabs.md) | [teamsTab](teamstab.md) | Get a specific tab pinned to a chat.|
|[Add tab to chat](../api/chat-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a chat.|
|[Update tab in chat](../api/chat-patch-tabs.md) | [teamsTab](teamstab.md) | Updates the properties of a tab in a chat.|
|[Remove tab from chat](../api/chat-delete-tabs.md) | None | Remove (unpin) a tab from a chat.|

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


