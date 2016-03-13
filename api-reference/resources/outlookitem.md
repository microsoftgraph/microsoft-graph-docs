# outlookItem resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get outlookItem](../api/outlookitem_get.md) | [outlookItem](outlookitem.md) |Read properties and relationships of outlookItem object.|
|[Update](../api/outlookitem_update.md) | [outlookItem](outlookitem.md)	|Update outlookItem object. |
|[Delete](../api/outlookitem_delete.md) | None |Delete outlookItem object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categories|string collection||
|changeKey|string||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|id|string| Read-only.|
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.outlookitem"
}-->

```json
{
  "categories": ["string"],
  "changeKey": "string",
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outlookItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->