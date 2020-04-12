---
title: "educationAssignment resource type"
description: "The **educationAssignment** resource represents a task or unit of work assigned to a student or team member in a class as part of their study. Only teachers or team owners can create assignments. Assignments contain handouts and tasks that the teacher wants the student to work on. Each student assignment has an associated submission that contains any work their teacher asked to be turned in. A teacher can add scores and feedback to the submission turned in by the student."
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **educationAssignment** resource represents a task or unit of work assigned to a student or team member in a class as part of their study. Only teachers or team owners can create assignments. Assignments contain handouts and tasks that the teacher wants the student to work on. Each student assignment has an associated [submission](educationsubmissionresource.md) that contains any work their teacher asked to be turned in. A teacher can add scores and feedback to the submission turned in by the student.

When an assignment is created, it is in a Draft state. Students can't see the assignment and submissions won't be created. You can change the status of an assignment by using the [publish](../api/educationassignment-publish.md) action. You can't use a PATCH request to change the assignment status.

The assignment APIs are exposed in the class namespace.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List resources](../api/educationassignment-list-resources.md) |[educationAssignmentResource](educationassignmentresource.md) collection| Get an **educationAssignmentResource** object collection.|
|[List submissions](../api/educationassignment-list-submissions.md) |[educationSubmission](educationsubmission.md) collection| Get an **educationSubmission** object collection.|
|[List categories](../api/educationassignment-list-categories.md) |[educationCategory](educationcategory.md) collection| Get an **educationCategory** object collection.|
|[Create assignment resource](../api/educationassignment-post-resources.md) |[educationAssignmentResource](educationassignmentresource.md)| Create a new **educationAssignmentResource** by posting to the resources collection.|
|[Get assignment](../api/educationassignment-get.md) | [educationAssignment](educationassignment.md) |Read properties and relationships of an **educationAssignment** object.|
|[Update](../api/educationassignment-update.md) | [educationAssignment](educationassignment.md)	|Update an **educationAssignment** object. |
|[Delete](../api/educationassignment-delete.md) | None |Delete an **educationAssignment** object. |
|[Add categories](../api/educationassignment-add-categories.md) |[educationCategory](educationcategory.md) | Assign an **educationCategory** belonging to the class to this assignment.|
|[Remove category](../api/educationassignment-remove-category.md) |None| Remove an **educationCategory** belonging to the class from this assignment.|
|[Attach rubric](../api/educationassignment-put-rubric.md)|None|Attach an existing **educationRubric** to this assignment.|
|[Remove rubric](../api/educationassignment-delete-rubric.md)|None|Detach the **educationRubric** from this assignment.|
|[Publish](../api/educationassignment-publish.md)|[educationAssignment](educationassignment.md)|Change the state of an **educationAssignment** object from draft to published.|
|[Get resource folder URL](../api/educationassignment-getresourcesfolderurl.md)| string| The OneDrive folder into which file-based resources should be placed to be part of an assignment resource. Files must be located in this folder to be added as a resource.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|allowLateSubmissions|Boolean| Identifies whether students can submit after the due date. If this property is not specified during create, it defaults to true. |
|allowStudentsToAddResourcesToSubmission|Boolean| Identifies whether students can add their own resources to a submission or if they can only modify resources added by the teacher. |
|assignDateTime|DateTimeOffset|The date when the assignment should become active.  If in the future, the assignment is not shown to the student until this date.  The **Timestamp** type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|assignTo|[educationAssignmentRecipient](educationassignmentrecipient.md)| Which users, or whole class should receive a submission object once the assignment is published. |
|assignedDateTime|DateTimeOffset|The moment that the assignment was published to students and the assignment shows up on the students timeline.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|classId|String| Class which this assignment belongs. |
|closeDateTime|DateTimeOffset| Date when the assignment will be closed for submissions. This is an optional field that can be null if the assignment does not allowLateSubmissions or when the closeDateTime is the same as the dueDateTime. But if specified, then the closeDateTime must be greater than or equal to the dueDateTime. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|createdBy|[identitySet](identityset.md)| Who created the assignment. |
|createdDateTime|DateTimeOffset|Moment when the assignment was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|displayName|String|Name of the assignment.|
|dueDateTime|DateTimeOffset|Date when the students assignment is due.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|How the assignment will be graded. |
|instructions|[itemBody](itembody.md)| Instructions for the assignment.  This along with the display name tell the student what to do. |
|lastModifiedBy|[identitySet](identityset.md)| Who last modified the assignment. |
|lastModifiedDateTime|DateTimeOffset|Moment when the assignment was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|status|string| Status of the **Assignment**.  You can not PATCH this value.  Possible values are: `draft`, `scheduled`, `published`, `assigned`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resources|[educationAssignmentResource](educationassignmentresource.md) collection| Learning objects that are associated with this assignment.  Only teachers can modify this list. Nullable.|
|submissions|[educationSubmission](educationsubmission.md) collection| Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.|
|categories|[educationCategory](educationcategory.md) collection| When set, enables users to easily find assignments of a given type.  Read-only. Nullable.|
|rubric|[educationRubric](educationrubric.md)|When set, the grading rubric attached to this assignment.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignment"
}-->

```json
{
  "id": "String (identifier)",
  "allowLateSubmissions": true,
  "allowStudentsToAddResourcesToSubmission": true,
  "assignDateTime": "String (timestamp)",
  "assignTo": {"@odata.type": "microsoft.graph.educationAssignmentRecipient"},
  "assignedDateTime": "String (timestamp)",
  "classId": "String",
  "closeDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "dueDateTime": "String (timestamp)",
  "grading": {"@odata.type": "microsoft.graph.educationAssignmentGradeType"},
  "instructions": {"@odata.type": "microsoft.graph.itemBody"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "status": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
