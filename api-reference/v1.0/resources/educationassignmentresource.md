---
title: "educationAssignmentResource resource type"
description: "A wrapper object that stores the resources associated with an assignment."
localization_priority: Normal
author: "sharad-sharma-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignmentResource resource type

Namespace: microsoft.graph

A wrapper object that stores the resources associated with an assignment. 

The wrapper adds the **distributeForStudentWork** property and indicates that this resource will be copied to the student submission.  If the object isn't copied, each student will see a link to the resource on the assignment. The student will not be able to update this resource. This is a handout from the teacher to the student with nothing to be turned in. If the resource is distributed, each student will receive a copy of this resource in the resource list of their submission. Each student will be able to modify their copy and submit it for grading.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get educationAssignmentResource](../api/educationassignmentresource-get.md) | [educationAssignmentResource](educationassignmentresource.md) |Read properties and relationships of an **educationAssignmentResource** object.|
|[Delete](../api/educationassignmentresource-delete.md) | None |Delete an **educationAssignmentResource** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|distributeForStudentWork|Boolean|Indicates whether this resource should be copied to each student submission for modification and submission.|
|id|String| ID of this resource. Read-only.|
|resource|[educationResource](educationresource.md)|Resource object that has been associated with this assignment.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentResource"
}-->

```json
{
  "distributeForStudentWork": true,
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.educationResource"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignmentResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


