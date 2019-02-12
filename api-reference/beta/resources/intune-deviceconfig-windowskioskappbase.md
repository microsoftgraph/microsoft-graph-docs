---
title: "windowsKioskAppBase resource type"
description: "The base class for a type of apps"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsKioskAppBase resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The base class for a type of apps

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startLayoutTileSize|[windowsAppStartLayoutTileSize](../resources/intune-deviceconfig-windowsappstartlayouttilesize.md)|The app tile size for the start layout. Possible values are: `hidden`, `small`, `medium`, `wide`, `large`.|
|name|String|Represents the friendly name of an app|
|appType|[windowsKioskAppType](../resources/intune-deviceconfig-windowskioskapptype.md)|The app type. Possible values are: `unknown`, `store`, `desktop`, `aumId`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskAppBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskAppBase",
  "startLayoutTileSize": "String",
  "name": "String",
  "appType": "String"
}
```




