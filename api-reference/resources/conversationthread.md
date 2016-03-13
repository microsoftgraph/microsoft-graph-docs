# conversationThread resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get conversationThread](../api/conversationthread_get.md) | [conversationThread](conversationthread.md) |Read properties and relationships of conversationThread object.|
|[Create post](../api/conversationthread_post_posts.md) |[post](post.md)| Create a new post by posting to the posts collection.|
|[List posts](../api/conversationthread_list_posts.md) |[post](post.md) collection| Get a post object collection.|
|[Update](../api/conversationthread_update.md) | [conversationThread](conversationthread.md)	|Update conversationThread object. |
|[Delete](../api/conversationthread_delete.md) | None |Delete conversationThread object. |
|[Reply](../api/conversationthread_reply.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ccRecipients|[recipient](recipient.md) collection||
|hasAttachments|boolean||
|id|string| Read-only.|
|isLocked|boolean||
|lastDeliveredDateTime|[dateTimeOffset](datetimeoffset.md)||
|preview|string||
|toRecipients|[recipient](recipient.md) collection||
|topic|string||
|uniqueSenders|string collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|posts|[post](post.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conversationthread"
}-->

```json
{
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "hasAttachments": true,
  "id": "string (identifier)",
  "isLocked": true,
  "lastDeliveredDateTime": "String (timestamp)",
  "preview": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "topic": "string",
  "uniqueSenders": ["string"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationThread resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->