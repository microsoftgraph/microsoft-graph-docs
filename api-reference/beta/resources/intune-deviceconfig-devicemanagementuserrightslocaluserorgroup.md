---
title: "deviceManagementUserRightsLocalUserOrGroup resource type"
description: "Represents information for a local user or group used for user rights setting."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# deviceManagementUserRightsLocalUserOrGroup resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents information for a local user or group used for user rights setting.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of this local user or group.|
|description|String|Admin’s description of this local user or group.|
|securityIdentifier|String|The security identifier of this local user or group (e.g. *S-1-5-32-544).|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
  "name": "String",
  "description": "String",
  "securityIdentifier": "String"
}
```





