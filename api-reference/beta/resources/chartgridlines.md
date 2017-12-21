# ChartGridlines resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents major or minor gridlines on a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartGridlines](../api/chartgridlines_get.md) | [ChartGridlines](chartgridlines.md) |Read properties and relationships of chartGridlines object.|
|[Update](../api/chartgridlines_update.md) | [ChartGridlines](chartgridlines.md)	|Update ChartGridlines object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|visible|boolean|Boolean value representing if the axis gridlines are visible or not.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartGridlinesFormat](chartgridlinesformat.md)|Represents the formatting of chart gridlines. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartGridLines"
}-->

```json
{
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartGridlines resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->