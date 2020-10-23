---
title: "workbookTableColumn resource type"
description: "Represents a column in a table."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookTableColumn resource type

Namespace: microsoft.graph

Represents a column in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableColumn](../api/tablecolumn-get.md) | [WorkbookTableColumn](workbooktablecolumn.md) |Read properties and relationships of tableColumn object.|
|[Update](../api/tablecolumn-update.md) | [WorkbookTableColumn](workbooktablecolumn.md)	|Update TableColumn object. |
|[Databodyrange](../api/tablecolumn-databodyrange.md)|[Range](range.md)|Gets the range object associated with the data body of the column.|
|[Headerrowrange](../api/tablecolumn-headerrowrange.md)|[Range](range.md)|Gets the range object associated with the header row of the column.|
|[Range](../api/tablecolumn-range.md)|[Range](range.md)|Gets the range object associated with the entire column.|
|[Totalrowrange](../api/tablecolumn-totalrowrange.md)|[Range](range.md)|Gets the range object associated with the totals row of the column.|
|[Delete](../api/tablecolumn-delete.md)|None|Deletes the column from the table.|
|[List](../api/tablecolumn-list.md) | [WorkbookTableColumn](workbooktablecolumn.md) collection |Get tableColumn object collection. |
|[Itemat](../api/tablecolumncollection-itemat.md)|[WorkbookTableColumn](workbooktablecolumn.md)|Gets a column based on its position in the collection.|
|[Add](../api/tablecolumncollection-add.md)|[WorkbookTableColumn](workbooktablecolumn.md)|Adds a new column to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Returns a unique key that identifies the column within the table. This property should be interpreted as an opaque string value and should not be parsed to any other type. Read-only.|
|index|int|Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.|
|name|string|Returns the name of the table column.|
|values|Json|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|filter|[WorkbookFilter](filter.md)|Retrieve the filter applied to the column. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookTableColumn"
}-->

```json
{
  "id": 1024,
  "index": 1024,
  "name": "string",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableColumn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

