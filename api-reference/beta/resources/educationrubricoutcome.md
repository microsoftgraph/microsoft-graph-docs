---
title: "educationRubricOutcome resource type"
description: "A subclass of educationOutcome. This is the outcome of grading using a rubric."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationRubricOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationOutcome](educationoutcome.md). This is the outcome of grading using a rubric.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|rubricQualityFeedback|[educationRubricQualityFeedbackModel](educationrubricqualityfeedbackmodel.md) collection|Feedback entered for one or more qualities of the rubric.|
|rubricQualitySelectedLevels|[educationRubricQualitySelectedLevelModel](educationrubricqualityselectedlevelmodel.md) collection|The level selected for qualities of the rubric.|
|publishedRubricQualityFeedback|[educationRubricQualityFeedbackModel](educationrubricqualityfeedbackmodel.md) collection|Feedback entered for one or more qualities of the rubric; this property contains what has been published to the student.|
|publishedRubricQualitySelectedLevels|[educationRubricQualitySelectedLevelModel](educationrubricqualityselectedlevelmodel.md) collection|The level selected for qualities of the rubric; this property contains what has been published to the student.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricOutcome"
}-->

```json
{
  "rubricQualityFeedback": [{"@odata.type": "microsoft.education.assignments.api.rubricQualityFeedbackModel"}],
  "rubricQualitySelectedLevels": [{"@odata.type": "microsoft.education.assignments.api.rubricQualitySelectedLevelModel"}],
  "publishedRubricQualityFeedback": [{"@odata.type": "microsoft.education.assignments.api.rubricQualityFeedbackModel"}],
  "publishedRubricQualitySelectedLevels": [{"@odata.type": "microsoft.education.assignments.api.rubricQualitySelectedLevelModel"}],
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubricOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
