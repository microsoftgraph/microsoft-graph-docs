﻿# androidWorkProfileWiFiConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Android Work Profile device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user. This profile provides limited and simpler security types than Enterprise Wi-Fi profile.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidWorkProfileWiFiConfigurations](../api/intune_deviceconfig_androidworkprofilewificonfiguration_list.md)|[androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md) collection|List properties and relationships of the [androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md) objects.|
|[Get androidWorkProfileWiFiConfiguration](../api/intune_deviceconfig_androidworkprofilewificonfiguration_get.md)|[androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md)|Read properties and relationships of the [androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md) object.|
|[Create androidWorkProfileWiFiConfiguration](../api/intune_deviceconfig_androidworkprofilewificonfiguration_create.md)|[androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md)|Create a new [androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md) object.|
|[Delete androidWorkProfileWiFiConfiguration](../api/intune_deviceconfig_androidworkprofilewificonfiguration_delete.md)|None|Deletes a [androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md).|
|[Update androidWorkProfileWiFiConfiguration](../api/intune_deviceconfig_androidworkprofilewificonfiguration_update.md)|[androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md)|Update the properties of a [androidWorkProfileWiFiConfiguration](../resources/intune_deviceconfig_androidworkprofilewificonfiguration.md) object.|

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
|networkName|String|Network Name|
|ssid|String|This is the name of the Wi-Fi network that is broadcast to all devices.|
|connectAutomatically|Boolean|Connect automatically when this network is in range. Setting this to true will skip the user prompt and automatically connect the device to Wi-Fi network.|
|connectWhenNetworkNameIsHidden|Boolean|When set to true, this profile forces the device to connect to a network that doesn't broadcast its SSID to all devices.|
|wiFiSecurityType|[androidWiFiSecurityType](../resources/intune_deviceconfig_androidwifisecuritytype.md)|Indicates whether Wi-Fi endpoint uses an EAP based security type. Possible values are: `open`, `wpaEnterprise`.|

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
  "@odata.type": "microsoft.graph.androidWorkProfileWiFiConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidWorkProfileWiFiConfiguration",
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
  "networkName": "String",
  "ssid": "String",
  "connectAutomatically": true,
  "connectWhenNetworkNameIsHidden": true,
  "wiFiSecurityType": "String"
}
```





