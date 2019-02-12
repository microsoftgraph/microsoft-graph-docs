---
title: "windowsInformationProtectionResourceCollection resource type"
description: "Windows Information Protection Resource Collection"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsInformationProtectionResourceCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Information Protection Resource Collection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name|
|resources|String collection|Collection of resources|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionResourceCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionResourceCollection",
  "displayName": "String",
  "resources": [
    "String"
  ]
}
```




