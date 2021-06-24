---
title: "unifiedRoleManagementPolicyNotificationRule resource type"
description: "A unifiedRoleManagementPolicyNotificationRule specifies the notification rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyNotificationRule resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyNotificationRule specifies the notification rule associated with a role management policy. It is derived from microsoft.graph.unifiedRoleManagementPolicyRule.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|
|notificationLevel|String|The level of notification. One of None, Critical, All.|
|notificationRecipients|String collection|The list of notification recepients like email.|
|notificationType|String|The type of notification. One of Email.|
|recipientType|String|The type of recipient. One of Requestor, Approver, Admin.|
|isDefaultRecipientsEnabled|Boolean|Whether default recipient is receiving the email or not.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|The target for the rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "notificationType": "String",
  "recipientType": "String",
  "notificationLevel": "String",
  "isDefaultRecipientsEnabled": true,
  "notificationRecipients": [
    "String"
  ]
}
```

