# macOSVpnConfiguration resource type

By providing the configurations in this profile you can instruct the Mac device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [appleVpnConfiguration](appleVpnConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSVpnConfigurations](../api/macOSVpnConfiguration_list.md)|[macOSVpnConfiguration](macOSVpnConfiguration.md) collection|List properties and relationships of the [macOSVpnConfiguration](../resource/macOSVpnConfiguration.md) objects.|
|[Get macOSVpnConfiguration](../api/macOSVpnConfiguration_get.md)|[macOSVpnConfiguration](macOSVpnConfiguration.md)|Read properties and relationships of the [macOSVpnConfiguration](../resource/macOSVpnConfiguration.md) object.|
|[Create macOSVpnConfiguration](../api/macOSVpnConfiguration_create.md)|[macOSVpnConfiguration](macOSVpnConfiguration.md)|Create a new [macOSVpnConfiguration](../resource/macOSVpnConfiguration.md) object.|
|[Delete macOSVpnConfiguration](../api/macOSVpnConfiguration_delete.md)|None|Deletes a [macOSVpnConfiguration](../resource/macOSVpnConfiguration.md).|
|[Update macOSVpnConfiguration](../api/macOSVpnConfiguration_update.md)|[macOSVpnConfiguration](macOSVpnConfiguration.md)|Update the properties of a [macOSVpnConfiguration](../resource/macOSVpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/macOSVpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/macOSVpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/macOSVpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get macOSCertificateProfileBase](../api/macOSVpnConfiguration_get_macOSCertificateProfileBase.md)|[macOSCertificateProfileBase](macOSCertificateProfileBase.md)|Get the [macOSCertificateProfileBase](macOSCertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|connectionName|String|Connection name displayed to the user. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|connectionType|String|Connection type. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md). Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `customVpn`, `ciscoIPSec`, `citrix`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|role|String|Role when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|realm|String|Realm when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|server|[vpnServer](vpnServer.md)|VPN Server on the network. Make sure end users can access this network location. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|identifier|String|Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|customData|[keyValue](keyValue.md) collection|Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|enableSplitTunneling|Boolean|Send all network traffic through VPN. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|authenticationMethod|String|Authentication method for this VPN connection. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md). Possible values are: `certificate`, `usernameAndPassword`.|
|enablePerApp|Boolean|Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|safariDomains|String collection|Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|onDemandRules|[vpnOnDemandRule](vpnOnDemandRule.md) collection|On-Demand Rules Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|
|proxyServer|[vpnProxyServer](vpnProxyServer.md)|Proxy Server. Inherited from [appleVpnConfiguration](appleVpnConfiguration.md).|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|identityCertificate|[macOSCertificateProfileBase](macOSCertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSVpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSVpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "connectionType": "String",
  "loginGroupOrDomain": "String",
  "role": "String",
  "realm": "String",
  "server": {
    "@odata.type": "microsoft.graph.vpnServer",
    "description": "String",
    "ipAddressOrFqdn": "String",
    "isDefaultServer": true
  },
  "identifier": "String",
  "customData": [
    {
      "@odata.type": "microsoft.graph.keyValue",
      "key": "String",
      "value": "String"
    }
  ],
  "enableSplitTunneling": true,
  "authenticationMethod": "String",
  "enablePerApp": true,
  "safariDomains": [
    "String"
  ],
  "onDemandRules": [
    {
      "@odata.type": "microsoft.graph.vpnOnDemandRule",
      "ssids": [
        "String"
      ],
      "dnsSearchDomains": [
        "String"
      ],
      "probeUrl": "String",
      "action": "String",
      "domainAction": "String",
      "domains": [
        "String"
      ],
      "probeRequiredUrl": "String"
    }
  ],
  "proxyServer": {
    "@odata.type": "microsoft.graph.vpnProxyServer",
    "automaticConfigurationScriptUrl": "String",
    "address": "String",
    "port": 1024
  }
}
```

