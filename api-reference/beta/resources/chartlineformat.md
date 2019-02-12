---
title: "ChartLineFormat resource type"
description: "Enapsulates the formatting options for line elements."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# ChartLineFormat resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enapsulates the formatting options for line elements.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartLineFormat](../api/chartlineformat-get.md) | [ChartLineFormat](chartlineformat.md) |Read properties and relationships of chartLineFormat object.|
|[Update](../api/chartlineformat-update.md) | [ChartLineFormat](chartlineformat.md)	|Update ChartLineFormat object. |
|[Clear](../api/chartlineformat-clear.md)|None|Clear the line format of a chart element.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of lines in the chart.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartLineFormat"
}-->

```json
{
  "color": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartLineFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chartlineformat.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
