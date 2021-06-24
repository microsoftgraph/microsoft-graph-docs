---
title: "unifiedRoleManagementPolicyExpirationRule resource type"
description: "A unifiedRoleManagementPolicyExpirationRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyExpirationRule resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyExpirationRule specifies the enablement rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|
|isExpirationRequired|Boolean|Indicates if expiration is required for eligibility or assignment.|
|maximumDuration|Duration|The maximum duration allowed for eligiblity or assignment which is not permanent.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|The target for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "isExpirationRequired": "Boolean",
  "maximumDuration": "String (duration)"
}
```

