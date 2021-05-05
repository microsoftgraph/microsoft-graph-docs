---
title: "channel resource type"
description: "A channel is a collection of chatMessages within a team. "
author: "nkramer"
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
|[Get message delta](../api/chatmessage-delta.md)  | [chatMessage](../resources/chatmessage.md) | Get incremental messages in a channel. |
|[List channel messages](../api/channel-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a channel |
|[Create channel message post](../api/channel-post-messages.md) | [chatMessage](../resources/chatmessage.md) | Send a message to a channel. |
|[Create reply to channel message post](../api/chatmessage-post-replies.md) | [chatMessage](../resources/chatmessage.md) | Reply to a message in a channel.|
|[Get files folder](../api/channel-get-filesfolder.md)| [driveItem](driveitem.md) | Retrieves the details of the SharePoint folder where the files for the channel are stored. |
|[List tabs](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[List channel members](../api/channel-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of members in a channel.|
|[Add channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md) | Add a member to a channel. Only supported for `channel` with membershipType of `private`.|
|[Get channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in a channel.|
|[Update channel member's role](../api/channel-update-members.md) | [conversationMember](conversationmember.md) | Update the properties of a member of the channel. Only supported for channel with membershipType of `private`.|
|[Remove channel member](../api/channel-delete-members.md) | None | Delete a member from a channel. Only supported for `channelType` of `private`.|
|[Complete migration](../api/channel-completemigration.md)|[channel](channel.md)| Removes the migration mode from the channel and makes the channel available to users to post and read messages.|
|[List tabs in channel](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a channel.|
|[Add tab to channel](../api/channel-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a channel.|
|[Get tab in channel](../api/channel-get-tabs.md) | [teamsTab](teamstab.md) | Get a specific tab pinned to a channel.|
|[Update tab in channel](../api/channel-patch-tabs.md) | [teamsTab](teamstab.md) | Updates the properties of a tab in a channel.|
|[Remove tab from channel](../api/channel-delete-tabs.md) | None | Remove (unpin) a tab from a channel.|


## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|id|String|The channel's unique identifier. Read-only.|
|isFavoriteByDefault|Boolean|Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with [Create team](../api/team-post.md). Default: `false`.|
|email|String| The email address for sending messages to the channel. Read-only.|
|webUrl|String|A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|
|membershipType|[channelMembershipType](../resources/enums.md#channelmembershiptype-values)|The type of the channel. Can be set during creation and cannot be changed. Possible values are: `standard` - Channel inherits the list of members of the parent team; `private` - Channel can have members that are a subset of all the members on the parent team.
|createdDateTime|dateTimeOffset|Read only. Timestamp at which the channel was created.|

### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name| Type   | Description
|:-----------------------|:-------|:-------------------------|
|@microsoft.graph.channelCreationMode|string|Indicates that the channel is in migration state and is currently being used for migration purposes. It accepts one value: `migration`.|

> **Note**: `channelCreationMode`  is an enum that takes the value `migration`.

For a POST request example, see [Request (create channel in migration state)](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams#request-create-a-team-in-migration-state).

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|
|members|[conversationMember](conversationmember.md) collection|A collection of membership records associated with the channel.|
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
  "membershipType": "channelMembershipType",
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
