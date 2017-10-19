# planner resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **planner** resource is the entry point for the Planner object model. It returns a singleton **planner** resource.  It doesn't contain any usable properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create plannerBucket](../api/planner_post_buckets.md) |[plannerBucket](plannerbucket.md)| Create a new **plannerBucket** by posting to the buckets collection.|
|[Create plannerPlan](../api/planner_post_plans.md) |[plannerPlan](plannerplan.md)| Create a new **plannerPlan** by posting to the plans collection.|
|[Create plannerTask](../api/planner_post_tasks.md) |[plannerTask](plannertask.md)| Create a new **plannerTask** by posting to the tasks collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Identifier of the **planner** resource.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable. Returns a collection of the specified buckets|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns a collection of the specified plans|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns a collection of the specified tasks|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.planner"
}-->

```json
{
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "planner resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->