# chatThread resource type
A chatThread is a collection of [chatMessages](chatMessage.md) in Microsoft Teams.

> Currently, chatThreads can be created in channels.  Future API releases will support reading existing chatThreads, as well as reading/writing direct chats between users, outside the scope of a team.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create thread](../api/channel_post_chatthreads.md) | [chatThread](chatthread.md) |Start a new thread in the specified channel, providing the first message.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|rootMessage|[chatMessage](chatMessage.md)| Nullable.|
|chatMessages|[chatMessage](chatMessage.md) collection| Nullable.|

> Currently these relationships exist implicitly, but cannot read or written.  Future beta API releases will support this.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "posts"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatThread"
}-->

```json
{
  "id": "string (identifier)",
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatThread resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
