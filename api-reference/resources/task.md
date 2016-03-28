# task resource type

The Task resource represents a task in Office 365. A task is contained in a [plan](plan.md) and can be assigned to a [bucket](bucket.md) in a plan. Each task object has a [details](taskdetails.md) object which can contain more information about the task. See [overview](tasks_overview.md) for more information regarding relationships between group, plan and task.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "assignedToTaskBoardFormat",
    "bucketTaskBoardFormat",
    "details",
    "progressTaskBoardFormat"
  ],
  "@odata.type": "microsoft.graph.task"
}-->

```json
{
  "appliedCategories": {"@odata.type": "microsoft.graph.appliedCategoriesCollection"},
  "assignedBy": "string",
  "assignedDateTime": "String (timestamp)",
  "assignedTo": "string",
  "assigneePriority": "string",
  "bucketId": "string",
  "completedDateTime": "String (timestamp)",
  "conversationThreadId": "string",
  "createdBy": "string",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": true,
  "id": "string (identifier)",
  "orderHint": "string",
  "percentComplete": 1024,
  "planId": "string",
  "previewType": "String",
  "startDateTime": "String (timestamp)",
  "title": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliedCategories|[appliedCategoriesCollection](appliedcategoriescollection.md)|The categories to which the task has been applied. See appliedCategoriesCollection for possible values. |
|assignedBy|String|Read-only. User id by which the task is assigned.|
|assignedDateTime|DateTimeOffset|Read-only. Date and time at which the task is assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|assignedTo|String|User id to which the task is assigned. |
|assigneePriority|String|Used to set the relative priority order of tasks assigned to the user in a list view. Consider three tasks in the priority order of: `'A'`, `'B'`, `'C'`. To move `'B'` to the top, set its `assignneePriority` to smaller than that of `'A'`. The comparison is an ordinal string comparison. |
|bucketId|String|Bucket id to which the task belongs. The bucket needs to be in the plan that the task is in.|
|completedDateTime|DateTimeOffset|Read-only. Date and time at which the `'percentComplete'` of the task is set to `'100'`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|conversationThreadId|String|Thread id of the conversation on the task. This is the id of the conversation thread object created in the group. |
|createdBy|String|Read-only. User id by which the task is created. |
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|hasDescription|Boolean|Read-only. Value is `true` if the details object of the task has a non-empty description and `false` otherwise.|
|id|String|Read-only. Id of the task. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service. |
|orderHint|String|Used to set the relative order of tasks in a list view. Consider three tasks in the order of: `'X'`, `'Y'`, `'Z'`. To move `'Y'` to the top, set its `orderHint` to smaller than that of `'X'`. The comparison is an ordinal string comparison.|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. |
|planId|String|Plan id to which the task belongs. Once set, this cannot be updated. |
|previewType|String| Read-only. This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|title|String|Required. Title of the task. |

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Used to render the task correctly in the task board view when grouped by assignedTo. |
|bucketTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Used to render the task correctly in the task board view when grouped by bucket.|
|details|[taskDetails](taskdetails.md)| Read-only. Additional details about the task. Contains `description`, `references`, `checklist` etc. |
|progressTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Used to render the task correctly in the task board view when grouped by progress. |

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get task](../api/task_get.md) | [task](task.md) |Read properties and relationships of task object.|
|[Create task](../api/task_post_tasks.md) | [task](task.md) | Create a new task object. |
|[Update task](../api/task_update.md) | None	|Update task object. |
|[Delete task](../api/task_delete.md) | None |Delete task object. |
|[List tasks](../api/task_list.md) | [task](task.md) collection | Get a task object collection. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "task resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->