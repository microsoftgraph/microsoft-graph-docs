# RangeBorder resource type

Represents the border of an object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get RangeBorder](../api/rangeborder_get.md) | [WorkbookRangeBorder](rangeborder.md) |Read properties and relationships of rangeBorder object.|
|[Update](../api/rangeborder_update.md) | [WorkbookRangeBorder](rangeborder.md)	|Update RangeBorder object. |
|[List](../api/rangeborder_list.md) | [WorkbookRangeBorder](rangeborder.md) collection |Get rangeBorder object collection. |
|[Itemat](../api/rangebordercollection_itemat.md)|[WorkbookRangeBorder](rangeborder.md)|Gets a border object using its index|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange").|
|id|string|Represents border identifier. Possible values are: `EdgeTop`, `EdgeBottom`, `EdgeLeft`, `EdgeRight`, `InsideVertical`, `InsideHorizontal`, `DiagonalDown`, `DiagonalUp`. Read-only.|
|sideIndex|string|Constant value that indicates the specific side of the border. Possible values are: `EdgeTop`, `EdgeBottom`, `EdgeLeft`, `EdgeRight`, `InsideVertical`, `InsideHorizontal`, `DiagonalDown`, `DiagonalUp`. Read-only.|
|style|string|One of the constants of line style specifying the line style for the border. Possible values are: `None`, `Continuous`, `Dash`, `DashDot`, `DashDotDot`, `Dot`, `Double`, `SlantDashDot`.|
|weight|string|Specifies the weight of the border around a range. Possible values are: `Hairline`, `Thin`, `Medium`, `Thick`.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRangeBorder"
}-->

```json
{
  "color": "string",
  "id": "string",
  "sideIndex": "string",
  "style": "string",
  "weight": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeBorder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->