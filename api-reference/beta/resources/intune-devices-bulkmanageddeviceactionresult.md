---
title: "bulkManagedDeviceActionResult resource type"
description: "Not yet documented"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# bulkManagedDeviceActionResult resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|successfulDeviceIds|String collection|Successful devices|
|failedDeviceIds|String collection|Failed devices|
|notFoundDeviceIds|String collection|Not found devices|
|notSupportedDeviceIds|String collection|Not supported devices|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bulkManagedDeviceActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bulkManagedDeviceActionResult",
  "successfulDeviceIds": [
    "String"
  ],
  "failedDeviceIds": [
    "String"
  ],
  "notFoundDeviceIds": [
    "String"
  ],
  "notSupportedDeviceIds": [
    "String"
  ]
}
```




