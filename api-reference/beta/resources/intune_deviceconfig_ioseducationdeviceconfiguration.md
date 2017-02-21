# iosEducationDeviceConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

iOS Education configuration profile

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosEducationDeviceConfigurations](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list.md)|[iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) collection|List properties and relationships of the [iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) objects.|
|[Get iosEducationDeviceConfiguration](../api/intune_deviceconfig_ioseducationdeviceconfiguration_get.md)|[iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)|Read properties and relationships of the [iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) object.|
|[Create iosEducationDeviceConfiguration](../api/intune_deviceconfig_ioseducationdeviceconfiguration_create.md)|[iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)|Create a new [iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) object.|
|[Delete iosEducationDeviceConfiguration](../api/intune_deviceconfig_ioseducationdeviceconfiguration_delete.md)|None|Deletes a [iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md).|
|[Update iosEducationDeviceConfiguration](../api/intune_deviceconfig_ioseducationdeviceconfiguration_update.md)|[iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)|Update the properties of a [iosEducationDeviceConfiguration](../resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_ioseducationdeviceconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|
|[List iosTrustedRootCertificates](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list_iostrustedrootcertificate.md)|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iostrustedrootcertificate.md) collection|Get the iosTrustedRootCertificates from the teacherRootCertificates navigation property.|
|[Get iosCertificateProfileBase](../api/intune_deviceconfig_ioseducationdeviceconfiguration_get_ioscertificateprofilebase.md)|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md) from the teacherIdentityCertificate navigation property.|
|[List iosTrustedRootCertificates](../api/intune_deviceconfig_ioseducationdeviceconfiguration_list_iostrustedrootcertificate.md)|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iostrustedrootcertificate.md) collection|Get the iosTrustedRootCertificates from the studentRootCertificates navigation property.|
|[Get iosCertificateProfileBase](../api/intune_deviceconfig_ioseducationdeviceconfiguration_get_ioscertificateprofilebase.md)|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md) from the studentIdentityCertificate navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|teacherRootCertificates|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iostrustedrootcertificate.md) collection|Teacher Trusted Root Certificate.|
|teacherIdentityCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Teacher identity certificate for client authentication.|
|studentRootCertificates|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iostrustedrootcertificate.md) collection|Student Trusted Root Certificate.|
|studentIdentityCertificate|[iosCertificateProfileBase](../resources/intune_deviceconfig_ioscertificateprofilebase.md)|Student identity certificate for client authentication.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosEducationDeviceConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosEducationDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024
}
```



