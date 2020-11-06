---
title: "NamedItem resource type"
description: "Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names."
localization_priority: Normal
author: "ruoyingl"
ms.prod: ""
doc_type: resourcePageType
---

# NamedItem resource type

Namespace: microsoft.graph

Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add](../api/nameditem-add.md)|[WorkbookNamedItem](nameditem.md)|Adds a new name to the collection of the given scope.|
|[AddFormulaLocal](../api/nameditem-addformulalocal.md)|[WorkbookNamedItem](nameditem.md)|Adds a new name to the collection of the given scope using the user's locale for the formula.|
|[Get NamedItem](../api/nameditem-get.md) | [WorkbookNamedItem](nameditem.md) |Read properties and relationships of namedItem object.|
|[Update](../api/nameditem-update.md) | [WorkbookNamedItem](nameditem.md)	|Update NamedItem object. |
|[Range](../api/nameditem-range.md)|[Range](range.md)|Returns the range object that is associated with the name. Throws an exception if the named item's type is not a range.|
|[List](../api/nameditem-list.md) | [WorkbookNamedItem](nameditem.md) collection |Get namedItem object collection. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The name of the object. Read-only.|
|comment|string|Represents the comment associated with this name.|
|scope|string|Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.|
|type|string|Indicates what type of reference is associated with the name. The possible values are: `String`, `Integer`, `Double`, `Boolean`, `Range`. Read-only.|
|value|Json|Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.|
|visible|boolean|Specifies whether the object is visible or not.|

## Relationships
| Relationship	   | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[WorkbookWorksheet](worksheet.md)|Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookNamedItem"
}-->

```json
{
  "name": "string",
  "comment": "string",
  "scope": "string",
  "type": "string",
  "value": {"@odata.type": "microsoft.graph.Json"},
  "visible": true

}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "NamedItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

