# chartDataLabels resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartDataLabels](../api/chartdatalabels_get.md) | [chartDataLabels](chartdatalabels.md) |Read properties and relationships of chartDataLabels object.|
|[Update](../api/chartdatalabels_update.md) | [chartDataLabels](chartdatalabels.md)	|Update chartDataLabels object. |
|[Delete](../api/chartdatalabels_delete.md) | None |Delete chartDataLabels object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|position|string||
|separator|string||
|showBubbleSize|boolean||
|showCategoryName|boolean||
|showLegendKey|boolean||
|showPercentage|boolean||
|showSeriesName|boolean||
|showValue|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartDataLabelFormat](chartdatalabelformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartdatalabels"
}-->

```json
{
  "position": "string",
  "separator": "string",
  "showBubbleSize": true,
  "showCategoryName": true,
  "showLegendKey": true,
  "showPercentage": true,
  "showSeriesName": true,
  "showValue": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartDataLabels resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->