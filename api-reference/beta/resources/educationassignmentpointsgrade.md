# educationAssignmentPointsGrade resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

When an assignment is set to a points grade type, each submission will have this object associated with the **submission.grade** property. This creates a subclass from [educationAssignmentGrade](educationAssignmentGrade.md),
which will add the who data to this property. The max points is stored in the **assignments.grading** property.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|points|Single|Number of points a teacher is giving this submission object.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentPointsGrade"
}-->

```json
{
  "points": "Single"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationAssignmentPointsGrade resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->