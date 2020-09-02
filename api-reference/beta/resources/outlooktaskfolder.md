---
title: "outlookTaskFolder resource type"
description: "A folder that contains Outlook tasks (collection of outlookTask objects). "
author: "mashriv"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# outlookTaskFolder resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-allup](../../includes/outlooktask-deprecate-allup.md)]


A folder that contains Outlook tasks (collection of [outlookTask](outlooktask.md) objects). 

In Outlook, the default task group, `My Tasks`, contains a default task folder, `Tasks`, for the user's mailbox. 
You cannot rename or delete these default task group and folder, but you can create additional task groups and task folders.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get outlookTaskFolder](../api/outlooktaskfolder-get.md) | [outlookTaskFolder](outlooktaskfolder.md) |Get the properties and relationships of the specified Outlook task folder.|
|[Create outlookTask](../api/outlooktaskfolder-post-tasks.md) |[outlookTask](outlooktask.md)| Create an Outlook task in the specified task folder.|
|[List tasks](../api/outlooktaskfolder-list-tasks.md) |[outlookTask](outlooktask.md) collection| Get all the Outlook tasks in the specified folder.|
|[Update](../api/outlooktaskfolder-update.md) | [outlookTaskFolder](outlooktaskfolder.md)	|Update the writable properties of an Outlook task folder. |
|[Delete](../api/outlooktaskfolder-delete.md) | None |Delete the specified Outlook task folder.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[outlookTaskFolder](outlooktaskfolder.md)  |Create one or more single-value extended properties in a new or existing Outlook task folder.   |
|[Get task folder with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [outlookTaskFolder](outlooktaskfolder.md) | Get Outlook task folders that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [outlookTaskFolder](outlooktaskfolder.md) | Create one or more multi-value extended properties in a new or existing Outlook task folder.  |
|[Get task folder with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [outlookTaskFolder](outlooktaskfolder.md) | Get an Outlook task folder that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|String|The version of the task folder.|
|id|String|The identifier of the task folder, unique in the user's mailbox. Read-only.|
|isDefaultFolder|Boolean|True if the folder is the default task folder.|
|name|String|The name of the task folder.|
|parentGroupKey|Guid|The unique GUID identifier for the task folder's parent group.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection|The collection of multi-value extended properties defined for the task folder. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection|The collection of single-value extended properties defined for the task folder. Read-only. Nullable.|
|tasks|[outlookTask](outlooktask.md) collection|The tasks in this task folder. Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "multiValueExtendedProperties",
    "singleValueExtendedProperties",
    "tasks"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.outlookTaskFolder"
}-->

```json
{
  "changeKey": "String",
  "id": "String (identifier)",
  "isDefaultFolder": true,
  "name": "String",
  "parentGroupKey": "Guid"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "outlookTaskFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
