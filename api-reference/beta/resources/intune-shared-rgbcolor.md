---
title: "rgbColor resource type"
description: "Color in RGB."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# rgbColor resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Color in RGB.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|r|Byte|Red value|
|g|Byte|Green value|
|b|Byte|Blue value|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.rgbColor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rgbColor",
  "r": 1024,
  "g": 1024,
  "b": 1024
}
```




