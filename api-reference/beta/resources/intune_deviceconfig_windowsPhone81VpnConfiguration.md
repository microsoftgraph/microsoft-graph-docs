# windowsPhone81VpnConfiguration resource type

By providing the configurations in this profile you can instruct the Windows Phone 8.1 to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81VpnConfigurations](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_list.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md) collection|List properties and relationships of the [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md) objects.|
|[Get windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_get.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md)|Read properties and relationships of the [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md) object.|
|[Create windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_create.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md)|Create a new [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md) object.|
|[Delete windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_delete.md)|None|Deletes a [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md).|
|[Update windowsPhone81VpnConfiguration](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_update.md)|[windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md)|Update the properties of a [windowsPhone81VpnConfiguration](../resources/intune_deviceconfig_windowsPhone81VpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get windowsPhone81CertificateProfileBase](../api/intune_deviceconfig_windowsPhone81VpnConfiguration_get_windowsPhone81CertificateProfileBase.md)|[windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)|Get the [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md) from the identityCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|connectionName|String|Connection name displayed to the user. Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsVpnConfiguration.md)|
|servers|[vpnServer](../resources/intune_deviceconfig_vpnServer.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations. Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsVpnConfiguration.md)|
|customXml|Binary|Custom XML commands that configures the VPN connection. (UTF8 encoded byte array) Inherited from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsVpnConfiguration.md)|
|applyOnlyToWindows81|Boolean|Value indicating whether this policy only applies to Windows 8.1. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|
|connectionType|String|Connection type. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) Possible values are: `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|
|enableSplitTunneling|Boolean|Enable split tunneling for the VPN. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|
|proxyServer|[windows81VpnProxyServer](../resources/intune_deviceconfig_windows81VpnProxyServer.md)|Proxy Server. Inherited from [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|
|bypassVpnOnCompanyWifi|Boolean|Bypass VPN on company Wi-Fi.|
|bypassVpnOnHomeWifi|Boolean|Bypass VPN on home Wi-Fi.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|
|rememberUserCredentials|Boolean|Remember user credentials.|
|dnsSuffixSearchList|String collection|DNS suffix search list.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|identityCertificate|[windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)|Identity certificate for client authentication when authentication method is certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhone81VpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81VpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "servers": [
    {
      "@odata.type": "microsoft.graph.vpnServer",
      "description": "String",
      "ipAddressOrFqdn": "String",
      "isDefaultServer": true
    }
  ],
  "customXml": "binary",
  "applyOnlyToWindows81": true,
  "connectionType": "String",
  "loginGroupOrDomain": "String",
  "enableSplitTunneling": true,
  "proxyServer": {
    "@odata.type": "microsoft.graph.windows81VpnProxyServer",
    "automaticConfigurationScriptUrl": "String",
    "address": "String",
    "port": 1024,
    "automaticallyDetectProxySettings": true,
    "bypassProxyServerForLocalAddress": true
  },
  "bypassVpnOnCompanyWifi": true,
  "bypassVpnOnHomeWifi": true,
  "authenticationMethod": "String",
  "rememberUserCredentials": true,
  "dnsSuffixSearchList": [
    "String"
  ]
}
```


