---
title: "auditProperty resource type"
description: "A class containing the properties for Audit Property."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# auditProperty resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties for Audit Property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name.|
|oldValue|String|Old value.|
|newValue|String|New value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditProperty",
  "displayName": "String",
  "oldValue": "String",
  "newValue": "String"
}
```




