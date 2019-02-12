---
title: "deviceManagementTroubleshootingErrorResource resource type"
description: "Object representing a link to troubleshooting information, the link could be to the Azure Portal or a Microsoft doc."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# deviceManagementTroubleshootingErrorResource resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Object representing a link to troubleshooting information, the link could be to the Azure Portal or a Microsoft doc.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|text|String|Not yet documented|
|link|String|The link to the web resource. Can contain any of the following formatters: {{UPN}}, {{DeviceGUID}}, {{UserGUID}}|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementTroubleshootingErrorResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementTroubleshootingErrorResource",
  "text": "String",
  "link": "String"
}
```




