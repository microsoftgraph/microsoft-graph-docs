---
title: "chatMessageReaction resource type"
description: "Represents a reaction to a chatMessage entity. "
localization_priority: Normal
---

# chatMessageReaction resource type

Represents a reaction to a [chatMessage](chatmessage.md) entity. 

An entity of type `chatMessageReaction` is returned as part of the [Get channel messages](../api/channel-get-message.md) API, as a part of [chatMessage](chatmessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|reactionType|string| The type of reaction. Planned values include: <br><ul><li>Like - Like a message, content is blank in this case.</li><li>Emoji - Emoji reaction. Content is set to unicode value of the emoji.</li><li>Label - Content is set to the string in the label.</li></ul>|
|createdDateTime|dateTimeOffset|UTC timestamp of the root message in ISO-8601 format.|
|user|identitySet|The user who reacted to the message.|

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
  "createdDateTime": "string (timestamp)",
  "user": {"@odata.type": "microsoft.graph.identitySet"}
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
