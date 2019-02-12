---
title: "vppLicensingType resource type"
description: "Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vppLicensingType resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|supportUserLicensing|Boolean|Whether the program supports the user licensing type.|
|supportDeviceLicensing|Boolean|Whether the program supports the device licensing type.|
|supportsUserLicensing|Boolean|Whether the program supports the user licensing type.|
|supportsDeviceLicensing|Boolean|Whether the program supports the device licensing type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vppLicensingType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppLicensingType",
  "supportUserLicensing": true,
  "supportDeviceLicensing": true,
  "supportsUserLicensing": true,
  "supportsDeviceLicensing": true
}
```




