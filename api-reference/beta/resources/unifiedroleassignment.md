---
title: "unifiedRoleAssignment resource type"
description: "A role assignment is the link between a role definition and a principal at a particular scope for the purpose of granting access."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# unifiedRoleAssignment resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unifiedRoleAssignment is used to grant access to resources. It represents a role definition assigned to a principal (typically a user) at a particular scope.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get unifiedRoleAssignment](../api/unifiedroleassignment-get.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Read properties and relationships of unifiedRoleAssignment object. |
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignment collection. |
| [Delete](../api/unifiedroleassignment-delete.md) | None | Delete unifiedRoleAssignment object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The unique identifier for the unifiedRoleAssignment. Key, not nullable, Read-only. |
|principalId|String| Objectid of the principal to which the assignment is granted. |
|resourceScope|String| The scope at which the unifiedRoleAssignment applies. This is "/" for service-wide. |
|roleDefinitionId|String| The unifiedRoleDefinition the assignment is for. Read only. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "principalId": "String",
  "resourceScope": "String",
  "roleDefinitionId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
