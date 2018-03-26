# ChartAxisFormat resource type

Encapsulates the format properties for the chart axis.


## Methods
None

## Properties
| Property | Type    |Description
|:---------|:--------|:------------------------------------
| id       |string   | Unique identifier. Read-only.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|font|[WorkbookChartFont](chartfont.md)|Represents the font attributes (font name, font size, color, etc.) for a chart axis element. Read-only.|
|line|[WorkbookChartLineFormat](chartlineformat.md)|Represents chart line formatting. Read-only.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartAxisFormat"
}-->

```json
{
  "id": "string",
  "font": {"@odata.type": "microsoft.graph.workbookChartFont"},
  "line": {"@odata.type": "microsoft.graph.workbookChartLineFormat"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxisFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->