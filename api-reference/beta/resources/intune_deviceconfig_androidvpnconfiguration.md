﻿# androidVpnConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Android device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidVpnConfigurations](../api/intune_deviceconfig_androidvpnconfiguration_list.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md) collection|List properties and relationships of the [androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md) objects.|
|[Get androidVpnConfiguration](../api/intune_deviceconfig_androidvpnconfiguration_get.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md)|Read properties and relationships of the [androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[Create androidVpnConfiguration](../api/intune_deviceconfig_androidvpnconfiguration_create.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md)|Create a new [androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[Delete androidVpnConfiguration](../api/intune_deviceconfig_androidvpnconfiguration_delete.md)|None|Deletes a [androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md).|
|[Update androidVpnConfiguration](../api/intune_deviceconfig_androidvpnconfiguration_update.md)|[androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md)|Update the properties of a [androidVpnConfiguration](../resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidvpnconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_androidvpnconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_androidvpnconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_androidvpnconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|
|[Get androidCertificateProfileBase](../api/intune_deviceconfig_androidvpnconfiguration_get_androidcertificateprofilebase.md)|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Get the [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) from the identityCertificate navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|connectionName|String|Connection name displayed to the user.|
|connectionType|String|Connection type. Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `citrix`.|
|role|String|Role when connection type is set to Pulse Secure.|
|realm|String|Realm when connection type is set to Pulse Secure.|
|servers|[vpnServer](../resources/intune_deviceconfig_vpnserver.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations.|
|fingerprint|String|Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.|
|customData|[keyValue](../resources/intune_deviceconfig_keyvalue.md) collection|Custom data when connection type is set to Citrix.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidVpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidVpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "connectionType": "String",
  "role": "String",
  "realm": "String",
  "servers": [
    {
      "@odata.type": "microsoft.graph.vpnServer",
      "description": "String",
      "ipAddressOrFqdn": "String",
      "isDefaultServer": true
    }
  ],
  "fingerprint": "String",
  "customData": [
    {
      "@odata.type": "microsoft.graph.keyValue",
      "key": "String",
      "value": "String"
    }
  ],
  "authenticationMethod": "String"
}
```



