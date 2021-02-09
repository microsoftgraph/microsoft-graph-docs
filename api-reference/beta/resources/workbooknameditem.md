---
title: "workbookNamedItem resource type"
description: "Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "excel"
author: "ruoyingl"
---

# workbookNamedItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add](../api/nameditem-add.md)|[workbookNamedItem](workbooknameditem.md)|Adds a new name to the collection of the given scope.|
|[AddFormulaLocal](../api/nameditem-addformulalocal.md)|[workbookNamedItem](workbooknameditem.md)|Adds a new name to the collection of the given scope using the user's locale for the formula.|
|[Get NamedItem](../api/nameditem-get.md) | [workbookNamedItem](workbooknameditem.md) |Read properties and relationships of namedItem object.|
|[Update](../api/nameditem-update.md) | [workbookNamedItem](workbooknameditem.md)	|Update NamedItem object. |
|[Range](../api/nameditem-range.md)|[workbookRange](workbookrange.md)|Returns the range object that is associated with the name. Throws an exception if the named item's type is not a range.|
|[List](../api/nameditem-list.md) | [workbookNamedItem](workbooknameditem.md) collection |Get namedItem object collection. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The name of the object. Read-only.|
|comment|string|Represents the comment associated with this name.|
|scope|string|Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.|
|type|string|Indicates what type of reference is associated with the name. Possible values are: `String`, `Integer`, `Double`, `Boolean`, `Range`. Read-only.|
|value|string|Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.|
|visible|boolean|Specifies whether the object is visible or not.|

## Relationships
| Relationship	   | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[workbookWorksheet](workbookworksheet.md)|Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookNamedItem"
}-->

```json
{
  "name": "string",
  "comment": "string",
  "scope": "string",
  "type": "string",
  "value": "string",
  "visible": true

}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "NamedItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


