# androidScepCertificateProfile resource type

Android SCEP certificate profile

Inherits from [androidCertificateProfileBase](androidCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidScepCertificateProfiles](../api/androidScepCertificateProfile_list.md)|[androidScepCertificateProfile](../resources/androidScepCertificateProfile.md) collection|List properties and relationships of the [androidScepCertificateProfile](../resources/androidScepCertificateProfile.md) objects.|
|[Get androidScepCertificateProfile](../api/androidScepCertificateProfile_get.md)|[androidScepCertificateProfile](../resources/androidScepCertificateProfile.md)|Read properties and relationships of the [androidScepCertificateProfile](../resources/androidScepCertificateProfile.md) object.|
|[Create androidScepCertificateProfile](../api/androidScepCertificateProfile_create.md)|[androidScepCertificateProfile](../resources/androidScepCertificateProfile.md)|Create a new [androidScepCertificateProfile](../resources/androidScepCertificateProfile.md) object.|
|[Delete androidScepCertificateProfile](../api/androidScepCertificateProfile_delete.md)|None|Deletes a [androidScepCertificateProfile](../resources/androidScepCertificateProfile.md).|
|[Update androidScepCertificateProfile](../api/androidScepCertificateProfile_update.md)|[androidScepCertificateProfile](../resources/androidScepCertificateProfile.md)|Update the properties of a [androidScepCertificateProfile](../resources/androidScepCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidScepCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidScepCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidScepCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/androidScepCertificateProfile_get_androidTrustedRootCertificate.md)|[androidTrustedRootCertificate](../resources/androidTrustedRootCertificate.md)|Get the [androidTrustedRootCertificate](../resources/androidTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md).|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md). Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md). Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md).|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md). Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md).|
|scepServerUrls|String collection|SCEP Server Url(s)|
|keyUsage|String|SCEP Key Usage Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm Possible values are: `sha1`, `sha2`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificate|[androidTrustedRootCertificate](../resources/androidTrustedRootCertificate.md)|Trusted Root Certificate. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidScepCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidScepCertificateProfile",
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
  "keyUsage": "String",
  "keySize": "String",
  "hashAlgorithm": "String"
}
```

