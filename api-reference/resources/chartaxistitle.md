# chartAxisTitle resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartAxisTitle](../api/chartaxistitle_get.md) | [chartAxisTitle](chartaxistitle.md) |Read properties and relationships of chartAxisTitle object.|
|[Update](../api/chartaxistitle_update.md) | [chartAxisTitle](chartaxistitle.md)	|Update chartAxisTitle object. |
|[Delete](../api/chartaxistitle_delete.md) | None |Delete chartAxisTitle object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|text|string||
|visible|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartAxisTitleFormat](chartaxistitleformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartaxistitle"
}-->

```json
{
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartAxisTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->