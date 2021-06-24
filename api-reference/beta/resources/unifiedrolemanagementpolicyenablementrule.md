---
title: "unifiedRoleManagementPolicyEnablementRule resource type"
description: "A unifiedRoleManagementPolicyEnablementRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyEnablementRule resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyEnablementRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enabledRules|String collection|The rules which are enabled. Allowed values are MultifactorAuthentication, Justification, Ticketing.|
|id|String|Unique identifier for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|The target for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "enabledRules": [
    "String"
  ]
}
```

