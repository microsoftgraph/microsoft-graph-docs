# windows81SCEPCertificateProfile resource type

Windows 8.1+ SCEP certificate profile

Inherits from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81SCEPCertificateProfiles](../api/windows81SCEPCertificateProfile_list.md)|[windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md) collection|List properties and relationships of the [windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md) objects.|
|[Get windows81SCEPCertificateProfile](../api/windows81SCEPCertificateProfile_get.md)|[windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md)|Read properties and relationships of the [windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md) object.|
|[Create windows81SCEPCertificateProfile](../api/windows81SCEPCertificateProfile_create.md)|[windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md)|Create a new [windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md) object.|
|[Delete windows81SCEPCertificateProfile](../api/windows81SCEPCertificateProfile_delete.md)|None|Deletes a [windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md).|
|[Update windows81SCEPCertificateProfile](../api/windows81SCEPCertificateProfile_update.md)|[windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md)|Update the properties of a [windows81SCEPCertificateProfile](../resources/windows81SCEPCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows81SCEPCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows81SCEPCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows81SCEPCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get windows81TrustedRootCertificate](../api/windows81SCEPCertificateProfile_get_windows81TrustedRootCertificate.md)|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md)|Get the [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP) Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings Inherited from [windows81CertificateProfileBase](../resources/windows81CertificateProfileBase.md)|
|scepServerUrls|String collection|SCEP Server Url(s).|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificate|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md)|Trusted Root Certificate|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows81SCEPCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81SCEPCertificateProfile",
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

