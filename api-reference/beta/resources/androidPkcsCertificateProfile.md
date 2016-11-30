# androidPkcsCertificateProfile resource type

Android PKCS certificate profile

Inherits from [androidCertificateProfileBase](androidCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidPkcsCertificateProfiles](../api/androidPkcsCertificateProfile_list.md)|[androidPkcsCertificateProfile](androidPkcsCertificateProfile.md) collection|List properties and relationships of the [androidPkcsCertificateProfile](../resource/androidPkcsCertificateProfile.md) objects.|
|[Get androidPkcsCertificateProfile](../api/androidPkcsCertificateProfile_get.md)|[androidPkcsCertificateProfile](androidPkcsCertificateProfile.md)|Read properties and relationships of the [androidPkcsCertificateProfile](../resource/androidPkcsCertificateProfile.md) object.|
|[Create androidPkcsCertificateProfile](../api/androidPkcsCertificateProfile_create.md)|[androidPkcsCertificateProfile](androidPkcsCertificateProfile.md)|Create a new [androidPkcsCertificateProfile](../resource/androidPkcsCertificateProfile.md) object.|
|[Delete androidPkcsCertificateProfile](../api/androidPkcsCertificateProfile_delete.md)|None|Deletes a [androidPkcsCertificateProfile](../resource/androidPkcsCertificateProfile.md).|
|[Update androidPkcsCertificateProfile](../api/androidPkcsCertificateProfile_update.md)|[androidPkcsCertificateProfile](androidPkcsCertificateProfile.md)|Update the properties of a [androidPkcsCertificateProfile](../resource/androidPkcsCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidPkcsCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidPkcsCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidPkcsCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/androidPkcsCertificateProfile_get_androidTrustedRootCertificate.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Get the [androidTrustedRootCertificate](androidTrustedRootCertificate.md) from the rootCertificate navigation property.|

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
|extendedKeyUsages|[extendedKeyUsage](extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md).|
|certificationAuthority|String|PKCS Certification Authority|
|certificationAuthorityName|String|PKCS Certification Authority Name|
|certificateTemplateName|String|PKCS Certificate Template Name|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|rootCertificate|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Trusted Root Certificate. Inherited from [androidCertificateProfileBase](androidCertificateProfileBase.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidPkcsCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidPkcsCertificateProfile",
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
  "certificationAuthority": "String",
  "certificationAuthorityName": "String",
  "certificateTemplateName": "String"
}
```

