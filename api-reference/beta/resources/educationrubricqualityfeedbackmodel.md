---
title: "educationRubricQualityFeedbackModel resource type"
description: "Feedback given for one quality of a rubric"
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationRubricOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Feedback given for one [educationRubricQuality](educationrubricquality.md) of an [educationRubric](educationrubric.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|qualityId|String|Id of the quality for which this feedback is given.|
|feedback|[itemBody](itembody.md)|The given feedback.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricQualityFeedbackModel"
}-->

```json
{
  "qualityId": "String",
  "feedback": {"@odata.type": "microsoft.education.assignments.api.itemBody"},
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
