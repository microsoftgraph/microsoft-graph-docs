---
title: "todoTaskList resource type"
description: "A list that contains To Do tasks (collection of todoTasks objects)."
author: "avijityadav"
localization_priority: Normal
ms.prod: "To Do"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list that contains To Do tasks (collection of [todoTasks](./todotask.md) objects). 

In To Do, There are some default Task lists created My Day, Important, Planned, Assigned to You, Flagged emails and Tasks.  You cannot rename or delete these task lists but you can create additional task lists.

This resource supports
* Adding your data to custom properties as [extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List todoTaskLists](../api/todotasklist-list.md)|[todoTaskList](../resources/todotasklist.md) collection|Get a list of the [todoTaskList](../resources/todotasklist.md) objects and their properties.|
|[Create todoTaskList](../api/todotasklist-post-lists.md)|[todoTaskList](../resources/todotasklist.md)|Create a new [todoTaskList](../resources/todotasklist.md) object.|
|[Get todoTaskList](../api/todotasklist-get.md)|[todoTaskList](../resources/todotasklist.md)|Read the properties and relationships of a [todoTaskList](../resources/todotasklist.md) object.|
|[Update todoTaskList](../api/todotasklist-update.md)|[todoTaskList](../resources/todotasklist.md)|Update the properties of a [todoTaskList](../resources/todotasklist.md) object.|
|[Delete todoTaskList](../api/todotasklist-delete.md)|None|Deletes a [todoTaskList](../resources/todotasklist.md) object.|
|[List tasks](../api/todotasklist-list-tasks.md)|[todoTask](../resources/todotask.md) collection|Get the todoTasks from the tasks navigation property.|
|[Create tasks](../api/todotasklist-post-tasks.md)|[todoTask](../resources/todotask.md)|Create a new tasks object.|
|[Get tasks](../api/todotasklist-get-todotask.md)|[todoTask](../resources/todotask.md)|Read the properties and relationships of a [todoTask](../resources/todotask.md) object.|
|[Update tasks](../api/todotasklist-update-tasks.md)|[todoTask](../resources/todotask.md)|Update the properties of a tasks object.|
|[Delete tasks](../api/todotasklist-delete-tasks.md)|None|Delete a [todoTask](../resources/todotask.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|isOwner|Boolean|**TODO: Add Description**|
|isShared|Boolean|**TODO: Add Description**|
|wellknownListName|wellknownListName|**TODO: Add Description**. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[todoTask](../resources/todotask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.todoTaskList",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.todoTaskList",
  "id": "String (identifier)",
  "displayName": "String",
  "isOwner": "Boolean",
  "isShared": "Boolean",
  "wellknownListName": "String"
}
```

