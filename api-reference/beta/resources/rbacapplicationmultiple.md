---
title: "rbacApplicationMultiple resource type"
description: "Role management navigation property"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# rbacApplicationMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers that support multiple principals and multiple scopes in a single role assignment. This is different from [rbacApplication](rbacapplication.md) resource type. Microsoft Intune is an example of such a RBAC provider. A role assignment in Intune can have an array of principals and an array of scope groups.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-post.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Create a new unifiedRoleAssignmentMultiple by posting to the roleAssignments collection. |
| [List roleAssignmentsMultiple](../api/unifiedroleassignmentmultiple-list.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) collection | Get unifiedRoleAssignmentMultiple object collection. |
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
  "description": "rbacApplicationMultiple resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


