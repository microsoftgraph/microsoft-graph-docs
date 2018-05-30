# macOSImportedPFXCertificateProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

MacOS PFX Import certificate profile

Inherits from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSImportedPFXCertificateProfiles](../api/intune_deviceconfig_macosimportedpfxcertificateprofile_list.md)|[macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md) collection|List properties and relationships of the [macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md) objects.|
|[Get macOSImportedPFXCertificateProfile](../api/intune_deviceconfig_macosimportedpfxcertificateprofile_get.md)|[macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md)|Read properties and relationships of the [macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md) object.|
|[Create macOSImportedPFXCertificateProfile](../api/intune_deviceconfig_macosimportedpfxcertificateprofile_create.md)|[macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md)|Create a new [macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md) object.|
|[Delete macOSImportedPFXCertificateProfile](../api/intune_deviceconfig_macosimportedpfxcertificateprofile_delete.md)|None|Deletes a [macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md).|
|[Update macOSImportedPFXCertificateProfile](../api/intune_deviceconfig_macosimportedpfxcertificateprofile_update.md)|[macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md)|Update the properties of a [macOSImportedPFXCertificateProfile](../resources/intune_deviceconfig_macosimportedpfxcertificateprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|
|subjectNameFormat|[appleSubjectNameFormat](../resources/intune_deviceconfig_applesubjectnameformat.md)|Certificate Subject Name Format. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md). Possible values are: `commonName`, `commonNameAsEmail`, `custom`, `commonNameIncludingEmail`, `commonNameAsIMEI`, `commonNameAsSerialNumber`.|
|subjectAlternativeNameType|[subjectAlternativeNameType](../resources/intune_deviceconfig_subjectalternativenametype.md)|Certificate Subject Alternative Name Type. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md). Possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|
|certificateValidityPeriodScale|[certificateValidityPeriodScale](../resources/intune_deviceconfig_certificatevalidityperiodscale.md)|Scale for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md). Possible values are: `days`, `months`, `years`.|
|intendedPurpose|[intendedPurpose](../resources/intune_deviceconfig_intendedpurpose.md)|Not yet documented. Possible values are: `unassigned`, `smimeEncryption`, `smimeSigning`, `vpn`, `wifi`.|

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
  "@odata.type": "microsoft.graph.macOSImportedPFXCertificateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSImportedPFXCertificateProfile",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "renewalThresholdPercentage": 1024,
  "subjectNameFormat": "String",
  "subjectAlternativeNameType": "String",
  "certificateValidityPeriodValue": 1024,
  "certificateValidityPeriodScale": "String",
  "intendedPurpose": "String"
}
```



