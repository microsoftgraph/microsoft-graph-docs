# androidWorkProfileScepCertificateProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Androif Work Profile SCEP certificate profile

Inherits from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidWorkProfileScepCertificateProfiles](../api/intune_deviceconfig_androidworkprofilescepcertificateprofile_list.md)|[androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) collection|List properties and relationships of the [androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) objects.|
|[Get androidWorkProfileScepCertificateProfile](../api/intune_deviceconfig_androidworkprofilescepcertificateprofile_get.md)|[androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md)|Read properties and relationships of the [androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) object.|
|[Create androidWorkProfileScepCertificateProfile](../api/intune_deviceconfig_androidworkprofilescepcertificateprofile_create.md)|[androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md)|Create a new [androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) object.|
|[Delete androidWorkProfileScepCertificateProfile](../api/intune_deviceconfig_androidworkprofilescepcertificateprofile_delete.md)|None|Deletes a [androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md).|
|[Update androidWorkProfileScepCertificateProfile](../api/intune_deviceconfig_androidworkprofilescepcertificateprofile_update.md)|[androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md)|Update the properties of a [androidWorkProfileScepCertificateProfile](../resources/intune_deviceconfig_androidworkprofilescepcertificateprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Valid values 1 to 99 Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)|
|subjectNameFormat|[subjectNameFormat](../resources/intune_deviceconfig_subjectnameformat.md)|Certificate Subject Name Format. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md). Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`, `custom`, `commonNameAsIMEI`, `commonNameAsSerialNumber`, `commonNameAsAadDeviceId`, `commonNameAsIntuneDeviceId`, `commonNameAsDurableDeviceId`.|
|subjectAlternativeNameType|[subjectAlternativeNameType](../resources/intune_deviceconfig_subjectalternativenametype.md)|Certificate Subject Alternative Name Type. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md). Possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)|
|certificateValidityPeriodScale|[certificateValidityPeriodScale](../resources/intune_deviceconfig_certificatevalidityperiodscale.md)|Scale for the Certificate Validity Period. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md). Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md) collection|Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)|
|scepServerUrls|String collection|SCEP Server Url(s)|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|[keyUsages](../resources/intune_deviceconfig_keyusages.md)|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|[keySize](../resources/intune_deviceconfig_keysize.md)|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|[hashAlgorithms](../resources/intune_deviceconfig_hashalgorithms.md)|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
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
|rootCertificate|[androidWorkProfileTrustedRootCertificate](../resources/intune_deviceconfig_androidworkprofiletrustedrootcertificate.md)|Trusted Root Certificate. Inherited from [androidWorkProfileCertificateProfileBase](../resources/intune_deviceconfig_androidworkprofilecertificateprofilebase.md)|
|managedDeviceCertificateStates|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) collection|Certificate state for devices|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidWorkProfileScepCertificateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidWorkProfileScepCertificateProfile",
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
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ],
  "scepServerUrls": [
    "String"
  ],
  "subjectNameFormatString": "String",
  "keyUsage": "String",
  "keySize": "String",
  "hashAlgorithm": "String",
  "subjectAlternativeNameFormatString": "String"
}
```



