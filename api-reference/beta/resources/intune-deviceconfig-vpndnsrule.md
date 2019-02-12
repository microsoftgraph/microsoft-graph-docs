---
title: "vpnDnsRule resource type"
description: "VPN DNS Rule definition."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vpnDnsRule resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN DNS Rule definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name.|
|servers|String collection|Servers.|
|proxyServerUri|String|Proxy Server Uri.|
|autoTrigger|Boolean|Automatically connect to the VPN when the device connects to this domain: Default False.|
|persistent|Boolean|Keep this rule active even when the VPN is not connected: Default False|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vpnDnsRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vpnDnsRule",
  "name": "String",
  "servers": [
    "String"
  ],
  "proxyServerUri": "String",
  "autoTrigger": true,
  "persistent": true
}
```




