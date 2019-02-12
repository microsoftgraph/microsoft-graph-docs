---
title: "macOSLobChildApp resource type"
description: "Contains properties the MacOS LOB App in a bundle package"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# macOSLobChildApp resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties the MacOS LOB App in a bundle package

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleId|String|The Identity Name.|
|buildNumber|String|The build number of MacOS Line of Business (LoB) app.|
|versionNumber|String|The version number of MacOS Line of Business (LoB) app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSLobChildApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSLobChildApp",
  "bundleId": "String",
  "buildNumber": "String",
  "versionNumber": "String"
}
```




