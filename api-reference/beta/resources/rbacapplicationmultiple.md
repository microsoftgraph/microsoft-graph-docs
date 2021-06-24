---
title: "rbacApplicationMultiple resource type"
description: "Role management navigation property"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# rbacApplicationMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers that support multiple principals and multiple scopes in a single role assignment. 

This is different from [rbacApplication](rbacapplication.md) resource type. 

Cloud PC and Microsoft Intune are examples of such RBAC providers. A role assignment in these providers can have an array of principals and an array of scope groups.

For role definitions, the cloud PC provider currently supports the [list](../api/rbacapplication-list-roledefinitions.md) operation but not the [create](../api/rbacapplication-post-roledefinitions.md).

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new unifiedRoleDefinition by posting to the roleDefinitions collection. |
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [Create unifiedRoleAssignmentMultiple](../api/rbacapplicationmultiple-post-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Create a new unifiedRoleAssignmentMultiple by posting to the roleAssignments collection. |
| [List roleAssignments](../api/rbacapplicationmultiple-list-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) collection | Get unifiedRoleAssignmentMultiple object collection. |

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


