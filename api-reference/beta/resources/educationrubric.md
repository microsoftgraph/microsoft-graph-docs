---
title: "educationRubric resource type"
description: "A grading rubric that can be attached to an assignment."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationRubric resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A grading rubric that can be attached to an assignment. A rubric is associated with a **User** (teacher), and attached to one or more **Assignments**. 

A grading rubric is a matrix of *qualities*, *levels*, and *criteria*, as follows:

| | Level | Level |
|:--|:--|:--|
| Quality | Criterion | Criterion |
| Quality | Criterion | Criterion |

An example of a grading rubric might be:

| | Excellent | Good | Poor |
|:--|:--|:--|:--|
| Organization | *Well-organized and easily understood* | *Organization is evident* | *Topics are presented in no clear order* |
| Argument | *Argument is clear and persuasive* | *Argument hangs together* | *Argument unclear or incoherent* |

Grading using a rubric involves selecting one *level* for each *quality* in the rubric.

A rubric *may* have points associated with each level, and a weight associated with each quality.  If present, weights must add up to 100.

| | Excellent (3 points) | Good (2 points) | Poor (1 point) |
|:--|:--|:--|:--|
| Organization (weight 40) | *Well-organized and easily understood* | *Organization is evident* | *Topics are presented in no clear order* |
| Argument (weight 60) | *Argument is clear and persuasive* | *Argument hangs together* | *Argument unclear or incoherent* |

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create rubric](../api/educationuser-create-rubric.md) | [educationRubric](educationrubric.md) | Create an **educationRubric**.|
|[Delete rubric](../api/educationuser-delete-rubric.md) | None | Delete an **educationRubric**.|
|[Update rubric](../api/educationuser-update-rubric.md) | [educationRubric](educationrubric.md) | Update an existing **educationRubric**.|
|[Get rubric](../api/educationuser-get-rubric.md) | [educationRubric](educationrubric.md) | Get an existing **educationRubric**.|
|[List rubrics](../api/educationuser-list-rubrics.md) | [educationRubric](educationrubric.md) collection | List all existing **educationRubric**.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|Unique identifier for the rubric.|
|displayName|String|Name of rubric.|
|description|String|Description of rubric.|
|qualities|[educationRubricQuality](educationrubricquality.md) collection|The qualities of this rubric.|
|levels|[educationRubricLevel](educationrubriclevel.md) collection|The levels of this rubric.|
|grading|[foo](foo.md)|The grading type of this rubric.|
|createdBy|[identitySet](identityset.md)| Who created the rubric. |
|createdDateTime|DateTimeOffset|Moment when the rubric was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|lastModifiedBy|[identitySet](identityset.md)| Who last modified the rubric. |
|lastModifiedDateTime|DateTimeOffset|Moment when the rubric was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubric"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "qualities": [{"@odata.type": "microsoft.education.assignments.api.rubricQuality"}],
  "levels": [{"@odata.type": "microsoft.education.assignments.api.rubricLevel)"}],
  "grading": {"@odata.type": "microsoft.education.assignments.api.educationAssignmentGradeType"},
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubric resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
