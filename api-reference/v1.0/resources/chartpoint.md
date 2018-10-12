# ChartPoint resource type

Represents a point of a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartPoint](../api/chartpoint_get.md) | [WorkbookChartPoint](chartpoint.md) |Read properties and relationships of chartPoint object.|
|[List](../api/chartpoint_list.md) | [WorkbookChartPoint](chartpoint.md) collection |Get chartPoint object collection. |
|[ItemAt](../api/chartpointscollection_itemat.md)|[WorkbookChartPoint](chartpoint.md)|Retrieve a point based on its position within the series.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|value|Json|Returns the value of a chart point. Read-only.|
|id|string|unique identifier|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[WorkbookChartPointFormat](chartpointformat.md)|Encapsulates the format properties chart point. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartPoint"
}-->

```json
{
  "value": "string",
  "id": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartPoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->