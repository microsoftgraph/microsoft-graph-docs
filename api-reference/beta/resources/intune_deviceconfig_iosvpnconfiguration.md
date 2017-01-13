# iosVpnConfiguration resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

By providing the configurations in this profile you can instruct the iOS device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosVpnConfigurations](../api/intune_deviceconfig_iosvpnconfiguration_list.md)|[iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md) collection|List properties and relationships of the [iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md) objects.|
|[Get iosVpnConfiguration](../api/intune_deviceconfig_iosvpnconfiguration_get.md)|[iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md)|Read properties and relationships of the [iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md) object.|
|[Create iosVpnConfiguration](../api/intune_deviceconfig_iosvpnconfiguration_create.md)|[iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md)|Create a new [iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md) object.|
|[Delete iosVpnConfiguration](../api/intune_deviceconfig_iosvpnconfiguration_delete.md)|None|Deletes a [iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md).|
|[Update iosVpnConfiguration](../api/intune_deviceconfig_iosvpnconfiguration_update.md)|[iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md)|Update the properties of a [iosVpnConfiguration](../resources/intune_deviceconfig_iosvpnconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosvpnconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_iosvpnconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_iosvpnconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get iosCertificateProfileBase](../api/intune_deviceconfig_iosvpnconfiguration_get_ioscertificateprofilebase.md)|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|connectionName|String|Connection name displayed to the user. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|connectionType|String|Connection type. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md) Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `customVpn`, `ciscoIPSec`, `citrix`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|role|String|Role when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|realm|String|Realm when connection type is set to Pulse Secure. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|server|[vpnServer](../resources/intune_deviceconfig_vpnserver.md)|VPN Server on the network. Make sure end users can access this network location. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|identifier|String|Identifier provided by VPN vendor when connection type is set to Custom VPN. For example: Cisco AnyConnect uses an identifier of the form com.cisco.anyconnect.applevpn.plugin Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|customData|[keyValue](../resources/intune_deviceconfig_keyvalue.md) collection|Custom data when connection type is set to Custom VPN. Use this field to enable functionality not supported by Intune, but available in your VPN solution. Contact your VPN vendor to learn how to add these key/value pairs. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|enableSplitTunneling|Boolean|Send all network traffic through VPN. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|authenticationMethod|String|Authentication method for this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md) Possible values are: `certificate`, `usernameAndPassword`.|
|enablePerApp|Boolean|Setting this to true creates Per-App VPN payload which can later be associated with Apps that can trigger this VPN conneciton on the end user's iOS device. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|safariDomains|String collection|Safari domains when this VPN per App setting is enabled. In addition to the apps associated with this VPN, Safari domains specified here will also be able to trigger this VPN connection. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|onDemandRules|[vpnOnDemandRule](../resources/intune_deviceconfig_vpnondemandrule.md) collection|On-Demand Rules Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|
|proxyServer|[vpnProxyServer](../resources/intune_deviceconfig_vpnproxyserver.md)|Proxy Server. Inherited from [appleVpnConfiguration](../resources/intune_deviceconfig_applevpnconfiguration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|identityCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosVpnConfiguration",
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



