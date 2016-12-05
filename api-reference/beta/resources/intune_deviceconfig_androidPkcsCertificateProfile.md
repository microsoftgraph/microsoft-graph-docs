# androidPkcsCertificateProfile resource type

Android PKCS certificate profile

Inherits from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidPkcsCertificateProfiles](../api/intune_deviceconfig_androidPkcsCertificateProfile_list.md)|[androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md) collection|List properties and relationships of the [androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md) objects.|
|[Get androidPkcsCertificateProfile](../api/intune_deviceconfig_androidPkcsCertificateProfile_get.md)|[androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md)|Read properties and relationships of the [androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md) object.|
|[Create androidPkcsCertificateProfile](../api/intune_deviceconfig_androidPkcsCertificateProfile_create.md)|[androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md)|Create a new [androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md) object.|
|[Delete androidPkcsCertificateProfile](../api/intune_deviceconfig_androidPkcsCertificateProfile_delete.md)|None|Deletes a [androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md).|
|[Update androidPkcsCertificateProfile](../api/intune_deviceconfig_androidPkcsCertificateProfile_update.md)|[androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md)|Update the properties of a [androidPkcsCertificateProfile](../resources/intune_deviceconfig_androidPkcsCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidPkcsCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_androidPkcsCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_androidPkcsCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/intune_deviceconfig_androidPkcsCertificateProfile_get_androidTrustedRootCertificate.md)|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidTrustedRootCertificate.md)|Get the [androidTrustedRootCertificate](../resources/intune_deviceconfig_androidTrustedRootCertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|
|certificationAuthority|String|PKCS Certification Authority|
|certificationAuthorityName|String|PKCS Certification Authority Name|
|certificateTemplateName|String|PKCS Certificate Template Name|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|rootCertificate|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidTrustedRootCertificate.md)|Trusted Root Certificate. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidCertificateProfileBase.md)|

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


