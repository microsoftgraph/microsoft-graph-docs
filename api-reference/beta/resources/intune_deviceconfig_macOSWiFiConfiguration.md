# macOSWiFiConfiguration resource type

By providing the configurations in this profile you can instruct the macOS device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSWiFiConfigurations](../api/intune_deviceconfig_macOSWiFiConfiguration_list.md)|[macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md) collection|List properties and relationships of the [macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md) objects.|
|[Get macOSWiFiConfiguration](../api/intune_deviceconfig_macOSWiFiConfiguration_get.md)|[macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md)|Read properties and relationships of the [macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md) object.|
|[Create macOSWiFiConfiguration](../api/intune_deviceconfig_macOSWiFiConfiguration_create.md)|[macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md)|Create a new [macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md) object.|
|[Delete macOSWiFiConfiguration](../api/intune_deviceconfig_macOSWiFiConfiguration_delete.md)|None|Deletes a [macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md).|
|[Update macOSWiFiConfiguration](../api/intune_deviceconfig_macOSWiFiConfiguration_update.md)|[macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md)|Update the properties of a [macOSWiFiConfiguration](../resources/intune_deviceconfig_macOSWiFiConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macOSWiFiConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_macOSWiFiConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_macOSWiFiConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|networkName|String|Network Name|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices.|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network.|
|connectWhenNetworkNameIsHidden|Boolean|Connect when the network is not broadcasting its name (SSID). When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices.|
|wiFiSecurityType|String|Indicates whether Wi-Fi endpoint uses an EAP based security type. Possible values are: `open`, `wpaPersonal`, `wpaEnterprise`, `wep`.|
|proxySettings|String|Proxy Type for this Wi-Fi connection Possible values are: `none`, `manual`, `automatic`.|
|proxyManualAddress|String|IP Address or DNS hostname of the proxy server when manual configuration is selected.|
|proxyManualPort|Int32|Port of the proxy server when manual configuration is selected.|
|proxyAutomaticConfigurationUrl|String|URL of the proxy server automatic configuration script when automatic configuration is selected. This URL is typically the location of PAC (Proxy Auto Configuration) file.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSWiFiConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSWiFiConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "networkName": "String",
  "ssid": "String",
  "connectAutomatically": true,
  "connectWhenNetworkNameIsHidden": true,
  "wiFiSecurityType": "String",
  "proxySettings": "String",
  "proxyManualAddress": "String",
  "proxyManualPort": 1024,
  "proxyAutomaticConfigurationUrl": "String"
}
```


