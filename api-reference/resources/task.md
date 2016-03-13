# task resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get task](../api/task_get.md) | [task](task.md) |Read properties and relationships of task object.|
|[Update](../api/task_update.md) | [task](task.md)	|Update task object. |
|[Delete](../api/task_delete.md) | None |Delete task object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliedCategories|[appliedCategoriesCollection](appliedcategoriescollection.md)||
|assignedBy|string||
|assignedDateTime|[dateTimeOffset](datetimeoffset.md)||
|assignedTo|string||
|assigneePriority|string||
|bucketId|string||
|completedDateTime|[dateTimeOffset](datetimeoffset.md)||
|conversationThreadId|string||
|createdBy|string||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|dueDateTime|[dateTimeOffset](datetimeoffset.md)||
|hasDescription|boolean||
|id|string| Read-only.|
|orderHint|string||
|percentComplete|int32||
|planId|string||
|previewType|string| Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|startDateTime|[dateTimeOffset](datetimeoffset.md)||
|title|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Nullable.|
|bucketTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Nullable.|
|details|[taskDetails](taskdetails.md)| Read-only. Nullable.|
|progressTaskBoardFormat|[taskBoardTaskFormat](taskboardtaskformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

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
  "previewType": "string",
  "startDateTime": "String (timestamp)",
  "title": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "task resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->