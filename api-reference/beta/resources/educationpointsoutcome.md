---
title: "educationPointsOutcome resource type"
description: "A subclass of educationOutcome. This is the outcome of grading by assigning points."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationPointsOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationOutcome](educationoutcome.md). This is the outcome of grading by assigning points.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|points|Single|Points given for this assignment.|
|publishedPoints|Single|Points given for this assignment; this property contains what has been published to the student.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPointsOutcome"
}-->

```json
{
  "points": "Single",
  "publishedPoints": "Single"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationPointsOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
