---
title: "educationAssignmentPointsGradeType resource type"
description: "Used with the **assignments.grading** property. This is a subclass of educationAssignmentGradeType."
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
---

# educationAssignmentPointsGradeType resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used with the **assignments.grading** property. This is a subclass of [educationAssignmentGradeType](educationassignmentgradetype.md).

This indicates that the assignment is graded and stores the maximum number of points each student can achieve on this work item. When this is set on an assignment, each submission will get
an [educationAssignmentPointsGrade](educationassignmentpointsgrade.md) property associated with it for the storage of each student's points.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|maxPoints|Single| Max points possible for this assignment.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentPointsGradeType"
}-->

```json
{
  "maxPoints": "Single"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignmentPointsGradeType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationassignmentpointsgradetype.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
