---
title: "ChartPoint resource type"
description: "Represents a point of a series in a chart."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# ChartPoint resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a point of a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartPoint](../api/chartpoint-get.md) | [ChartPoint](chartpoint.md) |Read properties and relationships of chartPoint object.|
|[List](../api/chartpoint-list.md) | [ChartPoint](chartpoint.md) collection |Get chartPoint object collection. |
|[Itemat](../api/chartpointscollection-itemat.md)|[ChartPoint](chartpoint.md)|Retrieve a point based on its position within the series.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|value|object|Returns the value of a chart point. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartPointFormat](chartpointformat.md)|Encapsulates the format properties chart point. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartPoint"
}-->

```json
{
  "value": "string"
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
  "suppressions": [
    "Error: /api-reference/beta/resources/chartpoint.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
