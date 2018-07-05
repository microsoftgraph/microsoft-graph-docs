# chatReaction resource type

A `chatReaction` is a reaction to a [chatMessage](chatMessage.md) entity. 

An entity of type `chatReaction` is returned as part of the GET Channel messages API, as a part of [chatMessage](chatMessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|string| THe type of reaction; planned values include <br><ul><li>Like - Like a message, content is blank in this case</li><li>Emoji - Emoji reaction, content is set to unicode value of the emoji</li><li>Label - content is set to the string in the label</li></ul>|
|user|participanInfo|The user who reacted to the message|
|createdDateTime|dateTimeOffset|UTC timestamp of the root message in ISO-8601 format|
|content|string|Unicode emoji or the string value in the case of a label|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "posts"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.message"
}-->

```json
{
  "type": "string ",
  "user": {"@odata.type": "microsoft.graph.IdentitySet"},
  "createdDateTime": "string (timestamp)",
  "content": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->