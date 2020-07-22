---
title: "todo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# todo resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List todo](../api/user-list-todo.md)|[todo](../resources/todo.md) collection|Get the todoes from the todo navigation property.|
|[Create todo](../api/user-post-todo.md)|[todo](../resources/todo.md)|Create a new todo object.|
|[Update todo](../api/user-update-todo.md)|[todo](../resources/todo.md)|Update the properties of a todo object.|
|[Get todo](../api/user-get-todo.md)|[todo](../resources/todo.md)|Read the properties and relationships of a [todo](../resources/todo.md) object.|
|[Delete todo](../api/user-delete-todo.md)|None|Delete a [todo](../resources/todo.md) object.|
|[List todoes](../api/todo-list.md)|[todo](../resources/todo.md) collection|Get a list of the [todo](../resources/todo.md) objects and their properties.|
|[Create todo](../api/todo-create.md)|[todo](../resources/todo.md)|Create a new [todo](../resources/todo.md) object.|
|[Get todo](../api/todo-get.md)|[todo](../resources/todo.md)|Read the properties and relationships of a [todo](../resources/todo.md) object.|
|[Update todo](../api/todo-update.md)|[todo](../resources/todo.md)|Update the properties of a [todo](../resources/todo.md) object.|
|[Delete todo](../api/todo-delete.md)|None|Deletes a [todo](../resources/todo.md) object.|
|[List lists](../api/todo-list-lists.md)|[todoTaskList](../resources/todotasklist.md) collection|Get the todoTaskLists from the lists navigation property.|
|[Create lists](../api/todo-post-lists.md)|[todoTaskList](../resources/todotasklist.md)|Create a new lists object.|
|[Get lists](../api/todo-get-todotasklist.md)|[todoTaskList](../resources/todotasklist.md)|Read the properties and relationships of a [todoTaskList](../resources/todotasklist.md) object.|
|[Update lists](../api/todo-update-lists.md)|[todoTaskList](../resources/todotasklist.md)|Update the properties of a lists object.|
|[Delete lists](../api/todo-delete-lists.md)|None|Delete a [todoTaskList](../resources/todotasklist.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lists|[todoTaskList](../resources/todotasklist.md) collection|**TODO: Add Description**|

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
  "id": "String (identifier)"
}
```

