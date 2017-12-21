# ChartSeries resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartSeries](../api/chartseries_get.md) | [ChartSeries](chartseries.md) |Read properties and relationships of chartSeries object.|
|[Create ChartPoints](../api/chartseries_post_points.md) |[ChartPoints](chartpoint.md)| Create a new ChartPoints by posting to the points collection.|
|[List points](../api/chartseries_list_points.md) |[ChartPoints](chartpoint.md) collection| Get a ChartPoints object collection.|
|[Update](../api/chartseries_update.md) | [ChartSeries](chartseries.md)	|Update ChartSeries object. |
|[List](../api/chartseries_list.md) | [ChartSeries](chartseries.md) collection |Get chartSeries object collection. |
|[Itemat](../api/chartseriescollection_itemat.md)|[ChartSeries](chartseries.md)|Retrieves a series based on its position in the collection|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Represents the name of a series in a chart.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartSeriesFormat](chartseriesformat.md)|Represents the formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[ChartPoints](chartpoint.md) collection|Represents a collection of all points in the series. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartSeries"
}-->

```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartSeries resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->