# plan resource type

The Plan resource represents a plan in Office 365. A plan can be owned by a [group](group.md) and contains a collection of [tasks](task.md). It also can have a collection of [buckets](bucket.md). Each plan object has a [details](plandetails.md) object which can contain more information about the plan.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "assignedToTaskBoard",
    "bucketTaskBoard",
    "buckets",
    "details",
    "progressTaskBoard",
    "tasks"
  ],
  "@odata.type": "microsoft.graph.plan"
}-->

```json
{
  "createdBy": "string",
  "id": "string (identifier)",
  "owner": "string",
  "title": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|Read-only. User id by which the plan is created.|
|id|String| Read-only. Id of the plan. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service. |
|owner|String| Group `id` by which the plan is owned. Once set, this can only be updated by the owner.|
|title|String| Required. Title of the plan. This is usually set the name of the group owning the plan.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Used to render the task board view correctly when grouped by assignedTo.|
|bucketTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Used to render the buckets correctly in the task board view.|
|buckets|[bucket](bucket.md) collection| Read-only. Nullable. Collection of buckets in the plan. |
|details|[planDetails](plandetails.md)| Read-only. Additional details about the plan. |
|progressTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Used to render the task board view correctly when grouped by progress.|
|tasks|[task](task.md) collection| Read-only. Nullable. Collection of tasks in the plan. |

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plan](../api/plan_get.md) | [plan](plan.md) |Read properties and relationships of plan object.|
|[List buckets](../api/plan_list_buckets.md) |[bucket](bucket.md) collection| Get a bucket object collection.|
|[List tasks](../api/plan_list_tasks.md) |[task](task.md) collection| Get a task object collection. |
|[Create plan](../api/plan_post_plans.md) | [plan](plan.md) | Create a new plan. |
|[Update plan](../api/plan_update.md) | None	|Update plan object. |
|[Delete plan](../api/plan_delete.md) | None |Delete plan object. |
|[List plans](../api/plan_list.md) | [plan](plan.md) collection | Get a plan object collection. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->