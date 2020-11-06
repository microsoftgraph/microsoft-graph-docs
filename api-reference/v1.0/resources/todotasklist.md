---
title: "todoTaskList resource type"
description: "A list in Microsoft To Do that contains one or more todoTask resources."
author: "avijityadav"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

A list in Microsoft To Do that contains one or more [todoTask](./todotask.md) resources. 

In To Do, there are built-in task lists such as **Flagged emails** and **Tasks** which cannot be renamed or deleted.  You can, however, create additional task lists.

This resource supports
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lists](../api/todo-list-lists.md) | [todoTaskList](todotasklist.md) collection | Get all the [todoTaskList](todotasklist.md) in the user's mailbox. |
|[Create todoTaskList](../api/todo-post-lists.md) | [todoTaskList](todotasklist.md) | Create a [todoTaskList](todotasklist.md) in the user's mailbox. |
|[Get task list](../api/todotasklist-get.md)|[todoTaskList](todotasklist.md)|Read the properties and relationships of the specified [todoTaskList](todotasklist.md).|
|[Update task list](../api/todotasklist-update.md)|[todoTaskList](todotasklist.md)| Update the writable properties of the specified [todoTaskList](todotasklist.md).|
|[Delete task list](../api/todotasklist-delete.md)|None| Delete the specified [todoTaskList](todotasklist.md) .|
|[List tasks](../api/todotasklist-list-tasks.md)|[todoTask](todotask.md) collection|Get all the [todoTask](todotask.md) resources in the specified list.|
|[Create task](../api/todotasklist-post-tasks.md)|[todoTask](todotask.md)| Create a [todoTask](todotask.md) in the specified task list.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list.|
|id|String| The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [entity](entity.md)|
|isOwner|Boolean| True if the user is owner of the given task list.|
|isShared|Boolean| True if the task list is shared with other users|
|wellknownListName|wellknownListName| Property indicating the list name if the given list is a well-known list. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

### wellknownListName values
|Member|Description|
|:---|:---|
|none| User created list.|
|defaultList| Built-in **Tasks** list.|
|flaggedEmails| Built-in **Flagged email** list. Tasks from flagged emails are present in this list.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the task list. Nullable.|
|tasks|[todoTask](todotask.md) collection|The tasks in this task list. Read-only. Nullable.|

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



