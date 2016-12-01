# macOSScepCertificateProfile resource type

Mac OS SCEP certificate profile.

Inherits from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSScepCertificateProfiles](../api/intune_deviceconfig_macOSScepCertificateProfile_list.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) collection|List properties and relationships of the [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) objects.|
|[Get macOSScepCertificateProfile](../api/intune_deviceconfig_macOSScepCertificateProfile_get.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md)|Read properties and relationships of the [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object.|
|[Create macOSScepCertificateProfile](../api/intune_deviceconfig_macOSScepCertificateProfile_create.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md)|Create a new [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object.|
|[Delete macOSScepCertificateProfile](../api/intune_deviceconfig_macOSScepCertificateProfile_delete.md)|None|Deletes a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md).|
|[Update macOSScepCertificateProfile](../api/intune_deviceconfig_macOSScepCertificateProfile_update.md)|[macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md)|Update the properties of a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macOSScepCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_macOSScepCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_macOSScepCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get macOSTrustedRootCertificate](../api/intune_deviceconfig_macOSScepCertificateProfile_get_macOSTrustedRootCertificate.md)|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macOSTrustedRootCertificate.md)|Get the [macOSTrustedRootCertificate](../resources/intune_deviceconfig_macOSTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md) Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](../resources/intune_deviceconfig_macOSCertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|rootCertificate|[macOSTrustedRootCertificate](../resources/intune_deviceconfig_macOSTrustedRootCertificate.md)|Trusted Root Certificate.|

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


