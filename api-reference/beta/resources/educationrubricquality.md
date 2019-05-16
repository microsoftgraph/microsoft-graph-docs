---
title: "educationRubricQuality resource type"
description: "A quality within a grading educationRubric."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationRubricQuality resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A quality within a grading [educationRubric](educationrubric.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|qualityId|String|Unique identifier for the level.|
|displayName|String|Name of level.|
|description|[itemBody](itembody.md)|Description of rubric.|
|weight|Single|The weight of this quality out of 100.|
|criteria|[educationRubricCriterion](educationrubriccriterion.md) collection|The criteria for this quality (one criterion per [educationRubricLevel](educationrubriclevel.md).|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricQuality"
}-->

```json
{
  "qualityId": "String (identifier)",
  "displayName": "String",
  "description": {"@odata.type": "microsoft.graph.itembody"},
  "weight": "Single",
  "criteria": [{"@odata.type": "microsoft.education.assignments.api.rubricCriterion"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubricQuality resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
