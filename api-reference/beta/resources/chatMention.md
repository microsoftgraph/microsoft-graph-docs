# chatMention resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a mention in a [chatMessage](chatMessage.md) entity. The mention can be to a user, team, bot or channel. 

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|string| Entity type that is associated with this message. It supports the following values<br><ul><li>user - Represents a user mention. Populate the id field with the AAD id of the user</li><li>bot - Represents a bot mention. Populate the id field with the bot id</li><li>team - Represents a team mention. Populate the id field with the group id for the team</li><li>channel - Represents a channel mention. Populate the id field with the id of the channel| 
|id|string|Id of the entity being mentioned|
|mentionText|string|String used to represent the mention Ex: User display name, Team name etc|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatMention"
}-->

```json
{
  "type": "string",
  "id": "string (identifier)",
  "mentionText": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chat mention resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
