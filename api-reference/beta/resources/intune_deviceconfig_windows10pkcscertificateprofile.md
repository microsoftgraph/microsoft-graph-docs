# windows10PkcsCertificateProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows 10 Desktop and Mobile PKCS certificate profile

Inherits from [windows10CertificateProfileBase](../resources/intune_deviceconfig_windows10certificateprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10PkcsCertificateProfiles](../api/intune_deviceconfig_windows10pkcscertificateprofile_list.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) collection|List properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) objects.|
|[Get windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_get.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Read properties and relationships of the [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|
|[Create windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_create.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Create a new [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|
|[Delete windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_delete.md)|None|Deletes a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md).|
|[Update windows10PkcsCertificateProfile](../api/intune_deviceconfig_windows10pkcscertificateprofile_update.md)|[windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md)|Update the properties of a [windows10PkcsCertificateProfile](../resources/intune_deviceconfig_windows10pkcscertificateprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Valid values 1 to 99 Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|
|keyStorageProvider|[keyStorageProviderOption](../resources/intune_deviceconfig_keystorageprovideroption.md)|Key Storage Provider (KSP) Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md). Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|[subjectNameFormat](../resources/intune_deviceconfig_subjectnameformat.md)|Certificate Subject Name Format Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md). Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`, `custom`, `commonNameAsIMEI`, `commonNameAsSerialNumber`, `commonNameAsAadDeviceId`, `commonNameAsIntuneDeviceId`, `commonNameAsDurableDeviceId`.|
|subjectAlternativeNameType|[subjectAlternativeNameType](../resources/intune_deviceconfig_subjectalternativenametype.md)|Certificate Subject Alternative Name Type Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md). Possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|
|certificateValidityPeriodScale|[certificateValidityPeriodScale](../resources/intune_deviceconfig_certificatevalidityperiodscale.md)|Scale for the Certificate Validity Period Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md). Possible values are: `days`, `months`, `years`.|
|certificationAuthority|String|PKCS Certification Authority|
|certificationAuthorityName|String|PKCS Certification Authority Name|
|certificateTemplateName|String|PKCS Certificate Template Name|
|subjectAlternativeNameFormatString|String|Custom String that defines the AAD Attribute.|

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
  "@odata.type": "microsoft.graph.windows10PkcsCertificateProfile"
}
-->
``` json
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
  "certificateTemplateName": "String",
  "subjectAlternativeNameFormatString": "String"
}
```



