---
title: "iosMinimumOperatingSystem resource type"
description: "Contains properties of the minimum operating system required for an iOS mobile app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosMinimumOperatingSystem resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties of the minimum operating system required for an iOS mobile app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Version 8.0 or later.|
|v9_0|Boolean|Version 9.0 or later.|
|v10_0|Boolean|Version 10.0 or later.|
|v11_0|Boolean|Version 11.0 or later.|
|v12_0|Boolean|Version 12.0 or later.|
|v13_0|Boolean|Version 13.0 or later.|
|v14_0|Boolean|Version 14.0 or later.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosMinimumOperatingSystem",
  "v8_0": true,
  "v9_0": true,
  "v10_0": true,
  "v11_0": true,
  "v12_0": true,
  "v13_0": true,
  "v14_0": true
}
```




