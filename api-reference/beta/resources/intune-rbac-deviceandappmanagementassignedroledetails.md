---
title: "deviceAndAppManagementAssignedRoleDetails resource type"
description: "The set of Role Definitions and Role Assignments assigned to a user."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAndAppManagementAssignedRoleDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The set of Role Definitions and Role Assignments assigned to a user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitionIds|String collection|Role Definition IDs for the specifc Role Definitions assigned to a user.|
|roleAssignmentIds|String collection|Role Assignment IDs for the specifc Role Assignments assigned to a user.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignedRoleDetails",
  "roleDefinitionIds": [
    "String"
  ],
  "roleAssignmentIds": [
    "String"
  ]
}
```




