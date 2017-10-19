# RangeFont resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This object represents the font attributes (font name, font size, color, etc.) for an object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get RangeFont](../api/rangefont_get.md) | [RangeFont](rangefont.md) |Read properties and relationships of rangeFont object.|
|[Update](../api/rangefont_update.md) | [RangeFont](rangefont.md)	|Update RangeFont object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|boolean|Represents the bold status of font.|
|color|string|HTML color code representation of the text color. E.g. #FF0000 represents Red.|
|italic|boolean|Represents the italic status of the font.|
|name|string|Font name (e.g. "Calibri")|
|size|double|Font size.|
|underline|string|Type of underline applied to the font. Possible values are: `None`, `Single`, `Double`, `SingleAccountant`, `DoubleAccountant`.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangeFont"
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
<!-- {
  "type": "#page.annotation",
  "description": "RangeFont resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->