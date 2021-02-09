---
title: "plannerTask resource type"
description: "The **plannerTask** resource represents a Planner task in Microsoft 365. A Planner task is contained in a plan and can be assigned to a bucket in a plan. Each task object has a details object which can contain more information about the task. See overview for more information regarding relationships between group, plan and task."
localization_priority: Priority
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTask resource type

Namespace: microsoft.graph

The **plannerTask** resource represents a Planner task in Microsoft 365. A Planner task is contained in a [plan](plannerplan.md) and can be assigned to a [bucket](plannerbucket.md) in a plan. Each task object has a [details](plannertaskdetails.md) object which can contain more information about the task. See [overview](planner-overview.md) for more information regarding relationships between group, plan and task.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerTask](../api/plannertask-get.md) | [plannerTask](plannertask.md) |Read properties and relationships of **plannerTask** object.|
|[Update](../api/plannertask-update.md) | [plannerTask](plannertask.md)	|Update **plannerTask** object. |
|[Delete](../api/plannertask-delete.md) | None |Delete **plannerTask** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeChecklistItemCount|Int32|Number of checklist items with value set to `false`, representing incomplete items.|
|appliedCategories|[plannerAppliedCategories](plannerappliedcategories.md)|The categories to which the task has been applied. See [applied Categories](plannerappliedcategories.md) for possible values.|
|assigneePriority|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](planner-order-hint-format.md).|
|assignments|[plannerAssignments](plannerassignments.md)|The set of assignees the task is assigned to.|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service. |
|checklistItemCount|Int32|Number of checklist items that are present on the task.|
|completedBy|[identitySet](identityset.md)|Identity of the user that completed the task.|
|completedDateTime|DateTimeOffset|Read-only. Date and time at which the `'percentComplete'` of the task is set to `'100'`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|conversationThreadId|String|Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.|
|createdBy|[identitySet](identityset.md)|Identity of the user that created the task.|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|hasDescription|Boolean|Read-only. Value is `true` if the details object of the task has a non-empty description and `false` otherwise.|
|id|String|Read-only. ID of the task. It is 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service.|
|orderHint|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](planner-order-hint-format.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. |
|planId|String|Plan ID to which the task belongs.|
|previewType|String|This sets the type of preview that shows up on the task. The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|referenceCount|Int32|Number of external references that exist on the task.|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|title|String|Title of the task.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.|
|details|[plannerTaskDetails](plannertaskdetails.md)| Read-only. Nullable. Additional details about the task.|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerTask"
}-->

```json
{
  "activeChecklistItemCount": 1024,
  "appliedCategories": {"@odata.type": "microsoft.graph.plannerAppliedCategories"},
  "assigneePriority": "String",
  "assignments": {"@odata.type": "microsoft.graph.plannerAssignments"},
  "bucketId": "String",
  "checklistItemCount": 1024,
  "completedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "completedDateTime": "String (timestamp)",
  "conversationThreadId": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": true,
  "id": "String (identifier)",
  "orderHint": "String",
  "percentComplete": 1024,
  "planId": "String",
  "previewType": "String",
  "referenceCount": 1024,
  "startDateTime": "String (timestamp)",
  "title": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

