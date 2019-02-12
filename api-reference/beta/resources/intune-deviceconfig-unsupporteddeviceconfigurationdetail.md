---
title: "unsupportedDeviceConfigurationDetail resource type"
description: "A description of why an entity is unsupported."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# unsupportedDeviceConfigurationDetail resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A description of why an entity is unsupported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|message|String|A message explaining why an entity is unsupported.|
|propertyName|String|If message is related to a specific property in the original entity, then the name of that property.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unsupportedDeviceConfigurationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unsupportedDeviceConfigurationDetail",
  "message": "String",
  "propertyName": "String"
}
```




