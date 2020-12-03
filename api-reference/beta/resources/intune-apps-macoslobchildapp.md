---
title: "macOSLobChildApp resource type"
description: "Contains properties the MacOS LOB App in a bundle package"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSLobChildApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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




