# windows10PkcsCertificateProfile resource type

Windows 10 Desktop and Mobile PKCS certificate profile

Inherits from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10PkcsCertificateProfiles](../api/intune_deviceconfig_windows10PkcsCertificateProfile_list.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md) collection|List properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md) objects.|
|[Get windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10PkcsCertificateProfile_get.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md)|Read properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md) object.|
|[Create windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10PkcsCertificateProfile_create.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md)|Create a new [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md) object.|
|[Delete windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10PkcsCertificateProfile_delete.md)|None|Deletes a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md).|
|[Update windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10PkcsCertificateProfile_update.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md)|Update the properties of a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10PkcsCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows10PkcsCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windows10PkcsCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windows10PkcsCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP) Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period Inherited from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10CertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|certificationAuthority|String|PKCS Certification Authority|
|certificationAuthorityName|String|PKCS Certification Authority Name|
|certificateTemplateName|String|PKCS Certificate Template Name|

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


