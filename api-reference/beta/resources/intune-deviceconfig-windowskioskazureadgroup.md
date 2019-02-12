---
title: "windowsKioskAzureADGroup resource type"
description: "The class used to identify an AzureAD group for the kiosk configuration"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsKioskAzureADGroup resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The class used to identify an AzureAD group for the kiosk configuration


Inherits from [windowsKioskUser](../resources/intune-deviceconfig-windowskioskuser.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the AzureAD group that will be locked to this kiosk configuration|
|groupId|String|The ID of the AzureAD group that will be locked to this kiosk configuration|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskAzureADGroup"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskAzureADGroup",
  "displayName": "String",
  "groupId": "String"
}
```




