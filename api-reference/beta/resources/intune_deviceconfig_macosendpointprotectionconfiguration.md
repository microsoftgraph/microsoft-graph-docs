# macOSEndpointProtectionConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

MacOS endpoint protection configuration profile.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSEndpointProtectionConfigurations](../api/intune_deviceconfig_macosendpointprotectionconfiguration_list.md)|[macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md) collection|List properties and relationships of the [macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md) objects.|
|[Get macOSEndpointProtectionConfiguration](../api/intune_deviceconfig_macosendpointprotectionconfiguration_get.md)|[macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md)|Read properties and relationships of the [macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md) object.|
|[Create macOSEndpointProtectionConfiguration](../api/intune_deviceconfig_macosendpointprotectionconfiguration_create.md)|[macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md)|Create a new [macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md) object.|
|[Delete macOSEndpointProtectionConfiguration](../api/intune_deviceconfig_macosendpointprotectionconfiguration_delete.md)|None|Deletes a [macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md).|
|[Update macOSEndpointProtectionConfiguration](../api/intune_deviceconfig_macosendpointprotectionconfiguration_update.md)|[macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md)|Update the properties of a [macOSEndpointProtectionConfiguration](../resources/intune_deviceconfig_macosendpointprotectionconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|gatekeeperAllowedAppSource|[macOSGatekeeperAppSources](../resources/intune_deviceconfig_macosgatekeeperappsources.md)|System and Privacy setting that determines which download locations apps can be run from on a macOS device. Possible values are: `notConfigured`, `macAppStore`, `macAppStoreAndIdentifiedDevelopers`, `anywhere`.|
|gatekeeperBlockOverride|Boolean|If set to true, the user override for Gatekeeper will be disabled.|
|firewallEnabled|Boolean|Whether the firewall should be enabled or not.|
|firewallBlockAllIncoming|Boolean|Corresponds to the “Block all incoming connections” option.|
|firewallEnableStealthMode|Boolean|Corresponds to “Enable stealth mode.”|
|firewallApplications|[macOSFirewallApplication](../resources/intune_deviceconfig_macosfirewallapplication.md) collection|List of applications with firewall settings. Firewall settings for applications not on this list are determined by the user. This collection can contain a maximum of 500 elements.|

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
  "@odata.type": "microsoft.graph.macOSEndpointProtectionConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSEndpointProtectionConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "gatekeeperAllowedAppSource": "String",
  "gatekeeperBlockOverride": true,
  "firewallEnabled": true,
  "firewallBlockAllIncoming": true,
  "firewallEnableStealthMode": true,
  "firewallApplications": [
    {
      "@odata.type": "microsoft.graph.macOSFirewallApplication",
      "bundleId": "String",
      "allowsIncomingConnections": true
    }
  ]
}
```



