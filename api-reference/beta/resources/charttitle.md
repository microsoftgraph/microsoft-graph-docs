# ChartTitle resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a chart title object of a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartTitle](../api/charttitle_get.md) | [ChartTitle](charttitle.md) |Read properties and relationships of chartTitle object.|
|[Update](../api/charttitle_update.md) | [ChartTitle](charttitle.md)	|Update ChartTitle object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|boolean|Boolean value representing if the chart title will overlay the chart or not.|
|text|string|Represents the title text of a chart.|
|visible|boolean|A boolean value the represents the visibility of a chart title object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartTitleFormat](charttitleformat.md)|Represents the formatting of a chart title, which includes fill and font formatting. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartTitle"
}-->

```json
{
  "overlay": true,
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->