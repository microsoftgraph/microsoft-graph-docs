# chart resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chart](../api/chart_get.md) | [chart](chart.md) |Read properties and relationships of chart object.|
|[Create chartSeries](../api/chart_post_series.md) |[chartSeries](chartseries.md)| Create a new chartSeries by posting to the series collection.|
|[List series](../api/chart_list_series.md) |[chartSeries](chartseries.md) collection| Get a chartSeries object collection.|
|[Update](../api/chart_update.md) | [chart](chart.md)	|Update chart object. |
|[Delete](../api/chart_delete.md) | None |Delete chart object. |
|[Add](../api/chart_add.md)|[chart](chart.md)||
|[Count](../api/chart_count.md)|int32||
|[Image](../api/chart_image.md)|string||
|[Item](../api/chart_item.md)|[chart](chart.md)||
|[Itemat](../api/chart_itemat.md)|[chart](chart.md)||
|[Setdata](../api/chart_setdata.md)|None||
|[Setposition](../api/chart_setposition.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|height|double||
|id|string| Read-only.|
|left|double||
|name|string||
|top|double||
|width|double||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|axes|[chartAxes](chartaxes.md)| Read-only. Nullable.|
|dataLabels|[chartDataLabels](chartdatalabels.md)| Read-only. Nullable.|
|format|[chartAreaFormat](chartareaformat.md)| Read-only. Nullable.|
|legend|[chartLegend](chartlegend.md)| Read-only. Nullable.|
|series|[chartSeries](chartseries.md) collection| Read-only. Nullable.|
|title|[chartTitle](charttitle.md)| Read-only. Nullable.|
|worksheet|[worksheet](worksheet.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chart"
}-->

```json
{
  "height": 1024,
  "id": "string (identifier)",
  "left": 1024,
  "name": "string",
  "top": 1024,
  "width": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chart resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->