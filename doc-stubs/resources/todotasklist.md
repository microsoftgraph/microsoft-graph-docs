---
title: "todoTaskList resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List todoTaskLists](../api/todotasklist-list.md)|[todoTaskList](../resources/todotasklist.md) collection|Get a list of the [todoTaskList](../resources/todotasklist.md) objects and their properties.|
|[Create todoTaskList](../api/todotasklist-post-lists.md)|[todoTaskList](../resources/todotasklist.md)|Create a new [todoTaskList](../resources/todotasklist.md) object.|
|[Get todoTaskList](../api/todotasklist-get.md)|[todoTaskList](../resources/todotasklist.md)|Read the properties and relationships of a [todoTaskList](../resources/todotasklist.md) object with the given id.|
|[Update todoTaskList](../api/todotasklist-update.md)|[todoTaskList](../resources/todotasklist.md)|Update the properties of a [todoTaskList](../resources/todotasklist.md) object with the given id.|
|[Delete todoTaskList](../api/todotasklist-delete.md)|None|Deletes a [todoTaskList](../resources/todotasklist.md) object with the given id.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Field indicating title of the task list.|
|id|String|Server generated Id for the task list Inherited from [entity](../resources/entity.md)|
|isOwner|Boolean|True if the given user is owner of the given task list.|
|isShared|Boolean|True if the given task list is shared with other users.|
|wellknownListName|String|Indicates the well known list name if the given list is a well known list. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[todoTask](../resources/todotask.md) collection|The tasks in this task list. Read-only. Nullable.|

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

