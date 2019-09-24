---
title: "extendedKeyUsage resource type"
description: "Custom Extended Key Usage definition"
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# extendedKeyUsage resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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



