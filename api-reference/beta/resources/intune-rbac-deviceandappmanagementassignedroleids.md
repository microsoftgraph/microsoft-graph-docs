---
title: "deviceAndAppManagementAssignedRoleIds resource type"
description: "Not yet documented"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# deviceAndAppManagementAssignedRoleIds resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitionIds|Guid collection|Role Definition IDs for the specifc Role Definitions assigned to a user.|
|roleAssignmentIds|Guid collection|Role Assignment IDs for the specifc Role Assignments assigned to a user.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleIds"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignedRoleIds",
  "roleDefinitionIds": [
    "Guid"
  ],
  "roleAssignmentIds": [
    "Guid"
  ]
}
```





