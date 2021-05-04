---
title: "todo resource type"
description: "Represents the To Do services available to a user."
author: "avijityadav"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# todo resource type

Namespace: microsoft.graph

Represents the To Do services available to a user.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lists](../api/todo-list-lists.md) | [todoTaskList](todotasklist.md) collection | Get all the task lists in the user's mailbox. |
|[Create todoTaskList](../api/todo-post-lists.md) | [todoTaskList](todotasklist.md) | Create a To Do task list in the user's mailbox. |

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lists|[todoTaskList](../resources/todotasklist.md) collection| The task lists in the users mailbox. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.todo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.todo",
  "id": "String"
}
```



