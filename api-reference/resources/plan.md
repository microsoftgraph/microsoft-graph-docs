# plan resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plan](../api/plan_get.md) | [plan](plan.md) |Read properties and relationships of plan object.|
|[Create bucket](../api/plan_post_buckets.md) |[bucket](bucket.md)| Create a new bucket by posting to the buckets collection.|
|[List buckets](../api/plan_list_buckets.md) |[bucket](bucket.md) collection| Get a bucket object collection.|
|[Create task](../api/plan_post_tasks.md) |[task](task.md)| Create a new task by posting to the tasks collection.|
|[List tasks](../api/plan_list_tasks.md) |[task](task.md) collection| Get a task object collection.|
|[Update](../api/plan_update.md) | [plan](plan.md)	|Update plan object. |
|[Delete](../api/plan_delete.md) | None |Delete plan object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|string||
|id|string| Read-only.|
|owner|string||
|title|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Nullable.|
|bucketTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Nullable.|
|buckets|[bucket](bucket.md) collection| Read-only. Nullable.|
|details|[planDetails](plandetails.md)| Read-only. Nullable.|
|progressTaskBoard|[planTaskBoard](plantaskboard.md)| Read-only. Nullable.|
|tasks|[task](task.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->