# vpnProxyServer resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

VPN Proxy Server.
## Properties
|Property|Type|Description|
|---|---|---|
|automaticConfigurationScriptUrl|String|Proxy's automatic configuration script url.|
|address|String|Address.|
|port|Int32|Port.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnProxyServer"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.vpnProxyServer",
  "automaticConfigurationScriptUrl": "String",
  "address": "String",
  "port": 1024
}
```



