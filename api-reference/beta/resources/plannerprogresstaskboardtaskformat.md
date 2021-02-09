---
title: "plannerProgressTaskBoardTaskFormat resource type"
description: "The **plannerProgressTaskBoardTaskFormat** resource represents the information used to render a task correctly in the Progress view of the Task Board (a view organized by the state of the PercentComplete field on the task object, with columns for Not Started, In Progress and Complete). Each task will have one **plannerProgressTaskBoardTaskFormat** object associated with it."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerProgressTaskBoardTaskFormat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerProgressTaskBoardTaskFormat** resource represents the information used to render a task correctly in the Progress view of the Task Board (a view organized by the state of the PercentComplete field on the task object, with columns for Not Started, In Progress and Complete). Each [task](plannertask.md) will have one **plannerProgressTaskBoardTaskFormat** object associated with it.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerProgressTaskBoardTaskFormat](../api/plannerprogresstaskboardtaskformat-get.md) | [plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md) |Read properties and relationships of **plannerProgressTaskBoardTaskFormat** object.|
|[Update](../api/plannerprogresstaskboardtaskformat-update.md) | [plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)	|Update **plannerProgressTaskBoardTaskFormat** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. ID of the resource. It is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|orderHint|String|Hint value used to order the task on the Progress view of the Task Board. The format is defined as outlined [here](planner-order-hint-format.md).|

## Relationships
None


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerProgressTaskBoardTaskFormat"
}-->

```json
{
  "id": "String (identifier)",
  "orderHint": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerProgressTaskBoardTaskFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


