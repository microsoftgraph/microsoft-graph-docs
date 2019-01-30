---
title: "workbookChartGridlines resource type"
description: "Represents major or minor gridlines on a chart axis."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# ChartGridlines resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents major or minor gridlines on a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartGridlines](../api/chartgridlines-get.md) | [workbookChartGridlines](workbookchartgridlines.md) |Read properties and relationships of chartGridlines object.|
|[Update](../api/chartgridlines-update.md) | [workbookChartGridlines](workbookchartgridlines.md)	|Update ChartGridlines object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|visible|boolean|Boolean value representing if the axis gridlines are visible or not.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[WorkbookChartGridlinesFormat](workbookchartgridlinesformat.md)|Represents the formatting of chart gridlines. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartGridlines"
}-->

```json
{
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartGridlines resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chartgridlines.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
