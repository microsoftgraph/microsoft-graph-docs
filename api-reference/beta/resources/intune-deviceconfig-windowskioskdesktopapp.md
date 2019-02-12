---
title: "windowsKioskDesktopApp resource type"
description: "The base class for a type of apps"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsKioskDesktopApp resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The base class for a type of apps


Inherits from [windowsKioskAppBase](../resources/intune-deviceconfig-windowskioskappbase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startLayoutTileSize|[windowsAppStartLayoutTileSize](../resources/intune-deviceconfig-windowsappstartlayouttilesize.md)|The app tile size for the start layout Inherited from [windowsKioskAppBase](../resources/intune-deviceconfig-windowskioskappbase.md). Possible values are: `hidden`, `small`, `medium`, `wide`, `large`.|
|name|String|Represents the friendly name of an app Inherited from [windowsKioskAppBase](../resources/intune-deviceconfig-windowskioskappbase.md)|
|appType|[windowsKioskAppType](../resources/intune-deviceconfig-windowskioskapptype.md)|The app type Inherited from [windowsKioskAppBase](../resources/intune-deviceconfig-windowskioskappbase.md). Possible values are: `unknown`, `store`, `desktop`, `aumId`.|
|path|String|Define the path of a desktop app|
|desktopApplicationId|String|Define the DesktopApplicationID of the app|
|desktopApplicationLinkPath|String|Define the DesktopApplicationLinkPath of the app|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskDesktopApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskDesktopApp",
  "startLayoutTileSize": "String",
  "name": "String",
  "appType": "String",
  "path": "String",
  "desktopApplicationId": "String",
  "desktopApplicationLinkPath": "String"
}
```




