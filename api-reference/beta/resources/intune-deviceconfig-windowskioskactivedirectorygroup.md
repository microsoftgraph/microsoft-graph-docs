---
title: "windowsKioskActiveDirectoryGroup resource type"
description: "The class used to identify an Azure Directory group for the kiosk configuration"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsKioskActiveDirectoryGroup resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The class used to identify an Azure Directory group for the kiosk configuration


Inherits from [windowsKioskUser](../resources/intune-deviceconfig-windowskioskuser.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupName|String|The name of the AD group that will be locked to this kiosk configuration|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskActiveDirectoryGroup"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskActiveDirectoryGroup",
  "groupName": "String"
}
```




