---
title: "channel resource type"
description: "A channel is a collection of chatMessages within a team. "
author: "clearab"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channel resource type

Namespace: microsoft.graph

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
|[List tabs](../api/teamstab-list.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|id|String|The channel's unique identifier. Read-only.|
|isFavoriteByDefault|Boolean|Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with [Create team](../api/team-post.md). Default: `false`.|
|email|String| The email address for sending messages to the channel. Read-only.|
|webUrl|String|A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|
|createdDateTime|dateTimeOffset|Read only. Timestamp at which the channel was created.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|
|[filesFolder](../api/channel-get-filesfolder.md)|[driveItem](driveitem.md)|Metadata for the location where the channel's files are stored.|
|operations|[teamsAsyncOperation](teamsasyncoperation.md) collection| The async operations that ran or are running on this team. |

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
  "createdDateTime": "string (timestamp)"
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
