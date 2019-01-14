---
title: "win32LobAppMsiInformation resource type"
description: "Contains MSI app properties for a Win32 App."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# win32LobAppMsiInformation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains MSI app properties for a Win32 App.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|productCode|String|The MSI product code.|
|productVersion|String|The MSI product version.|
|upgradeCode|String|The MSI upgrade code.|
|requiresReboot|Boolean|Whether the MSI app requires the machine to reboot to complete installation.|
|packageType|[win32LobAppMsiPackageType](../resources/intune-apps-win32lobappmsipackagetype.md)|The MSI package type. Possible values are: `perMachine`, `perUser`, `dualPurpose`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppMsiInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppMsiInformation",
  "productCode": "String",
  "productVersion": "String",
  "upgradeCode": "String",
  "requiresReboot": true,
  "packageType": "String"
}
```





