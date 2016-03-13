# attachment resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get attachment](../api/attachment_get.md) | [attachment](attachment.md) |Read properties and relationships of attachment object.|
|[Update](../api/attachment_update.md) | [attachment](attachment.md)	|Update attachment object. |
|[Delete](../api/attachment_delete.md) | None |Delete attachment object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|string||
|id|string| Read-only.|
|isInline|boolean||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|name|string||
|size|int32||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attachment"
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->