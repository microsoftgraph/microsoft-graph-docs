---
title: "workbookChartLegend resource type"
description: "Represents the legend in a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# ChartLegend resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the legend in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartLegend](../api/chartlegend-get.md) | [workbookChartLegend](workbookchartlegend.md) |Read properties and relationships of chartLegend object.|
|[Update](../api/chartlegend-update.md) | [workbookChartLegend](workbookchartlegend.md)	|Update ChartLegend object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|boolean|Boolean value for whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. Possible values are: `Top`, `Bottom`, `Left`, `Right`, `Corner`, `Custom`.|
|visible|boolean|A boolean value the represents the visibility of a ChartLegend object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[WorkbookChartLegendFormat](workbookchartlegendformat.md)|Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartLegend"
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
<!--
{
  "type": "#page.annotation",
  "description": "ChartLegend resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chartlegend.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
