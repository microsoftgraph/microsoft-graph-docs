# rangeBorder resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get rangeBorder](../api/rangeborder_get.md) | [rangeBorder](rangeborder.md) |Read properties and relationships of rangeBorder object.|
|[Update](../api/rangeborder_update.md) | [rangeBorder](rangeborder.md)	|Update rangeBorder object. |
|[Delete](../api/rangeborder_delete.md) | None |Delete rangeBorder object. |
|[Count](../api/rangeborder_count.md)|int32||
|[Itemat](../api/rangeborder_itemat.md)|[rangeBorder](rangeborder.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string||
|id|string| Read-only.|
|sideIndex|string||
|style|string||
|weight|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangeborder"
}-->

```json
{
  "color": "string",
  "id": "string (identifier)",
  "sideIndex": "string",
  "style": "string",
  "weight": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rangeBorder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->