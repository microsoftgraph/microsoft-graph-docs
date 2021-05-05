---
title: "privilegedRole resource type"
description: "Represents an Azure AD administrator role, such as: **Global Administrator, Billing Administrator, Service Administrator, User Administrator, Password Administrator**, etc."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# privilegedRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD administrator role, such as: **Global Administrator, Billing Administrator, Service Administrator, User Administrator, Password Administrator**, etc.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List privilegedRole objects](../api/privilegedrole-list.md) | [privilegedRole](privilegedrole.md) collection|Get the collection of privilegedRole.|
|[Get privilegedRole](../api/privilegedrole-get.md) | [privilegedRole](privilegedrole.md) |Read properties and relationships of privilegedRole object.|
|[List assignments](../api/privilegedrole-list-assignments.md) |[privilegedRoleAssignment](privilegedroleassignment.md) collection| Get a assignment object collection for this role.|
|[selfActivate](../api/privilegedrole-selfactivate.md)|[privilegedRoleAssignment](privilegedroleassignment.md)|Activate the assigned role.|
|[selfDeactivate](../api/privilegedrole-selfdeactivate.md)|[privilegedRoleAssignment](privilegedroleassignment.md)|Deactivate the assigned role.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The unique identifier for administrator role. It is a GUID string and has the same value as the role template id from Azure AD for the given role. Read-only.|
|name|string|Role name.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignments|[privilegedRoleAssignment](privilegedroleassignment.md) collection| The assignments for this role. Read-only. Nullable.|
|settings|[privilegedRoleSettings](privilegedrolesettings.md)| The settings for this role. Read-only. Nullable.|
|summary|[privilegedRoleSummary](privilegedrolesummary.md)| The summary information for this role. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.privilegedRole"
}-->

```json
{
  "id": "string (identifier)",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


