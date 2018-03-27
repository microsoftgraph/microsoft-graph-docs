# RangeFill resource type

Represents the background of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get RangeFill](../api/rangefill_get.md) | [WorkbookRangeFill](rangefill.md) |Read properties and relationships of rangeFill object.|
|[Update](../api/rangefill_update.md) | [WorkbookRangeFill](rangefill.md)	|Update RangeFill object. |
|[Clear](../api/rangefill_clear.md)|None|Resets the range background.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange")|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRangeFill"
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