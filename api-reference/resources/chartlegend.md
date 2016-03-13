# chartLegend resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartLegend](../api/chartlegend_get.md) | [chartLegend](chartlegend.md) |Read properties and relationships of chartLegend object.|
|[Update](../api/chartlegend_update.md) | [chartLegend](chartlegend.md)	|Update chartLegend object. |
|[Delete](../api/chartlegend_delete.md) | None |Delete chartLegend object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|boolean||
|position|string||
|visible|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartLegendFormat](chartlegendformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartlegend"
}-->

```json
{
  "overlay": true,
  "position": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartLegend resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->