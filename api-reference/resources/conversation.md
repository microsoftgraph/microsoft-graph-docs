# conversation resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get conversation](../api/conversation_get.md) | [conversation](conversation.md) |Read properties and relationships of conversation object.|
|[Create thread](../api/conversation_post_threads.md) |[conversationThread](conversationthread.md)| Create a new thread by posting to the threads collection.|
|[List threads](../api/conversation_list_threads.md) |[conversationThread](conversationthread.md) collection| Get a thread object collection.|
|[Update](../api/conversation_update.md) | [conversation](conversation.md)	|Update conversation object. |
|[Delete](../api/conversation_delete.md) | None |Delete conversation object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|hasAttachments|boolean||
|id|string| Read-only.|
|lastDeliveredDateTime|[dateTimeOffset](datetimeoffset.md)||
|preview|string||
|topic|string||
|uniqueSenders|string collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|threads|[conversationThread](conversationthread.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conversation"
}-->

```json
{
  "hasAttachments": true,
  "id": "string (identifier)",
  "lastDeliveredDateTime": "String (timestamp)",
  "preview": "string",
  "topic": "string",
  "uniqueSenders": ["string"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->