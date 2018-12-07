# channel resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A channel is a collection of [chatMessages](chatmessage.md) within a [team](../resources/team.md). 
A channel represents a topic, and therefore a logical isolation of discussion, within a team. 
Examples can be "Friday Team Lunch" channel, and "Architecture Discussion" channel.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List channels](../api/channel_list.md) | [channel](channel.md) collection | Get the list of channels in this team.|
|[Create channel](../api/channel_post.md) | [channel](channel.md) | Create a new channel by including the display name and description.|
|[Get channel](../api/channel_get.md) | [channel](channel.md) | Read properties and relationships of the channel.|
|[Update channel](../api/channel_patch.md) | [channel](channel.md) | Update properties of the channel.|
|[Delete channel](../api/channel_delete.md) | None | Delete a channel.|
|[List channel messages](../api/channel_list_messages.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a channel |
|[Create chat thread](../api/channel_post_chatthreads.md) | [chatThread](chatthread.md) collection| Create a chat thread in the specified channel.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|id|String|The channels's unique identifier. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable. Currently this API only supports reading but will eventually support writing messages too.|
|chatThreads|[chatThread](chatthread.md) collection|(This is being phased out in favor of the messages property) chatThreads supports creating new messages but not reading messages. ChatThreads is a navigation property, and is Nullable.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "chatthreads"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.channel"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
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
