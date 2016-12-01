# windowsPhone81SCEPCertificateProfile resource type

Windows Phone 8.1+ SCEP certificate profile

Inherits from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81SCEPCertificateProfiles](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_list.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md) collection|List properties and relationships of the [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md) objects.|
|[Get windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_get.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md)|Read properties and relationships of the [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md) object.|
|[Create windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_create.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md)|Create a new [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md) object.|
|[Delete windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_delete.md)|None|Deletes a [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md).|
|[Update windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_update.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md)|Update the properties of a [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsPhone81SCEPCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsPhone81SCEPCertificateProfile_get_windowsPhone81TrustedRootCertificate.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md)|Get the [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP). Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validtiy Period. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsPhone81CertificateProfileBase.md)|
|scepServerUrls|String collection|SCEP Server Url(s).|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|rootCertificate|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md)|Trusted Root Certificate.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhone81SCEPCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81SCEPCertificateProfile",
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


