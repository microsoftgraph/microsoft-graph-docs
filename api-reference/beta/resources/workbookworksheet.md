---
title: "workbookWorksheet resource type"
description: "An Excel worksheet is a grid of cells. It can contain data, tables, charts, etc."
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookWorksheet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An Excel worksheet is a grid of cells. It can contain data, tables, charts, etc.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Worksheet](../api/worksheet-get.md) | [workbookWorksheet](workbookworksheet.md) |Read properties and relationships of worksheet object.|
|[Create Chart](../api/worksheet-post-charts.md) |[workbookChart](workbookchart.md)| Create a new Chart by posting to the charts collection.|
|[List names](../api/worksheet-list-names.md) |[workbookNamedItem](workbooknameditem.md) collection| Get named item collection associated with the worksheet.|
|[List charts](../api/worksheet-list-charts.md) |[workbookChart](workbookchart.md) collection| Get a Chart object collection.|
|[Create Table](../api/worksheet-post-tables.md) |[workbookTable](workbooktable.md)| Create a new Table by posting to the tables collection.|
|[List tables](../api/worksheet-list-tables.md) |[workbookTable](workbooktable.md) collection| Get a Table object collection.|
|[Update](../api/worksheet-update.md) | [workbookWorksheet](workbookworksheet.md)	|Update Worksheet object. |
|[Cell](../api/worksheet-cell.md)|[workbookRange](workbookrange.md)|Gets the range object containing the single cell based on row and column numbers. The cell can be outside the bounds of its parent range, so long as it's stays within the worksheet grid.|
|[Range](../api/worksheet-range.md)|[workbookRange](workbookrange.md)|Gets the range object specified by the address or name.|
|[Usedrange](../api/worksheet-usedrange.md)|[workbookRange](workbookrange.md)|The used range is the smallest range that encompasses any cells that have a value or formatting assigned to them. If the worksheet is blank, this function will return the top left cell.|
|[Delete](../api/worksheet-delete.md)|None|Deletes the worksheet from the workbook.|
|[List](../api/worksheet-list.md) | [workbookWorksheet](workbookworksheet.md) collection |Get worksheet object collection. |
|[Add](../api/worksheetcollection-add.md)|[workbookWorksheet](workbookworksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. |
|[List pivotTables](../api/workbookworksheet-list-pivottables.md) |[workbookPivotTable](workbookpivottable.md) collection| Get a workbookPivotTable object collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Returns a value that uniquely identifies the worksheet in a given workbook. The value of the identifier remains the same even when the worksheet is renamed or moved. Read-only.|
|name|string|The display name of the worksheet.|
|position|int|The zero-based position of the worksheet within the workbook.|
|visibility|string|The Visibility of the worksheet. The possible values are: `Visible`, `Hidden`, `VeryHidden`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|charts|[workbookChart](workbookchart.md) collection|Returns collection of charts that are part of the worksheet. Read-only.|
|names|[workbookNamedItem](workbooknameditem.md) collection|Returns collection of names that are associated with the worksheet. Read-only.|
|pivotTables|[workbookPivotTable](workbookpivottable.md) collection| Collection of PivotTables that are part of the worksheet. |
|protection|[workbookWorksheetProtection](workbookworksheetprotection.md)|Returns sheet protection object for a worksheet. Read-only.|
|tables|[workbookTable](workbooktable.md) collection|Collection of tables that are part of the worksheet. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookWorksheet"
}-->

```json
{
  "id": "string",
  "name": "string",
  "position": 1024,
  "visibility": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Worksheet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


