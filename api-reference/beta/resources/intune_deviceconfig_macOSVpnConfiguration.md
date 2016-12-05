# macOSVpnConfiguration resource type

By providing the configurations in this profile you can instruct the Mac device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSVpnConfigurations](../api/intune_deviceconfig_macOSVpnConfiguration_list.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md) collection|List properties and relationships of the [macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md) objects.|
|[Get macOSVpnConfiguration](../api/intune_deviceconfig_macOSVpnConfiguration_get.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md)|Read properties and relationships of the [macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md) object.|
|[Create macOSVpnConfiguration](../api/intune_deviceconfig_macOSVpnConfiguration_create.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md)|Create a new [macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md) object.|
|[Delete macOSVpnConfiguration](../api/intune_deviceconfig_macOSVpnConfiguration_delete.md)|None|Deletes a [macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md).|
|[Update macOSVpnConfiguration](../api/intune_deviceconfig_macOSVpnConfiguration_update.md)|[macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md)|Update the properties of a [macOSVpnConfiguration](../resources/intune_deviceconfig_macOSVpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macOSVpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_macOSVpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_macOSVpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get macOSCertificateProfileBase](../api/intune_deviceconfig_macOSVpnConfiguration_get_macOSCertificateProfileBase.md)|[macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md)|Get the [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|connectionName|String|Connection name displayed to the user. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|connectionType|String|Connection type. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md) Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `customVpn`, `ciscoIPSec`, `citrix`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|role|String|Role when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|realm|String|Realm when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|server|[vpnServer](../resources/intune_deviceconfig_vpnServer.md)|VPN Server on the network. Make sure end users can access this network location. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|identifier|String|Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|customData|[keyValue](../resources/intune_deviceconfig_keyValue.md) collection|Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|enableSplitTunneling|Boolean|Send all network traffic through VPN. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|authenticationMethod|String|Authentication method for this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md) Possible values are: `certificate`, `usernameAndPassword`.|
|enablePerApp|Boolean|Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|safariDomains|String collection|Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|onDemandRules|[vpnOnDemandRule](../resources/intune_deviceconfig_vpnOnDemandRule.md) collection|On-Demand Rules Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|
|proxyServer|[vpnProxyServer](../resources/intune_deviceconfig_vpnProxyServer.md)|Proxy Server. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_appleVpnConfiguration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|identityCertificate|[macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

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


