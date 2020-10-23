---
title: "workbookRangeFormat resource type"
description: "A format object encapsulating the range's font, fill, borders, alignment, and other properties."
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookRangeFormat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A format object encapsulating the range's font, fill, borders, alignment, and other properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookRangeFormat](../api/rangeformat-get.md) | [workbookRangeFormat](workbookrangeformat.md) |Read properties and relationships of rangeFormat object.|
|[Create workbookRangeBorder](../api/rangeformat-post-borders.md) |[workbookRangeBorder](workbookrangeborder.md)| Create a new RangeBorder by posting to the borders collection.|
|[List borders](../api/rangeformat-list-borders.md) |[workbookRangeBorder](workbookrangeborder.md) collection| Get a RangeBorder object collection.|
|[Update](../api/rangeformat-update.md) | [workbookRangeFormat](workbookrangeformat.md)	|Update RangeFormat object. |
|[Autofitcolumns](../api/rangeformat-autofitcolumns.md)|None|Changes the width of the columns of the current range to achieve the best fit, based on the current data in the columns.|
|[Autofitrows](../api/rangeformat-autofitrows.md)|None|Changes the height of the rows of the current range to achieve the best fit, based on the current data in the columns.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|columnWidth|double|Gets or sets the width of all colums within the range. If the column widths are not uniform, null will be returned.|
|horizontalAlignment|string|Represents the horizontal alignment for the specified object. Possible values are: `General`, `Left`, `Center`, `Right`, `Fill`, `Justify`, `CenterAcrossSelection`, `Distributed`.|
|rowHeight|double|Gets or sets the height of all rows in the range. If the row heights are not uniform null will be returned.|
|verticalAlignment|string|Represents the vertical alignment for the specified object. Possible values are: `Top`, `Center`, `Bottom`, `Justify`, `Distributed`.|
|wrapText|boolean|Indicates if Excel wraps the text in the object. A null value indicates that the entire range doesn't have uniform wrap setting|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|borders|[workbookRangeBorder](workbookrangeborder.md) collection|Collection of border objects that apply to the overall range selected Read-only.|
|fill|[workbookRangeFill](workbookrangefill.md)|Returns the fill object defined on the overall range. Read-only.|
|font|[workbookRangeFont](workbookrangefont.md)|Returns the font object defined on the overall range selected Read-only.|
|protection|[formatProtection](formatprotection.md)|Returns the format protection object for a range. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRangeFormat"
}-->

```json
{
  "columnWidth": 1024,
  "horizontalAlignment": "string",
  "rowHeight": 1024,
  "verticalAlignment": "string",
  "wrapText": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "RangeFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


