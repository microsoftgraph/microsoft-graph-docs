---
title: "sharedAppleDeviceUser resource type"
description: "Not yet documented"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# sharedAppleDeviceUser resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userPrincipalName|String|User name|
|dataToSync|Boolean|Data to sync|
|dataQuota|Int64|Data quota|
|dataUsed|Int64|Data quota|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharedAppleDeviceUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharedAppleDeviceUser",
  "userPrincipalName": "String",
  "dataToSync": true,
  "dataQuota": 1024,
  "dataUsed": 1024
}
```




