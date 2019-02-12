---
title: "deviceEnrollmentPlatformRestriction resource type"
description: "Platform specific enrollment restrictions"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# deviceEnrollmentPlatformRestriction resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Platform specific enrollment restrictions

## Properties
|Property|Type|Description|
|:---|:---|:---|
|platformBlocked|Boolean|Block the platform from enrolling|
|personalDeviceEnrollmentBlocked|Boolean|Block personally owned devices from enrolling|
|osMinimumVersion|String|Min OS version supported|
|osMaximumVersion|String|Max OS version supported|

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
  "osMaximumVersion": "String"
}
```




