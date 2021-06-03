---
title: "unifiedRoleManagementPolicyRuleTarget resource type"
description: "A unifiedRoleManagementPolicyRuleTarget specifies the target associated with the role management policy."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyRuleTarget resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicyRuleTarget specifies the target associated with the role management policy.
<!--
## Properties
|Property|Type|Description|
|:---|:---|:---|
|caller|String|The caller for the policy rule target. One of None, Admin, EndUser.	|
|enforcedSettings|String collection|The list of settings which are enforced and cannot be overridden by child scopes. Use All for all settings.|
|inheritableSettings|String collection|The list of settings which can be inherited by child scopes. Use All for all settings.|
|level|String|The level for the policy rule target. One of Eligibility, Assignment.	|
|operations|String collection|The operations for policy rule target. One of All, Activate, Deactivate, Assign, Update, Remove, Extend, Renew.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|targetObjects|[directoryObject](../resources/directoryobject.md) collection|The collection of users, groups and servicePrincipals which are in scope of the policy. If not specified, all objects are in scope of the policy.|
-->
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
  "caller": "String",
  "operations": [
    "String"
  ],
  "level": "String",
  "inheritableSettings": [
    "String"
  ],
  "enforcedSettings": [
    "String"
  ]
}
```

