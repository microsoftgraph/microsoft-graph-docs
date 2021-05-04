---
title: "workbookChartTitle resource type"
description: "Represents a chart title object of a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookChartTitle resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a chart title object of a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookChartTitle](../api/charttitle-get.md) | [workbookChartTitle](workbookcharttitle.md) |Read properties and relationships of chartTitle object.|
|[Update](../api/charttitle-update.md) | [workbookChartTitle](workbookcharttitle.md)	|Update ChartTitle object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|boolean|Boolean value representing if the chart title will overlay the chart or not.|
|text|string|Represents the title text of a chart.|
|visible|boolean|A boolean value the represents the visibility of a chart title object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartTitleFormat](workbookcharttitleformat.md)|Represents the formatting of a chart title, which includes fill and font formatting. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartTitle"
}-->

```json
{
  "overlay": true,
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


