---
title: "channel resource type"
description: "A channel is a collection of messages within a team. "
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channel resource type

[Teams](../resources/team.md) are made up of channels, which are the conversations you have with your teammates. 
Each channel is dedicated to a specific topic, department, or project.
Channels are where the work actually gets done - where text, audio, and video conversations open to the whole team happen,
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
|[Get tab](../api/teamstab-get.md) | [teamsTab](teamstab.md) | Reads a tab pinned to a channel.|
|[Add tab](../api/teamstab-add.md) | [teamsTab](teamstab.md) | Adds (pins) a tab to a channel.|
|[Remove tab](../api/teamstab-delete.md) | None | Removes (unpins) a tab from a channel.|
|[Update tab](../api/teamstab-update.md) | [teamsTab](teamstab.md) | Updates the tab properties.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|email|String| The email address for sending messages to the channel. Read-only.|
|id|String|The channels's unique identifier. Read-only.|
|webUrl|String|A hyperlink that will navigate to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.channel"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "email": "string (identifier)",
  "id": "string",
  "webUrl": "string"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "channel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
