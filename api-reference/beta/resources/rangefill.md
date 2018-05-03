# RangeFill resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the background of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get RangeFill](../api/rangefill_get.md) | [RangeFill](rangefill.md) |Read properties and relationships of rangeFill object.|
|[Update](../api/rangefill_update.md) | [RangeFill](rangefill.md)	|Update RangeFill object. |
|[Clear](../api/rangefill_clear.md)|None|Resets the range background.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange")|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangeFill"
}-->

```json
{
  "color": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeFill resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->