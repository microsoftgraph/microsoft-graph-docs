# androidScepCertificateProfile resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Android SCEP certificate profile

Inherits from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidScepCertificateProfiles](../api/intune_deviceconfig_androidscepcertificateprofile_list.md)|[androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md) collection|List properties and relationships of the [androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md) objects.|
|[Get androidScepCertificateProfile](../api/intune_deviceconfig_androidscepcertificateprofile_get.md)|[androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md)|Read properties and relationships of the [androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md) object.|
|[Create androidScepCertificateProfile](../api/intune_deviceconfig_androidscepcertificateprofile_create.md)|[androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md)|Create a new [androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md) object.|
|[Delete androidScepCertificateProfile](../api/intune_deviceconfig_androidscepcertificateprofile_delete.md)|None|Deletes a [androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md).|
|[Update androidScepCertificateProfile](../api/intune_deviceconfig_androidscepcertificateprofile_update.md)|[androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md)|Update the properties of a [androidScepCertificateProfile](../resources/intune_deviceconfig_androidscepcertificateprofile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidscepcertificateprofile_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_androidscepcertificateprofile_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_androidscepcertificateprofile_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get androidTrustedRootCertificate](../api/intune_deviceconfig_androidscepcertificateprofile_get_androidtrustedrootcertificate.md)|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md)|Get the [androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md) from the rootCertificate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md) collection|Extended Key Usage (EKU) settings. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|
|scepServerUrls|String collection|SCEP Server Url(s)|
|keyUsage|String|SCEP Key Usage Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm Possible values are: `sha1`, `sha2`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificate|[androidTrustedRootCertificate](../resources/intune_deviceconfig_androidtrustedrootcertificate.md)|Trusted Root Certificate. Inherited from [androidCertificateProfileBase](../resources/intune_deviceconfig_androidcertificateprofilebase.md)|

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



