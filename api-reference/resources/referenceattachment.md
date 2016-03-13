# referenceAttachment resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get referenceAttachment](../api/referenceattachment_get.md) | [referenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Update](../api/referenceattachment_update.md) | [referenceAttachment](referenceattachment.md)	|Update referenceAttachment object. |
|[Delete](../api/referenceattachment_delete.md) | None |Delete referenceAttachment object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|string||
|id|string| Read-only.|
|isFolder|boolean||
|isInline|boolean||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|name|string||
|permission|string| Possible values are: `other`, `view`, `edit`.|
|previewUrl|string||
|providerType|string| Possible values are: `other`, `oneDriveBusiness`, `oneDriveConsumer`, `dropbox`.|
|size|int32||
|sourceUrl|string||
|thumbnailUrl|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.referenceattachment"
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isFolder": true,
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "permission": "string",
  "previewUrl": "string",
  "providerType": "string",
  "size": 1024,
  "sourceUrl": "string",
  "thumbnailUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "referenceAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->