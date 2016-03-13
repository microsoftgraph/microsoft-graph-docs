# itemAttachment resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get itemAttachment](../api/itemattachment_get.md) | [itemAttachment](itemattachment.md) |Read properties and relationships of itemAttachment object.|
|[Update](../api/itemattachment_update.md) | [itemAttachment](itemattachment.md)	|Update itemAttachment object. |
|[Delete](../api/itemattachment_delete.md) | None |Delete itemAttachment object. |

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
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|item|[outlookItem](outlookitem.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemattachment"
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
  "description": "itemAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->