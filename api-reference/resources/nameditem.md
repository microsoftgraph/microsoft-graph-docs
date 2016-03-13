# namedItem resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get namedItem](../api/nameditem_get.md) | [namedItem](nameditem.md) |Read properties and relationships of namedItem object.|
|[Create range](../api/nameditem_post_rangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rangeFunctionReturnSet collection.|
|[List rangeFunctionReturnSet](../api/nameditem_list_rangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/nameditem_update.md) | [namedItem](nameditem.md)	|Update namedItem object. |
|[Delete](../api/nameditem_delete.md) | None |Delete namedItem object. |
|[Range](../api/nameditem_range.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|_Id|string| Read-only.|
|name|string||
|type|string||
|value|json||
|visible|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|rangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.nameditem"
}-->

```json
{
  "_Id": "string (identifier)",
  "name": "string",
  "type": "string",
  "value": "json",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "namedItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->