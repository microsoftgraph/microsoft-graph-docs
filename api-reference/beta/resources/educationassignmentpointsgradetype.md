# educationAssignmentPointsGradeType resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
<!-- {
  "type": "#page.annotation",
  "description": "educationAssignmentPointsGradeType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->