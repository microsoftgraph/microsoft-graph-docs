---
title: "keyValue resource type"
description: "Key Value definition."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# keyValue resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Key Value definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|key|String|Key.|
|value|String|Value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.keyValue",
  "key": "String",
  "value": "String"
}
```




