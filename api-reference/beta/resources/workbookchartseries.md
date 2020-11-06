---
title: "workbookChartSeries resource type"
description: "Represents a series in a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookChartSeries resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartSeries](../api/chartseries-get.md) | [workbookChartSeries](workbookchartseries.md) |Read properties and relationships of chartSeries object.|
|[Create ChartPoint](../api/chartseries-post-points.md) |[chartPoints](workbookchartpoint.md)| Create a new chartPoint by posting to the points collection.|
|[List points](../api/chartseries-list-points.md) |[workbookChartPoints](workbookchartpoint.md) collection| Get a chartPoints object collection.|
|[Update](../api/chartseries-update.md) | [workbookChartSeries](workbookchartseries.md)	|Update chartSeries object. |
|[List](../api/chartseries-list.md) | [workbookChartSeries](workbookchartseries.md) collection |Get chartSeries object collection. |
|[ItemAt](../api/chartseriescollection-itemat.md)|[workbookChartSeries](workbookchartseries.md)|Retrieves a series based on its position in the collection|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Represents the name of a series in a chart.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartSeriesFormat](workbookchartseriesformat.md)|Represents the formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[workbookChartPoint](workbookchartpoint.md) collection|Represents a collection of all points in the series. Read-only.|

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
<!--
{
  "type": "#page.annotation",
  "description": "ChartSeries resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


