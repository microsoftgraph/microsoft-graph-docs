# chartAxis resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartAxis](../api/chartaxis_get.md) | [chartAxis](chartaxis.md) |Read properties and relationships of chartAxis object.|
|[Update](../api/chartaxis_update.md) | [chartAxis](chartaxis.md)	|Update chartAxis object. |
|[Delete](../api/chartaxis_delete.md) | None |Delete chartAxis object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|majorUnit|json||
|maximum|json||
|minimum|json||
|minorUnit|json||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartAxisFormat](chartaxisformat.md)| Read-only. Nullable.|
|majorGridlines|[chartGridlines](chartgridlines.md)| Read-only. Nullable.|
|minorGridlines|[chartGridlines](chartgridlines.md)| Read-only. Nullable.|
|title|[chartAxisTitle](chartaxistitle.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartaxis"
}-->

```json
{
  "majorUnit": "json",
  "maximum": "json",
  "minimum": "json",
  "minorUnit": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartAxis resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->