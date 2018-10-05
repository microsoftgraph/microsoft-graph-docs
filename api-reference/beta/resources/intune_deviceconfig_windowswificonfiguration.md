# windowsWifiConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsWifiConfigurations](../api/intune_deviceconfig_windowswificonfiguration_list.md)|[windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md) collection|List properties and relationships of the [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md) objects.|
|[Get windowsWifiConfiguration](../api/intune_deviceconfig_windowswificonfiguration_get.md)|[windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|Read properties and relationships of the [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md) object.|
|[Create windowsWifiConfiguration](../api/intune_deviceconfig_windowswificonfiguration_create.md)|[windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|Create a new [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md) object.|
|[Delete windowsWifiConfiguration](../api/intune_deviceconfig_windowswificonfiguration_delete.md)|None|Deletes a [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md).|
|[Update windowsWifiConfiguration](../api/intune_deviceconfig_windowswificonfiguration_update.md)|[windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md)|Update the properties of a [windowsWifiConfiguration](../resources/intune_deviceconfig_windowswificonfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|wifiSecurityType|[wiFiSecurityType](../resources/intune_deviceconfig_wifisecuritytype.md)|Specify the Wifi Security Type. Possible values are: `open`, `wpaPersonal`, `wpaEnterprise`, `wep`, `wpa2Personal`, `wpa2Enterprise`.|
|ssid|String|Specify the SSID of the wifi connection.|
|networkName|String|Specify the network configuration name.|
|connectAutomatically|Boolean|Specify whether the wifi connection should connect automatically when in range.|
|connectToPreferredNetwork|Boolean|Specify whether the wifi connection should connect to more preferred networks when already connected to this one.  Requires ConnectAutomatically to be true.|
|connectWhenNetworkNameIsHidden|Boolean|Specify whether the wifi connection should connect automatically even when the SSID is not broadcasting.|
|proxySetting|[wiFiProxySetting](../resources/intune_deviceconfig_wifiproxysetting.md)|Specify the proxy setting for Wi-Fi configuration. Possible values are: `none`, `manual`, `automatic`.|
|proxyManualAddress|String|Specify the IP address for the proxy server.|
|proxyManualPort|Int32|Specify the port for the proxy server.|
|proxyAutomaticConfigurationUrl|String|Specify the URL for the proxy server configuration script.|
|forceFIPSCompliance|Boolean|Specify whether to force FIPS compliance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsWifiConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsWifiConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "wifiSecurityType": "String",
  "ssid": "String",
  "networkName": "String",
  "connectAutomatically": true,
  "connectToPreferredNetwork": true,
  "connectWhenNetworkNameIsHidden": true,
  "proxySetting": "String",
  "proxyManualAddress": "String",
  "proxyManualPort": 1024,
  "proxyAutomaticConfigurationUrl": "String",
  "forceFIPSCompliance": true
}
```



