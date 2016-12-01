# macOSScepCertificateProfile resource type

Mac OS SCEP certificate profile.

Inherits from [macOSCertificateProfileBase](macOSCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSScepCertificateProfiles](../api/macOSScepCertificateProfile_list.md)|[macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md) collection|List properties and relationships of the [macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md) objects.|
|[Get macOSScepCertificateProfile](../api/macOSScepCertificateProfile_get.md)|[macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md)|Read properties and relationships of the [macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md) object.|
|[Create macOSScepCertificateProfile](../api/macOSScepCertificateProfile_create.md)|[macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md)|Create a new [macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md) object.|
|[Delete macOSScepCertificateProfile](../api/macOSScepCertificateProfile_delete.md)|None|Deletes a [macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md).|
|[Update macOSScepCertificateProfile](../api/macOSScepCertificateProfile_update.md)|[macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md)|Update the properties of a [macOSScepCertificateProfile](../resources/macOSScepCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/macOSScepCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/macOSScepCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/macOSScepCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get macOSTrustedRootCertificate](../api/macOSScepCertificateProfile_get_macOSTrustedRootCertificate.md)|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md)|Get the [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [macOSCertificateProfileBase](macOSCertificateProfileBase.md).|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [macOSCertificateProfileBase](macOSCertificateProfileBase.md). Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [macOSCertificateProfileBase](macOSCertificateProfileBase.md). Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](macOSCertificateProfileBase.md).|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](macOSCertificateProfileBase.md). Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificate|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md)|Trusted Root Certificate.|

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

