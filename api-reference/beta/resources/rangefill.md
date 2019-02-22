---
title: "RangeFill resource type"
description: "Represents the background of a range object."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# RangeFill resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the background of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get RangeFill](../api/rangefill-get.md) | [RangeFill](rangefill.md) |Read properties and relationships of rangeFill object.|
|[Update](../api/rangefill-update.md) | [RangeFill](rangefill.md)	|Update RangeFill object. |
|[Clear](../api/rangefill-clear.md)|None|Resets the range background.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange")|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangeFill"
}-->

```json
{
  "color": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "RangeFill resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/rangefill.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
