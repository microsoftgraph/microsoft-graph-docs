# iosScepCertificateProfile resource type

iOS SCEP certificate profile.

Inherits from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosScepCertificateProfiles](../api/intune_deviceconfig_iosScepCertificateProfile_list.md)|[iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md) collection|List properties and relationships of the [iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md) objects.|
|[Get iosScepCertificateProfile](../api/intune_deviceconfig_iosScepCertificateProfile_get.md)|[iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md)|Read properties and relationships of the [iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md) object.|
|[Create iosScepCertificateProfile](../api/intune_deviceconfig_iosScepCertificateProfile_create.md)|[iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md)|Create a new [iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md) object.|
|[Delete iosScepCertificateProfile](../api/intune_deviceconfig_iosScepCertificateProfile_delete.md)|None|Deletes a [iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md).|
|[Update iosScepCertificateProfile](../api/intune_deviceconfig_iosScepCertificateProfile_update.md)|[iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md)|Update the properties of a [iosScepCertificateProfile](../resources/intune_deviceconfig_iosScepCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosScepCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_iosScepCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_iosScepCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get iosTrustedRootCertificate](../api/intune_deviceconfig_iosScepCertificateProfile_get_iosTrustedRootCertificate.md)|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iosTrustedRootCertificate.md)|Get the [iosTrustedRootCertificate](../resources/intune_deviceconfig_iosTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name type. Inherited from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|rootCertificate|[iosTrustedRootCertificate](../resources/intune_deviceconfig_iosTrustedRootCertificate.md)|Trusted Root Certificate.|

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


