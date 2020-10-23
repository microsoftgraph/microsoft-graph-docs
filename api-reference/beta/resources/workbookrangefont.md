---
title: "workbookRangeFont resource type"
description: "This object represents the font attributes (font name, font size, color, etc.) for an object."
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookRangeFont resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This object represents the font attributes (font name, font size, color, etc.) for an object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookRangeFont](../api/rangefont-get.md) | [workbookRangeFont](workbookrangefont.md) |Read properties and relationships of rangeFont object.|
|[Update](../api/rangefont-update.md) | [workbookRangeFont](workbookrangefont.md)	|Update RangeFont object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|boolean|Represents the bold status of font.|
|color|string|HTML color code representation of the text color. E.g. #FF0000 represents Red.|
|italic|boolean|Represents the italic status of the font.|
|name|string|Font name (e.g. "Calibri")|
|size|double|Font size.|
|underline| String |Type of underline applied to the font. Possible values are: `None`, `Single`, `Double`, `SingleAccountant`, `DoubleAccountant`.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookRangeFont"
}-->

```json
{
  "bold": true,
  "color": "string",
  "italic": true,
  "name": "string",
  "size": 1024,
  "underline": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "RangeFont resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


