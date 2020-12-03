---
title: "Icon resource type"
description: "Represents a cell icon."
localization_priority: Normal
author: "ruoyingl"
ms.prod: ""
doc_type: resourcePageType
---

# Icon resource type

Namespace: microsoft.graph

Represents a cell icon.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Icon](../api/icon-get.md) | [Icon](icon.md) |Read properties and relationships of icon object.|
|[Update](../api/icon-update.md) | [Icon](icon.md)	|Update Icon object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int|Represents the index of the icon in the given set.|
|set|string|Represents the set that the icon is part of. The possible values are: `Invalid`, `ThreeArrows`, `ThreeArrowsGray`, `ThreeFlags`, `ThreeTrafficLights1`, `ThreeTrafficLights2`, `ThreeSigns`, `ThreeSymbols`, `ThreeSymbols2`, `FourArrows`, `FourArrowsGray`, `FourRedToBlack`, `FourRating`, `FourTrafficLights`, `FiveArrows`, `FiveArrowsGray`, `FiveRating`, `FiveQuarters`, `ThreeStars`, `ThreeTriangles`, `FiveBoxes`.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookIcon"
}-->

```json
{
  "index": 1024,
  "set": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Icon resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

