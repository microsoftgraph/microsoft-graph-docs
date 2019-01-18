---
title: "windowsKioskMultipleApps resource type"
description: "The class used to identify the MultiMode app configuration for the kiosk configuration"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# windowsKioskMultipleApps resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The class used to identify the MultiMode app configuration for the kiosk configuration

Inherits from [windowsKioskAppConfiguration](../resources/intune-deviceconfig-windowskioskappconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|apps|[windowsKioskAppBase](../resources/intune-deviceconfig-windowskioskappbase.md) collection|These are the only Windows Store Apps that will be available to launch from the Start menu.|
|showTaskBar|Boolean|This setting allows the admin to specify whether the Task Bar is shown or not.|
|disallowDesktopApps|Boolean|This setting indicates that desktop apps are allowed. Default to true.|
|startMenuLayoutXml|Binary|Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskMultipleApps"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskMultipleApps",
  "apps": [
    {
      "@odata.type": "microsoft.graph.windowsKioskUWPApp",
      "startLayoutTileSize": "String",
      "name": "String",
      "appUserModelId": "String",
      "appId": "String",
      "containedAppId": "String"
    }
  ],
  "showTaskBar": true,
  "disallowDesktopApps": true,
  "startMenuLayoutXml": "binary"
}
```





