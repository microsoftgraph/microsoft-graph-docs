---
title: "managedDeviceReportedApp resource type"
description: "Application data for reporting"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# managedDeviceReportedApp resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Application data for reporting

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application or bundle identifier of the application|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceReportedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceReportedApp",
  "appId": "String"
}
```




