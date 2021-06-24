---
title: "unifiedRoleManagementPolicyAuthenticationContextRule resource type"
description: "A unifiedRoleManagementPolicyAuthenticationContextRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyAuthenticationContextRule resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyAuthenticationContextRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|claimValue|String|Value of the authentication context claim.|
|id|String|Unique identifier for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|
|isEnabled|Boolean|Indicates if the setting is enabled.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|The target for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "isEnabled": "Boolean",
  "claimValue": "String"
}
```

