---
title: "windowsKioskSingleWin32App resource type"
description: "The class used to identify the single app configuration for the kiosk win32 configuration"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsKioskSingleWin32App resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The class used to identify the single app configuration for the kiosk win32 configuration


Inherits from [windowsKioskAppConfiguration](../resources/intune-deviceconfig-windowskioskappconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|win32App|[windowsKioskWin32App](../resources/intune-deviceconfig-windowskioskwin32app.md)|This is the win32 app that will be available to launch use while in Kiosk Mode|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskSingleWin32App"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskSingleWin32App",
  "win32App": {
    "@odata.type": "microsoft.graph.windowsKioskWin32App",
    "startLayoutTileSize": "String",
    "name": "String",
    "appType": "String",
    "autoLaunch": true,
    "classicAppPath": "String",
    "edgeNoFirstRun": true,
    "edgeKioskIdleTimeoutMinutes": 1024,
    "edgeKioskType": "String",
    "edgeKiosk": "String"
  }
}
```




