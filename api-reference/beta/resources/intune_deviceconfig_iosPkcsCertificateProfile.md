# iosPkcsCertificateProfile resource type

iOS PKCS certificate profile.

Inherits from [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosPkcsCertificateProfiles](../api/intune_deviceconfig_iosPkcsCertificateProfile_list.md)|[iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md) collection|List properties and relationships of the [iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md) objects.|
|[Get iosPkcsCertificateProfile](../api/intune_deviceconfig_iosPkcsCertificateProfile_get.md)|[iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md)|Read properties and relationships of the [iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md) object.|
|[Create iosPkcsCertificateProfile](../api/intune_deviceconfig_iosPkcsCertificateProfile_create.md)|[iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md)|Create a new [iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md) object.|
|[Delete iosPkcsCertificateProfile](../api/intune_deviceconfig_iosPkcsCertificateProfile_delete.md)|None|Deletes a [iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md).|
|[Update iosPkcsCertificateProfile](../api/intune_deviceconfig_iosPkcsCertificateProfile_update.md)|[iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md)|Update the properties of a [iosPkcsCertificateProfile](../resources/intune_deviceconfig_iosPkcsCertificateProfile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosPkcsCertificateProfile_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_iosPkcsCertificateProfile_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_iosPkcsCertificateProfile_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
|certificationAuthority|String|PKCS Certification Authority.|
|certificationAuthorityName|String|PKCS Certification Authority Name.|
|certificateTemplateName|String|PKCS Certificate Template Name.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosPkcsCertificateProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosPkcsCertificateProfile",
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
  "certificationAuthority": "String",
  "certificationAuthorityName": "String",
  "certificateTemplateName": "String"
}
```


