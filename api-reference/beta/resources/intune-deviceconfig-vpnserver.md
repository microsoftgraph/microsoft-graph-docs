---
title: "vpnServer resource type"
description: "VPN Server definition."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vpnServer resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN Server definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description.|
|address|String|Address (IP address, FQDN or URL)|
|isDefaultServer|Boolean|Default server.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vpnServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vpnServer",
  "description": "String",
  "address": "String",
  "isDefaultServer": true
}
```




