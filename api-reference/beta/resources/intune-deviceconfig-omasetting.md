---
title: "omaSetting resource type"
description: "OMA Settings definition."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# omaSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

OMA Settings definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name.|
|description|String|Description.|
|omaUri|String|OMA.|
|isEncrypted|Boolean|Indicates whether the value field is encrypted.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.omaSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.omaSetting",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "isEncrypted": true
}
```




