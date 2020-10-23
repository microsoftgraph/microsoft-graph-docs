---
title: "workbookChart resource type"
description: "Represents a chart object in a workbook."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookChart resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a chart object in a workbook.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Chart](../api/chart-get.md) | [workbookChart](workbookchart.md) |Read properties and relationships of chart object.|
|[Create ChartSeries](../api/chart-post-series.md) |[workbookChartSeries](workbookchartseries.md)| Create a new ChartSeries by posting to the series collection.|
|[List series](../api/chart-list-series.md) |[workbookChartSeries](workbookchartseries.md) collection| Get a ChartSeries object collection.|
|[Update](../api/chart-update.md) | [workbookChart](workbookchart.md)	|Update Chart object. |
|[Image](../api/chart-image.md)|Image base64 encoded string|Renders the chart as a base64-encoded image by scaling the chart to fit the specified dimensions.|
|[Delete](../api/chart-delete.md)|None|Deletes the chart object.|
|[Setdata](../api/chart-setdata.md)|None|Resets the source data for the chart.|
|[Setposition](../api/chart-setposition.md)|None|Positions the chart relative to cells on the worksheet.|
|[List](../api/chart-list.md) | [workbookChart](workbookchart.md) collection |Get chart object collection. |
|[Itemat](../api/chartcollection-itemat.md)|[workbookChart](workbookchart.md)|Gets a chart based on its position in the collection.|
|[Add](../api/chartcollection-add.md)|[workbookChart](workbookchart.md)|Creates a new chart.|

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
|axes|[workbookChartAxes](workbookchartaxes.md)|Represents chart axes. Read-only.|
|dataLabels|[workbookChartDataLabels](workbookchartdatalabels.md)|Represents the datalabels on the chart. Read-only.|
|format|[workbookChartAreaFormat](workbookchartareaformat.md)|Encapsulates the format properties for the chart area. Read-only.|
|legend|[workbookChartLegend](workbookchartlegend.md)|Represents the legend for the chart. Read-only.|
|series|[workbookChartSeries](workbookchartseries.md) collection|Represents either a single series or collection of series in the chart. Read-only.|
|title|[workbookChartTitle](workbookcharttitle.md)|Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.|
|worksheet|[workbookWorksheet](workbookworksheet.md)|The worksheet containing the current chart. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChart"
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
<!--
{
  "type": "#page.annotation",
  "description": "workbookChart resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


