---
title: "deviceManagementTroubleshootingErrorResource resource type"
description: "Object representing a link to troubleshooting information, the link could be to the Azure Portal or a Microsoft doc."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementTroubleshootingErrorResource resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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




