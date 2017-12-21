# Chart resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a chart object in a workbook.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Chart](../api/chart_get.md) | [Chart](chart.md) |Read properties and relationships of chart object.|
|[Create ChartSeries](../api/chart_post_series.md) |[ChartSeries](chartseries.md)| Create a new ChartSeries by posting to the series collection.|
|[List series](../api/chart_list_series.md) |[ChartSeries](chartseries.md) collection| Get a ChartSeries object collection.|
|[Update](../api/chart_update.md) | [Chart](chart.md)	|Update Chart object. |
|[Image](../api/chart_image.md)|Image base64 encoded string|Renders the chart as a base64-encoded image by scaling the chart to fit the specified dimensions.|
|[Delete](../api/chart_delete.md)|None|Deletes the chart object.|
|[Setdata](../api/chart_setdata.md)|None|Resets the source data for the chart.|
|[Setposition](../api/chart_setposition.md)|None|Positions the chart relative to cells on the worksheet.|
|[List](../api/chart_list.md) | [Chart](chart.md) collection |Get chart object collection. |
|[Itemat](../api/chartcollection_itemat.md)|[Chart](chart.md)|Gets a chart based on its position in the collection.|
|[Add](../api/chartcollection_add.md)|[Chart](chart.md)|Creates a new chart.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|height|double|Represents the height, in points, of the chart object.|
|id|string|Gets a chart based on its position in the collection. Read-only.|
|left|double|The distance, in points, from the left side of the chart to the worksheet origin.|
|name|string|Represents the name of a chart object.|
|top|double|Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).|
|width|double|Represents the width, in points, of the chart object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|axes|[ChartAxes](chartaxes.md)|Represents chart axes. Read-only.|
|dataLabels|[ChartDataLabels](chartdatalabels.md)|Represents the datalabels on the chart. Read-only.|
|format|[ChartAreaFormat](chartareaformat.md)|Encapsulates the format properties for the chart area. Read-only.|
|legend|[ChartLegend](chartlegend.md)|Represents the legend for the chart. Read-only.|
|series|[ChartSeries](chartseries.md) collection|Represents either a single series or collection of series in the chart. Read-only.|
|title|[ChartTitle](charttitle.md)|Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.|
|worksheet|[Worksheet](worksheet.md)|The worksheet containing the current chart. Read-only.|

## JSON representation

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
  "id": "string",
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
  "description": "Chart resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->