﻿# windows10VpnProxyServer resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

VPN Proxy Server.

Inherits from [vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)

## Properties
|Property|Type|Description|
|---|---|---|
|automaticConfigurationScriptUrl|String|Proxy's automatic configuration script url. Inherited from [vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)|
|address|String|Address. Inherited from [vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)|
|port|Int32|Port. Inherited from [vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)|
|bypassProxyServerForLocalAddress|Boolean|Bypass proxy server for local address.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10VpnProxyServer"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10VpnProxyServer",
  "automaticConfigurationScriptUrl": "String",
  "address": "String",
  "port": 1024,
  "bypassProxyServerForLocalAddress": true
}
```



