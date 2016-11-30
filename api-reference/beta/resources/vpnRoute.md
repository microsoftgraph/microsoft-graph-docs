# vpnRoute resource type

VPN Route definition.
### Properties
|Property|Type|Description|
|---|---|---|
|destinationPrefix|String|Destination prefix (IPv4/v6 address).|
|prefixSize|Int32|Prefix size. (1-32)|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnRoute"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.vpnRoute",
  "destinationPrefix": "String",
  "prefixSize": 1024
}
```

