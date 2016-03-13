# post resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get post](../api/post_get.md) | [post](post.md) |Read properties and relationships of post object.|
|[Create attachment](../api/post_post_attachments.md) |[attachment](attachment.md)| Create a new attachment by posting to the attachments collection.|
|[List attachments](../api/post_list_attachments.md) |[attachment](attachment.md) collection| Get a attachment object collection.|
|[Create extension](../api/post_post_extensions.md) |[extension](extension.md)| Create a new extension by posting to the extensions collection.|
|[List extensions](../api/post_list_extensions.md) |[extension](extension.md) collection| Get a extension object collection.|
|[Create multiValueLegacyExtendedProperty](../api/post_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/post_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/post_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/post_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/post_update.md) | [post](post.md)	|Update post object. |
|[Delete](../api/post_delete.md) | None |Delete post object. |
|[Forward](../api/post_forward.md)|None||
|[Reply](../api/post_reply.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|body|[itemBody](itembody.md)||
|categories|string collection||
|changeKey|string||
|conversationId|string||
|conversationThreadId|string||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|from|[recipient](recipient.md)||
|hasAttachments|boolean||
|id|string| Read-only.|
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|newParticipants|[recipient](recipient.md) collection||
|receivedDateTime|[dateTimeOffset](datetimeoffset.md)||
|sender|[recipient](recipient.md)||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection| Read-only. Nullable.|
|extensions|[extension](extension.md) collection| Read-only. Nullable.|
|inReplyTo|[post](post.md)| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.post"
}-->

```json
{
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "categories": ["string"],
  "changeKey": "string",
  "conversationId": "string",
  "conversationThreadId": "string",
  "createdDateTime": "String (timestamp)",
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "newParticipants": [{"@odata.type": "microsoft.graph.recipient"}],
  "receivedDateTime": "String (timestamp)",
  "sender": {"@odata.type": "microsoft.graph.recipient"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "post resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->