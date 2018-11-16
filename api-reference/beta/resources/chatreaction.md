# chatMessageReaction resource type

Represents a reaction to a [chatMessage](chatmessage.md) entity. 

An entity of type `chatMessageReaction` is returned as part of the [Get channel messages](../api/channel_get_message.md) API, as a part of [chatMessage](chatmessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|reactionType|string| The type of reaction. Current supported values: Like|
|user|[identitySet](identitySet.md)|The user who reacted to the message.|
|createdDateTime|dateTimeOffset|UTC timestamp of the root message in ISO-8601 format.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "content"
  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessageReaction"
}-->

```json
{
  "reactionType": "string ",
  "user": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "string (timestamp)"
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
