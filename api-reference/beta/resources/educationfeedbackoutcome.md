---
title: "educationFeedbackOutcome resource type"
description: "A subclass of educationOutcome. This is the outcome of grading by giving feedback."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationFeedbackOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationOutcome](educationoutcome.md). This is the outcome of grading by giving feedback.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|feedback|[educationFeedback](educationFeedback.md)|Feedback for this assignment.|
|publishedFeedback|[educationFeedback](educationFeedback.md)|Feedback for this assignment; this property contains what has been published to the student.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPowerPointResource"
}-->

```json
{
  "feedback": {"@odata.type": "microsoft.graph.educationFeedback"},
  "publishedFeedback": {"@odata.type": "microsoft.graph.educationFeedback"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationFeedbackOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
