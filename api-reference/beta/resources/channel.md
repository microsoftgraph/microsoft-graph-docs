---
title: "channel resource type"
description: "A channel is a collection of chatMessages within a team. "
author: "clearab"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Teams](../resources/team.md) are made up of channels, which are the conversations you have with your teammates. Each channel is dedicated to a specific topic, department, or project. Channels are where the work actually gets done - where text, audio, and video conversations open to the whole team happen,
where files are shared, and where tabs are added.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List channels](../api/channel-list.md) | [channel](channel.md) collection | Get the list of channels in this team.|
|[Create channel](../api/channel-post.md) | [channel](channel.md) | Create a new channel by including the display name and description.|
|[Get channel](../api/channel-get.md) | [channel](channel.md) | Read properties and relationships of the channel.|
|[Update channel](../api/channel-patch.md) | [channel](channel.md) | Update properties of the channel.|
|[Delete channel](../api/channel-delete.md) | None | Delete a channel.|
|[Get message delta](../api/chatmessage-delta.md)  | [chatMessage](../resources/chatmessage.md) | Get incremental messages in a channel. |
|[List channel messages](../api/channel-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a channel |
|[List channel members](../api/conversationmember-list.md)| [conversationMember](conversationmember.md) collection| List the members of a channel. |
|[Get channel member](../api/conversationmember-get.md)| [conversationMember](conversationmember.md)| Get a member of a channel. |
|[Add channel member](../api/conversationmember-add.md) | [conversationMember](conversationmember.md)| Add a member to a channel. Only supported for `channelType` of `private`.|
|[Update channel member](../api/conversationmember-update.md) | [conversationMember](conversationmember.md)| Update a member of a channel. Only supported for `channelType` of `private`.|
|[Delete channel member](../api/conversationmember-delete.md) | [conversationMember](conversationmember.md)| Delete a member of a channel. Only supported for `channelType` of `private`.|
|[Create chatMessage in a channel](../api/channel-post-messages.md) | [chatMessage](../resources/chatmessage.md) | Send a message to a channel. |
|[Create chatMessage reply in a channel](../api/channel-post-messagereply.md) | [chatMessage](../resources/chatmessage.md) | Reply to a message in a channel.|
|[List tabs](../api/teamstab-list.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[Get tab](../api/teamstab-get.md) | [teamsTab](teamstab.md) | Reads a tab pinned to a channel.|
|[Add tab](../api/teamstab-add.md) | [teamsTab](teamstab.md) | Adds (pins) a tab to a channel.|
|[Remove tab](../api/teamstab-delete.md) | None | Removes (unpins) a tab from a channel.|
|[Update tab](../api/teamstab-update.md) | [teamsTab](teamstab.md) | Updates the tab properties.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|id|String|The channel's unique identifier. Read-only.|
|isFavoriteByDefault|Boolean|Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Default: `false`.|
|email|String| The email address for sending messages to the channel. Read-only.|
|webUrl|String|A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|
|membershipType|[channelMembershipType](../resources/enums.md#channelmembershiptype-values)|The type of the channel. Can be set during creation and cannot be changed. Default: standard.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable. Currently this API only supports reading but will eventually support writing messages too.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|
|members|[conversationMember](conversationmember.md) collection|A collection of membership records associated with the channel.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "messages"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.channel"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "isFavoriteByDefault": true,
  "email": "string",
  "webUrl": "string",
  "membershipType": "channelMembershipType"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "channel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
