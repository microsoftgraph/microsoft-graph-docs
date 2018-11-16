# chatMessageMention resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a mention in a [chatMessage](chatmessage.md) entity. The mention can be to a user, team, bot or channel. 

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|int|Id of the entity being mentioned|
|mentionText|string|String used to represent the mention Ex: User display name, Team name etc|
|mentioned| [identitySet](identitySet.md) | The entity (user/application/team/channel) that is being mentioned|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessageMention"
}-->

```json
{
  "id": "int (identifier)",
  "mentionText": "string",
  "mentioned" : {"@odata.type": "microsoft.graph.IdentitySet"}
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
