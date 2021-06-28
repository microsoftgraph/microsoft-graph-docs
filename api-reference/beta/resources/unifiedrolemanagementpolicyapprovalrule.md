---
title: "unifiedRoleManagementPolicyApprovalRule resource type"
description: "A unifiedRoleManagementPolicyApprovalRule specifies the approval rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyApprovalRule resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyApprovalRule specifies the approval rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|
|setting|[approvalSettings](../resources/approvalsettings.md)|The approval setting for the rule.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|The target for the rule rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "setting": {
    "@odata.type": "microsoft.graph.approvalSettings"
  }
}
```

