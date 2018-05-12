# ChartLineFormat resource type

Enapsulates the formatting options for line elements.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartLineFormat](../api/chartlineformat_get.md) | [WorkbookChartLineFormat](chartlineformat.md) |Read properties and relationships of chartLineFormat object.|
|[Update](../api/chartlineformat_update.md) | [WorkbookChartLineFormat](chartlineformat.md)	|Update ChartLineFormat object. |
|[Clear](../api/chartlineformat_clear.md)|None|Clear the line format of a chart element.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of lines in the chart.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.workbookChartLineFormat"
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
  "description": "ChartLineFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->