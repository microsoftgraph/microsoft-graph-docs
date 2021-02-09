---
title: "windowsKioskAppBase resource type"
description: "The base class for a type of apps"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsKioskAppBase resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The base class for a type of apps

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startLayoutTileSize|[windowsAppStartLayoutTileSize](../resources/intune-deviceconfig-windowsappstartlayouttilesize.md)|The app tile size for the start layout. Possible values are: `hidden`, `small`, `medium`, `wide`, `large`.|
|name|String|Represents the friendly name of an app|
|appType|[windowsKioskAppType](../resources/intune-deviceconfig-windowskioskapptype.md)|The app type. Possible values are: `unknown`, `store`, `desktop`, `aumId`.|
|autoLaunch|Boolean|Allow the app to be auto-launched in multi-app kiosk mode|

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
  "appType": "String",
  "autoLaunch": true
}
```




