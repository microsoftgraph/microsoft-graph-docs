# vpnDnsRule resource type

VPN DNS Rule definition.
### Properties
|Property|Type|Description|
|---|---|---|
|name|String|Name.|
|servers|String collection|Servers.|
|proxyServerUri|String|Proxy Server Uri.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnDnsRule"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.vpnDnsRule",
  "name": "String",
  "servers": [
    "String"
  ],
  "proxyServerUri": "String"
}
```



