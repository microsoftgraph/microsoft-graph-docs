# androidWorkProfileTrustedRootCertificate resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Android Work Profile Trusted Root Certificate configuration profile

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidWorkProfileTrustedRootCertificates](../api/intune_deviceconfig_androidworkprofiletrustedrootcertificate_list.md)|[androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md) collection|List properties and relationships of the [androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md) objects.|
|[Get androidWorkProfileTrustedRootCertificate](../api/intune_deviceconfig_androidworkprofiletrustedrootcertificate_get.md)|[androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md)|Read properties and relationships of the [androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md) object.|
|[Create androidWorkProfileTrustedRootCertificate](../api/intune_deviceconfig_androidworkprofiletrustedrootcertificate_create.md)|[androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md)|Create a new [androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md) object.|
|[Delete androidWorkProfileTrustedRootCertificate](../api/intune_deviceconfig_androidworkprofiletrustedrootcertificate_delete.md)|None|Deletes a [androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md).|
|[Update androidWorkProfileTrustedRootCertificate](../api/intune_deviceconfig_androidworkprofiletrustedrootcertificate_update.md)|[androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md)|Update the properties of a [androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|trustedRootCertificate|Binary|Trusted Root Certificate|
|certFileName|String|File name to display in UI.|

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
  "@odata.type": "microsoft.graph.androidWorkProfileTrustedRootCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidWorkProfileTrustedRootCertificate",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "trustedRootCertificate": "binary",
  "certFileName": "String"
}
```



