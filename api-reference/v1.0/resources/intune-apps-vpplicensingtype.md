---
title: "vppLicensingType resource type"
description: "Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# vppLicensingType resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
  "supportsUserLicensing": true,
  "supportsDeviceLicensing": true
}
```




