# ChartAxisTitle resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the title of a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartAxisTitle](../api/chartaxistitle_get.md) | [ChartAxisTitle](chartaxistitle.md) |Read properties and relationships of chartAxisTitle object.|
|[Update](../api/chartaxistitle_update.md) | [ChartAxisTitle](chartaxistitle.md)	|Update ChartAxisTitle object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|text|string|Represents the axis title.|
|visible|boolean|A boolean that specifies the visibility of an axis title.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartAxisTitleFormat](chartaxistitleformat.md)|Represents the formatting of chart axis title. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartAxisTitle"
}-->

```json
{
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxisTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->