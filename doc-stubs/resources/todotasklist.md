---
title: "todoTaskList resource type"
description: "A list that contains To Do tasks (collection of todoTasks objects)."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list that contains To Do tasks (collection of [todoTasks](./todotask.md) objects). 

In To Do, There are some default Task lists like Flagged emails and Tasks.  You cannot rename or delete these task lists but you can create additional task lists.

This resource supports
* Adding your data to custom properties as [extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List todoTaskLists](../api/todoTaskList-list.md)|[todoTaskList](../resources/todoTaskList.md) collection|Get all the [todoTaskLists](../resources/todoTaskList.md) in the users mailbox.|
|[Create todoTaskList](../api/todoTaskList-post-lists.md)|[todoTaskList](../resources/todoTaskList.md)|Create a new [todoTaskList](../resources/todoTaskList.md) object.|
|[Get todoTaskList](../api/todoTaskList-get.md)|[todoTaskList](../resources/todoTaskList.md)|Read the properties and relationships of the specified [todoTaskList](../resources/todoTaskList.md).|
|[Update todoTaskList](../api/todoTaskList-update.md)|[todoTaskList](../resources/todoTaskList.md)| Update the writable properties of the specified [todoTaskList](../resources/todoTaskList.md).|
|[Delete todoTaskList](../api/todoTaskList-delete.md)|None| Delete the specified [todoTaskList](../resources/todoTaskList.md) .|
|[List tasks](../api/todoTaskList-list-tasks.md)|[todoTask](../resources/task.md) collection|Get all the To Do tasks in the specified [todoTaskList](../resources/todoTaskList.md)|
|[Create task](../api/todoTaskList-post-tasks.md)|[todoTask](../resources/task.md)| Create an Outlook To Do in the specified [todoTaskList](../resources/todoTaskList.md)|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list.|
|id|String| The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [entity](../resources/entity.md)|
|isOwner|Boolean| True if the user is owner of the given task list.|
|isShared|Boolean| True if the task list is shared with other users|
|wellknownListName|wellknownListName| Property indicating the well known list name if the given list is a well know list. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[task](../resources/task.md) collection|The tasks in this task list. Read-only. Nullable.|

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