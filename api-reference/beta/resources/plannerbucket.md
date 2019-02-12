---
title: "plannerBucket resource type"
description: ") for tasks in a plan in Office 365. It is contained in a plannerPlan and can have a collection of plannerTasks."
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
---

# plannerBucket resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerBucket** resource represents a bucket (or "custom column") for tasks in a plan in Office 365. It is contained in a [plannerPlan](plannerplan.md) and can have a collection of [plannerTasks](plannertask.md).



## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerBucket](../api/plannerbucket-get.md) | [plannerBucket](plannerbucket.md) |Read properties and relationships of **plannerBucket** object.|
|[List plannerTasks](../api/plannerbucket-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|
|[Create](../api/planner-post-buckets.md) | [plannerBucket](plannerbucket.md)	| Create a new **plannerBucket** object. |
|[Update](../api/plannerbucket-update.md) | [plannerBucket](plannerbucket.md)	|Update **plannerBucket** object. |
|[Delete](../api/plannerbucket-delete.md) | None |Delete **plannerBucket** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. ID of the bucket. It is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|name|String|Name of the bucket.|
|orderHint|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](planner-order-hint-format.md).|
|planId|String|Plan ID to which the bucket belongs.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. The collection of tasks in the bucket.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerBucket"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "orderHint": "String",
  "planId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerBucket resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/plannerbucket.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
