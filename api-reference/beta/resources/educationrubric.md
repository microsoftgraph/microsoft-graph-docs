---
title: "educationRubric resource type"
description: "A grading rubric that can be attached to an assignment"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationRubric resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A grading rubric that can be attached to an assignment. A rubric is associated with an **educationUser** (teacher), and attached to one or more **educationAssignment** resources. 

See [Education rubric overview](https://developer.microsoft.com/graph/docs/concepts/education-rubric-overview) for more information.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationRubric](../api/educationrubric-get.md) | [educationRubric](educationrubric.md) | Read properties and relationships of educationRubric object. |
| [Update educationRubric](../api/educationrubric-update.md) | [educationRubric](educationrubric.md) | Update educationRubric object. |
| [Delete educationRubric](../api/educationrubric-delete.md) | None | Delete educationRubric object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|[identitySet](identityset.md)|The user who created this resource.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|[itemBody](itembody.md)|The description of this rubric.|
|displayName|String|The name of this rubric.|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|The grading type of this rubric -- null for a no-points rubric, or [educationAssignmentPointsGradeType](educationassignmentpointsgradetype.md) for a points rubric.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|levels|[rubricLevel](rubriclevel.md) collection|The collection of levels making up this rubric.|
|qualities|[rubricQuality](rubricquality.md) collection|The collection of qualities making up this rubric.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubric",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "grading": {"@odata.type": "microsoft.graph.educationAssignmentGradeType"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "levels": [{"@odata.type": "microsoft.graph.rubricLevel"}],
  "qualities": [{"@odata.type": "microsoft.graph.rubricQuality"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationRubric resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->