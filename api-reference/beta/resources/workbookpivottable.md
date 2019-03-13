---
title: "pivotTable resource type"
description: "Represents an Excel PivotTable."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# pivotTable resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Excel PivotTable.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookPivotTable](../api/workbookpivottable-get.md) | [workbookPivotTable](workbookpivottable.md) |Read properties and relationships of workbookPivotTable object.|
|[Refresh](../api/workbookpivottable-refresh.md)|None|Refreshes the PivotTable.	|
|[Refreshall](../api/workbookpivottable-refreshall.md)|None|Refresh all tables within given worksheet. Note that this action is available only on the pivot table collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Id of the PivotTable.	Read-only.|
|name|String|Name of the PivotTable.	|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[worksheet](worksheet.md)| The worksheet containing the current PivotTable. Read-only.	|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookPivotTable"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String"
}

```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/workbookpivottable.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
