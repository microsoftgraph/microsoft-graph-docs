---
title: "workbookChartAxisTitle resource type"
description: "Represents the title of a chart axis."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookChartAxisTitle resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the title of a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartAxisTitle](../api/chartaxistitle-get.md) | [workbookChartAxisTitle](workbookchartaxistitle.md) |Read properties and relationships of chartAxisTitle object.|
|[Update](../api/chartaxistitle-update.md) | [workbookChartAxisTitle](workbookchartaxistitle.md)	|Update ChartAxisTitle object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|text|string|Represents the axis title.|
|visible|boolean|A boolean that specifies the visibility of an axis title.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartAxisTitleFormat](workbookchartaxistitleformat.md)|Represents the formatting of chart axis title. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [
    "format"
    ],
  "@odata.type": "microsoft.graph.workbookChartAxisTitle"
}-->

```json
{
  "text": "string",
  "visible": true,
  "format": {"@odata.type":"microsoft.graph.workbookChartAxisTitleFormat"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartAxisTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


