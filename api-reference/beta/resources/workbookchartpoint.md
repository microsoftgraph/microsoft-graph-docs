---
title: "workbookChartPoint resource type"
description: "Represents a point of a series in a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookChartPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a point of a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookChartPoint](../api/chartpoint-get.md) | [workbookChartPoint](workbookchartpoint.md) |Read properties and relationships of chartPoint object.|
|[List](../api/chartpoint-list.md) | [workbookChartPoint](workbookchartpoint.md) collection |Get chartPoint object collection. |
|[ItemAt](../api/chartpointscollection-itemat.md)|[workbookChartPoint](workbookchartpoint.md)|Retrieve a point based on its position within the series.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|value|Json|Returns the value of a chart point. Read-only.|
|id|string|unique identifier|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartPointFormat](workbookchartpointformat.md)|Encapsulates the format properties chart point. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "format"
    ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartPoint"
}-->

```json
{
  "value": "string",
  "id": "string",
  "format": {"@odata.type": "microsoft.graph.workbookChartPointFormat"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartPoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


