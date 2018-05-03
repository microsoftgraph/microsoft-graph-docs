# ChartPoint resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a point of a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartPoint](../api/chartpoint_get.md) | [ChartPoint](chartpoint.md) |Read properties and relationships of chartPoint object.|
|[List](../api/chartpoint_list.md) | [ChartPoint](chartpoint.md) collection |Get chartPoint object collection. |
|[Itemat](../api/chartpointscollection_itemat.md)|[ChartPoint](chartpoint.md)|Retrieve a point based on its position within the series.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|value|object|Returns the value of a chart point. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartPointFormat](chartpointformat.md)|Encapsulates the format properties chart point. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartPoint"
}-->

```json
{
  "value": "string"
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