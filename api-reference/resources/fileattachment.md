# fileAttachment resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get fileAttachment](../api/fileattachment_get.md) | [fileAttachment](fileattachment.md) |Read properties and relationships of fileAttachment object.|
|[Update](../api/fileattachment_update.md) | [fileAttachment](fileattachment.md)	|Update fileAttachment object. |
|[Delete](../api/fileattachment_delete.md) | None |Delete fileAttachment object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentBytes|binary||
|contentId|string||
|contentLocation|string||
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
  "@odata.type": "microsoft.graph.fileattachment"
}-->

```json
{
  "contentBytes": "binary",
  "contentId": "string",
  "contentLocation": "string",
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
  "description": "fileAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->