# windows10PkcsCertificateProfile resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows 10 Desktop and Mobile PKCS certificate profile

Inherits from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10PkcsCertificateProfiles](../api/intune_deviceconfig_windows10pkcscertificateprofile_list.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) collection|List properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) objects.|
|[Get windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_get.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Read properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|
|[Create windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_create.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Create a new [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|
|[Delete windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_delete.md)|None|Deletes a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md).|
|[Update windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_update.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Update the properties of a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows10pkcscertificateprofile_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_windows10pkcscertificateprofile_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_windows10pkcscertificateprofile_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_windows10pkcscertificateprofile_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP) Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md) Possible values are: `days`, `months`, `years`.|
|certificationAuthority|String|PKCS Certification Authority|
|certificationAuthorityName|String|PKCS Certification Authority Name|
|certificateTemplateName|String|PKCS Certificate Template Name|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10PkcsCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10PkcsCertificateProfile",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "renewalThresholdPercentage": 1024,
  "keyStorageProvider": "String",
  "subjectNameFormat": "String",
  "subjectAlternativeNameType": "String",
  "certificateValidityPeriodValue": 1024,
  "certificateValidityPeriodScale": "String",
  "certificationAuthority": "String",
  "certificationAuthorityName": "String",
  "certificateTemplateName": "String"
}
```



