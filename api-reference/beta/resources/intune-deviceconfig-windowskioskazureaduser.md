---
title: "windowsKioskAzureADUser resource type"
description: "The class used to identify an AzureAD user account for the kiosk configuration"
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# windowsKioskAzureADUser resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The class used to identify an AzureAD user account for the kiosk configuration


Inherits from [windowsKioskUser](../resources/intune-deviceconfig-windowskioskuser.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|The ID of the AzureAD user that will be locked to this kiosk configuration|
|userPrincipalName|String|The user accounts that will be locked to this kiosk configuration|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskAzureADUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskAzureADUser",
  "userId": "String",
  "userPrincipalName": "String"
}
```



