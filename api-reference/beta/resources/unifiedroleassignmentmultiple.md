---
title: "unifiedRoleAssignmentMultiple resource type"
description: "A role definition assigned to an array of principals (typically a user) over an array of scope."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# unifiedRoleAssignmentMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unifiedRoleAssignmentMultiple is used to grant access to resources, as part of Microsoft 365 RBAC [role management](rolemanagement.md). It represents a role definition assigned to an array of principals (typically a user) over an array of scopes. 

You can create a role assignment with multiple principals and multiple scopes.

You must provide either **directoryScopeIds** or **appScopeIds**.

The following RBAC providers are currently supported:
- cloud PC 
- Microsoft Intune

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List roleAssignments](../api/rbacapplicationmultiple-list-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) collection | Read a list of unifiedRoleAssignmentMultiple objects and their properties. |
| [Create unifiedRoleAssignmentMultiple](../api/rbacapplicationmultiple-post-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Create a new unifiedRoleAssignmentMultiple by posting to the roleAssignment collection. |
| [Get unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-get.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Read properties and relationships of unifiedRoleAssignmentMultiple object. |
| [Update unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-update.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Update an existing unifiedRoleAssignmentMultiple object. |
| [Delete unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-delete.md) | None | Delete unifiedRoleAssignmentMultiple object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| appScopeIds | String collection | Ids of the app specific scopes when the assignment scopes are app specific. The scopes of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. App scopes are scopes that are defined and understood by this application only. |
| description | String | Description of the role assignment. |
| directoryScopeIds | String collection | Ids of the directory objects representing the scopes of the assignment. The scopes of an assignment determine the set of resources for which the principals have been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only. |
| displayName | String | Name of the role assignment. Required. |
| id | String | The unique identifier for the unifiedRoleAssignmentMultiple. Key, not nullable, Read-only. |
| roleDefinitionId | String | Identifier of the unifiedRoleDefinition the assignment is for. |
| principalIds | String collection | Identifiers of the principals to which the assignment is granted.  Supports `$filter` (`any` operator only). |


## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| appScopes | [appScope](appscope.md) collection |Read-only collection with details of the app specific scopes when the assignment scopes are app specific. Containment entity. Read-only.  |
| directoryScopes | [directoryObject](directoryobject.md) collection | Read-only collection referencing the directory objects that are scope of the assignment. Provided so that callers can get the directory objects using `$expand` at the same time as getting the role assignment. Read-only.  Supports `$expand`.|
| principals| [directoryObject](directoryobject.md) collection | Read-only collection referencing the assigned principals. Provided so that callers can get the principals using `$expand` at the same time as getting the role assignment. Read-only.  Supports `$expand`.|
| roleDefinition | [unifiedRoleDefinition](unifiedroledefinition.md) |Specifies the roleDefinition that the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the role assignment.  Supports `$filter` (`eq` operator on **id**, **isBuiltIn**, and **displayName**, and `startsWith` operator on **displayName**)  and `$expand`. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentMultiple",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "roleDefinitionId": "String",
  "roleDefinition": {"@odata.type": "microsoft.graph.unifiedRoleDefinition"},
  "principalIds": ["string"],
  "principals": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "directoryScopeIds": ["string"],
  "directoryScopes": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "appScopeIds": ["string"],
  "appScopes": [{"@odata.type": "microsoft.graph.appScope"}],
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleAssignmentMultiple resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


