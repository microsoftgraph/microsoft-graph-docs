---
title: "workbookTableRow resource type"
description: "Represents a row in a table."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookTableRow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableRow](../api/tablerow-get.md) | [workbookTableRow](workbooktablerow.md) |Read properties and relationships of tableRow object.|
|[Update](../api/tablerow-update.md) | [workbookTableRow](workbooktablerow.md)	|Update TableRow object. |
|[Range](../api/tablerow-range.md)|[workbookRange](workbookrange.md)|Returns the range object associated with the entire row.|
|[Delete](../api/tablerow-delete.md)|None|Deletes the row from the table.|
|[List](../api/tablerow-list.md) | [workbookTableRow](workbooktablerow.md) collection |Get tableRow object collection. |
|[Itemat](../api/tablerowcollection-itemat.md)|[workbookTableRow](workbooktablerow.md)|Gets a row based on its position in the collection.|
|[Add](../api/tablerowcollection-add.md)|[workbookTableRow](workbooktablerow.md)|Adds a new row to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.|
|values|Json|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookTableRow"
}-->

```json
{
  "index": 1024,
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "TableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


