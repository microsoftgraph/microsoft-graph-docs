# windows10VpnProxyServer resource type

VPN Proxy Server.

Inherits from [vpnProxyServer](vpnProxyServer.md)

### Properties
|Property|Type|Description|
|---|---|---|
|automaticConfigurationScriptUrl|String|Proxy's automatic configuration script url. Inherited from [vpnProxyServer](vpnProxyServer.md).|
|address|String|Address. Inherited from [vpnProxyServer](vpnProxyServer.md).|
|port|Int32|Port. Inherited from [vpnProxyServer](vpnProxyServer.md).|
|bypassProxyServerForLocalAddress|Boolean|Bypass proxy server for local address.|

### Relationships
None
### JSON Representation
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

