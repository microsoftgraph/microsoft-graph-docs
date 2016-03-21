# taskBoardTaskFormat resource type

The TaskBoardTaskFormat resource represents the information used to render a task correctly in a task board view. Each [task](task.md) will have three taskBoardTaskFormat objects as there can be three task board views that a task is in.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.taskboardtaskformat"
}-->

```json
{
  "id": "string (identifier)",
  "orderHint": "string",
  "type": "String (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Id of the task. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service. |
|orderHint|String| Used to set the relative order of tasks in the vertical on the task board view. Consider three tasks in the order of: `'O'`, `'P'`, `'Q'`. To move `'P'` to the top of the vertical, set its `'orderHint'` to smaller than that of `'O'`. The comparison is an ordinal string comparison.|
|type|String| Read-only. Used to set the type of task board view in which this object is used to render the task. Possible values are: `progress`, `assignedTo`, `bucket`. |

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get taskBoardTaskFormat](../api/taskboardtaskformat_get.md) | [taskBoardTaskFormat](taskboardtaskformat.md) |Read properties and relationships of taskBoardTaskFormat object.|
|[Update taskBoardTaskFormat](../api/taskboardtaskformat_update.md) | None	|Update taskBoardTaskFormat object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "taskBoardTaskFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->