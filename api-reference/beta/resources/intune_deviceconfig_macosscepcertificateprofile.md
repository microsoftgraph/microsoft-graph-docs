﻿# macOSScepCertificateProfile resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Mac OS SCEP certificate profile.

Inherits from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSScepCertificateProfiles](../api/intune_deviceconfig_macosscepcertificateprofile_list.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md) collection|List properties and relationships of the [macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md) objects.|
|[Get macOSScepCertificateProfile](../api/intune_deviceconfig_macosscepcertificateprofile_get.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md)|Read properties and relationships of the [macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md) object.|
|[Create macOSScepCertificateProfile](../api/intune_deviceconfig_macosscepcertificateprofile_create.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md)|Create a new [macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md) object.|
|[Delete macOSScepCertificateProfile](../api/intune_deviceconfig_macosscepcertificateprofile_delete.md)|None|Deletes a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md).|
|[Update macOSScepCertificateProfile](../api/intune_deviceconfig_macosscepcertificateprofile_update.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md)|Update the properties of a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macosscepcertificateprofile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macosscepcertificateprofile_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_macosscepcertificateprofile_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_macosscepcertificateprofile_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get macOSTrustedRootCertificate](../api/intune_deviceconfig_macosscepcertificateprofile_get_macostrustedrootcertificate.md)|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md)|Get the [macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md) Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macoscertificateprofilebase.md) Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md) collection|Extended Key Usage (EKU) settings.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificate|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macostrustedrootcertificate.md)|Trusted Root Certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSScepCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSScepCertificateProfile",
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
  "scepServerUrls": [
    "String"
  ],
  "subjectNameFormatString": "String",
  "keyUsage": "String",
  "keySize": "String",
  "hashAlgorithm": "String",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ]
}
```



