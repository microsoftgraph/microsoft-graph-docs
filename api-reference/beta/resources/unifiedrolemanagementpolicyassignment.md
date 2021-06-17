---
title: "unifiedRoleManagementPolicyAssignment resource type"
description: "A unifiedRoleManagementPolicyAssignment assigns the policy to a specific scope and role definition."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyAssignment resource type

A unifiedRoleManagementPolicyAssignment assigns the policy to a specific scope and role definition.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementPolicyAssignments](../api/unifiedrolemanagementpolicyassignment-list.md)|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|Get a list of the [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) objects and their properties.|
|[Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md)|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md)|Read the properties and relationships of an [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the policy assignment.|
|policyId|String|The id of the policy.|
|roleDefinitionId|String|The id of the role definition where the policy applies. If not specified, the policy applies to all roles.|
|scopeId|String|The id of the scope where the policy is assigned. E.g. "/", groupId, etc.|
|scopeType|String|The type of the scope where the policy is assigned. One of Directory, DirectoryRole, Group.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|The policy for the assignment.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "id": "String (identifier)",
  "policyId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "roleDefinitionId": "String"
}
```

