---
title: "rbacApplication resource type"
description: "Role management navigation property"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# rbacApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers. Currently directory and entitlement management are the only RBAC applications supported.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignments collection. |
| [List roleAssignments](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get a unifiedRoleAssignment object collection. Only specific instances can be queried, by filtering on roleDefitionId or principalId. |
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new unifiedRoleDefinition by posting to the roleDefinitions collection. |
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |

## Properties

None

## Relationships

None

## JSON representation

None

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rbacApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


