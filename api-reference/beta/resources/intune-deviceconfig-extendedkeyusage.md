---
title: "extendedKeyUsage resource type"
description: "Custom Extended Key Usage definition"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# extendedKeyUsage resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Custom Extended Key Usage definition

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Extended Key Usage Name|
|objectIdentifier|String|Extended Key Usage Object Identifier|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extendedKeyUsage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extendedKeyUsage",
  "name": "String",
  "objectIdentifier": "String"
}
```




