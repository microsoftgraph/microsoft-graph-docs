---
title: "windows81VpnProxyServer resource type"
description: "VPN Proxy Server."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windows81VpnProxyServer resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN Proxy Server.


Inherits from [vpnProxyServer](../resources/intune-deviceconfig-vpnproxyserver.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|automaticConfigurationScriptUrl|String|Proxy's automatic configuration script url. Inherited from [vpnProxyServer](../resources/intune-deviceconfig-vpnproxyserver.md)|
|address|String|Address. Inherited from [vpnProxyServer](../resources/intune-deviceconfig-vpnproxyserver.md)|
|port|Int32|Port. Valid values 0 to 65535 Inherited from [vpnProxyServer](../resources/intune-deviceconfig-vpnproxyserver.md)|
|automaticallyDetectProxySettings|Boolean|Automatically detect proxy settings.|
|bypassProxyServerForLocalAddress|Boolean|Bypass proxy server for local address.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows81VpnProxyServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows81VpnProxyServer",
  "automaticConfigurationScriptUrl": "String",
  "address": "String",
  "port": 1024,
  "automaticallyDetectProxySettings": true,
  "bypassProxyServerForLocalAddress": true
}
```




