# vpnTrafficRule resource type

VPN Traffic Rule definition.
### Properties
|Property|Type|Description|
|---|---|---|
|name|String|Name.|
|protocols|Int32|Protocols (0-255).|
|localPortRanges|[numberRange](../resources/intune_deviceconfig_numberRange.md) collection|Local port range can be set only when protocol is either TCP or UDP (6 or 17)|
|remotePortRanges|[numberRange](../resources/intune_deviceconfig_numberRange.md) collection|Remote port range can be set only when protocol is either TCP or UDP (6 or 17)|
|localAddressRanges|[iPv4Range](../resources/intune_deviceconfig_iPv4Range.md) collection|Local address range.|
|remoteAddressRanges|[iPv4Range](../resources/intune_deviceconfig_iPv4Range.md) collection|Remote address range.|
|appId|String|App identifier, if this traffic rule is triggered by an app.|
|appType|String|App type, if this traffic rule is triggered by an app. Possible values are: `none`, `desktop`, `universal`.|
|routingPolicyType|String|When app triggered, indicates whether to enable split tunneling along this route. Possible values are: `none`, `splitTunnel`, `forceTunnel`.|
|claims|String|Not yet documented|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vpnTrafficRule"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.vpnTrafficRule",
  "name": "String",
  "protocols": 1024,
  "localPortRanges": [
    {
      "@odata.type": "microsoft.graph.numberRange",
      "lowerNumber": 1024,
      "upperNumber": 1024
    }
  ],
  "remotePortRanges": [
    {
      "@odata.type": "microsoft.graph.numberRange",
      "lowerNumber": 1024,
      "upperNumber": 1024
    }
  ],
  "localAddressRanges": [
    {
      "@odata.type": "microsoft.graph.iPv4Range",
      "lowerAddress": "String",
      "upperAddress": "String"
    }
  ],
  "remoteAddressRanges": [
    {
      "@odata.type": "microsoft.graph.iPv4Range",
      "lowerAddress": "String",
      "upperAddress": "String"
    }
  ],
  "appId": "String",
  "appType": "String",
  "routingPolicyType": "String",
  "claims": "String"
}
```



