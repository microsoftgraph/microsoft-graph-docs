# windows81VpnConfiguration resource type

By providing the configurations in this profile you can instruct the Windows 8.1 (and later) devices to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [windowsVpnConfiguration](../resources/intune_deviceconfig_windowsVpnConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81VpnConfigurations](../api/intune_deviceconfig_windows81VpnConfiguration_list.md)|[windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) collection|List properties and relationships of the [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) objects.|
|[Get windows81VpnConfiguration](../api/intune_deviceconfig_windows81VpnConfiguration_get.md)|[windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|Read properties and relationships of the [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) object.|
|[Create windows81VpnConfiguration](../api/intune_deviceconfig_windows81VpnConfiguration_create.md)|[windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|Create a new [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) object.|
|[Delete windows81VpnConfiguration](../api/intune_deviceconfig_windows81VpnConfiguration_delete.md)|None|Deletes a [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md).|
|[Update windows81VpnConfiguration](../api/intune_deviceconfig_windows81VpnConfiguration_update.md)|[windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md)|Update the properties of a [windows81VpnConfiguration](../resources/intune_deviceconfig_windows81VpnConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows81VpnConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windows81VpnConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windows81VpnConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
|applyOnlyToWindows81|Boolean|Value indicating whether this policy only applies to Windows 8.1.|
|connectionType|String|Connection type. Possible values are: `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`.|
|loginGroupOrDomain|String|Login group or domain when connection type is set to Dell SonicWALL Mobile Connection.|
|enableSplitTunneling|Boolean|Enable split tunneling for the VPN.|
|proxyServer|[windows81VpnProxyServer](../resources/intune_deviceconfig_windows81VpnProxyServer.md)|Proxy Server.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows81VpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81VpnConfiguration",
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
  }
}
```


