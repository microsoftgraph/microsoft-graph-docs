---
title: "plannerPlan resource type"
description: "The **plannerPlan** resource represents a plan in Microsoft 365. A plan can be owned by a group and contains a collection of plannerTasks. It can also have a collection of plannerBuckets. Each plan object has a details object which can contain more information about the plan. For more information about the relationships between groups, plans, and tasks, see Planner."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerPlan** resource represents a plan in Microsoft 365. A plan can be owned by a [group](group.md) and contains a collection of [plannerTasks](plannertask.md). It can also have a collection of [plannerBuckets](plannerbucket.md). Each plan object has a [details](plannerplandetails.md) object which can contain more information about the plan. For more information about the relationships between groups, plans, and tasks, see [Planner](planner-overview.md).



## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerPlan](../api/plannerplan-get.md) | [plannerPlan](plannerplan.md) |Read properties and relationships of **plannerPlan** object.|
|[List buckets](../api/plannerplan-list-buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a **plannerBucket** object collection.|
|[List tasks](../api/plannerplan-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|
|[Update](../api/plannerplan-update.md) | [plannerPlan](plannerplan.md)	|Update **plannerPlan** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only. ID of the plan. It is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|owner|String|ID of the [Group](group.md) that owns the plan. A valid group must exist before this field can be set. After it is set, this property can’t be updated.|
|title|String|Required. Title of the plan.|
|createdBy|[identitySet](identityset.md)|Read-only. The user who created the plan.|
|contexts|[plannerPlanContextCollection](plannerplancontextcollection.md)| Read-only. Additional user experiences in which this plan is used, represented as [plannerPlanContext](plannerplancontext.md) entries.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable. Collection of buckets in the plan.|
|details|[plannerPlanDetails](plannerplandetails.md)| Read-only. Nullable. Additional details about the plan.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Collection of tasks in the plan.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.plannerPlan"
}-->

```json
{
  "contexts": {
    "48#19%3Ad128c63941b24733951ea7defd81e550%40thread%2Eskype19%3Ad128c63941b24733951ea7defd81e550%40thread%2Eskype": {
        "@odata.type": "#microsoft.graph.plannerPlanContext",
        "associationType": "Board",
        "createdDateTime": "2015-10-14T00:57:28.4698344Z",
        "displayNameSegments": [
            "Finance Team",
            "Budget Plans"
        ],
        "ownerAppId": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346"
    }
  },
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "owner": "String",
  "title": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


