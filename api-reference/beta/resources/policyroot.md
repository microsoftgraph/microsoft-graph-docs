---
title: "policyRoot resource type"
description: "A new navigation properties binding for unifiedRoleManagementPolicy and unifiedRoleManagementPolicyAssignment to policyRoot."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

A new navigation properties binding for unifiedRoleManagementPolicy and unifiedRoleManagementPolicyAssignment to policyRoot.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List roleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|Get the unifiedRoleManagementPolicy resources from the roleManagementPolicies navigation property.|
|[List roleManagementPolicyAssignments](../api/policyroot-list-rolemanagementpolicyassignments.md)|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|Get the unifiedRoleManagementPolicyAssignment resources from the roleManagementPolicyAssignments navigation property.|

<!--
## Properties
|Property|Type|Description|
|:---|:---|:---|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleManagementPolicies|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|Represents the role management policies.|
|roleManagementPolicyAssignments|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|Represents the role management policy assignments.|
-->

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot"
}
```

