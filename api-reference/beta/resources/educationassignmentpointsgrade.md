---
title: "educationAssignmentPointsGrade resource type"
description: "When an assignment is set to a points grade type, each submission will have this object associated with the **submission.grade** property. This creates a subclass from educationAssignmentGrade,"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignmentPointsGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When an assignment is set to a points grade type, each submission will have this object associated with the **submission.grade** property. This creates a subclass from [educationAssignmentGrade](educationassignmentgrade.md),
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
  "points": "Double"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignmentPointsGrade resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


