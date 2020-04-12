---
title: "deviceEnrollmentPlatformRestriction resource type"
description: "Platform specific enrollment restrictions"
author: "davidmu1"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceEnrollmentPlatformRestriction resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Platform specific enrollment restrictions

## Properties
|Property|Type|Description|
|:---|:---|:---|
|platformBlocked|Boolean|Block the platform from enrolling|
|personalDeviceEnrollmentBlocked|Boolean|Block personally owned devices from enrolling|
|osMinimumVersion|String|Min OS version supported|
|osMaximumVersion|String|Max OS version supported|
|blockedManufacturers|String collection|Collection of blocked Manufacturers.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestriction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentPlatformRestriction",
  "platformBlocked": true,
  "personalDeviceEnrollmentBlocked": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "blockedManufacturers": [
    "String"
  ]
}
```



