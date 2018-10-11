# chatReaction resource type

Represents a reaction to a [chatMessage](chatMessage.md) entity. 

An entity of type `chatReaction` is returned as part of the [Get channel messages](../api/channel_get_message.md) API, as a part of [chatMessage](chatMessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|string| The type of reaction. Planned values include: <br><ul><li>Like - Like a message, content is blank in this case.</li><li>Emoji - Emoji reaction. Content is set to unicode value of the emoji.</li><li>Label - Content is set to the string in the label.</li></ul>|
|user|participanInfo|The user who reacted to the message.|
|createdDateTime|dateTimeOffset|UTC timestamp of the root message in ISO-8601 format.|
|content|string|Unicode emoji or the string value in the case of a label.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "content"
  ],
  "@odata.type": "microsoft.graph.chatReaction"
}-->

```json
{
  "type": "string ",
  "reactedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "string (timestamp)",
  "content": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chat message reaction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
