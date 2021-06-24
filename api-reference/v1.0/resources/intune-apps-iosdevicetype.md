---
title: "iosDeviceType resource type"
description: "Contains properties of the possible iOS device types the mobile app can run on."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosDeviceType resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties of the possible iOS device types the mobile app can run on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|iPad|Boolean|Whether the app should run on iPads.|
|iPhoneAndIPod|Boolean|Whether the app should run on iPhones and iPods.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosDeviceType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosDeviceType",
  "iPad": true,
  "iPhoneAndIPod": true
}
```




