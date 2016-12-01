# iosScepCertificateProfile resource type

iOS SCEP certificate profile.

Inherits from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosScepCertificateProfiles](../api/iosScepCertificateProfile_list.md)|[iosScepCertificateProfile](../resources/iosScepCertificateProfile.md) collection|List properties and relationships of the [iosScepCertificateProfile](../resources/iosScepCertificateProfile.md) objects.|
|[Get iosScepCertificateProfile](../api/iosScepCertificateProfile_get.md)|[iosScepCertificateProfile](../resources/iosScepCertificateProfile.md)|Read properties and relationships of the [iosScepCertificateProfile](../resources/iosScepCertificateProfile.md) object.|
|[Create iosScepCertificateProfile](../api/iosScepCertificateProfile_create.md)|[iosScepCertificateProfile](../resources/iosScepCertificateProfile.md)|Create a new [iosScepCertificateProfile](../resources/iosScepCertificateProfile.md) object.|
|[Delete iosScepCertificateProfile](../api/iosScepCertificateProfile_delete.md)|None|Deletes a [iosScepCertificateProfile](../resources/iosScepCertificateProfile.md).|
|[Update iosScepCertificateProfile](../api/iosScepCertificateProfile_update.md)|[iosScepCertificateProfile](../resources/iosScepCertificateProfile.md)|Update the properties of a [iosScepCertificateProfile](../resources/iosScepCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/iosScepCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/iosScepCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/iosScepCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get iosTrustedRootCertificate](../api/iosScepCertificateProfile_get_iosTrustedRootCertificate.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md)|Get the [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md) Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name type. Inherited from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [iosCertificateProfileBase](../resources/iosCertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificate|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md)|Trusted Root Certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosScepCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosScepCertificateProfile",
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
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ]
}
```

