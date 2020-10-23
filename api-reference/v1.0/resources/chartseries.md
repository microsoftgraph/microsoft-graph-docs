---
title: "ChartSeries resource type"
description: "Represents a series in a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# ChartSeries resource type

Namespace: microsoft.graph

Represents a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartSeries](../api/chartseries-get.md) | [WorkbookChartSeries](chartseries.md) |Read properties and relationships of chartSeries object.|
|[Create ChartPoints](../api/chartseries-post-points.md) |[ChartPoints](chartpoint.md)| Create a new ChartPoints by posting to the points collection.|
|[List points](../api/chartseries-list-points.md) |[ChartPoints](chartpoint.md) collection| Get a ChartPoints object collection.|
|[Update](../api/chartseries-update.md) | [WorkbookChartSeries](chartseries.md)	|Update ChartSeries object. |
|[List](../api/chartseries-list.md) | [WorkbookChartSeries](chartseries.md) collection |Get chartSeries object collection. |
|[ItemAt](../api/chartseriescollection-itemat.md)|[WorkbookChartSeries](chartseries.md)|Retrieves a series based on its position in the collection|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Represents the name of a series in a chart.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[WorkbookChartSeriesFormat](chartseriesformat.md)|Represents the formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[WorkbookChartPoint](chartpoint.md) collection|Represents a collection of all points in the series. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartSeries"
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

