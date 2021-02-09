---
title: "deviceManagementUserRightsLocalUserOrGroup resource type"
description: "Represents information for a local user or group used for user rights setting."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementUserRightsLocalUserOrGroup resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




