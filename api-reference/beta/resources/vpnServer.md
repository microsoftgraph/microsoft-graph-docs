# vpnServer resource type

VPN Server definition.
### Properties
|Property|Type|Description|
|---|---|---|
|description|String|Description.|
|ipAddressOrFqdn|String|IP Address or FQDN.|
|isDefaultServer|Boolean|Default server.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnServer"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.vpnServer",
  "description": "String",
  "ipAddressOrFqdn": "String",
  "isDefaultServer": true
}
```

