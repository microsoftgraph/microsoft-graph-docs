# ChartPointFormat resource type

Represents formatting object for chart points.


## Methods
None

## Properties
| Property | Type    |Description
|:---------|:--------|:------------------------------------
| id       |string   | Unique identifier. Read-only.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fill|[ChartFill](chartfill.md)|Represents the fill format of a chart, which includes background formating information. Read-only.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartPointFormat"
}-->

```json
{
  "id": "string",
  "fill": {"@odata.type": "microsoft.graph.chartFill"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartPointFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->