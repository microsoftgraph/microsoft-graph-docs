# windowsPhone81SCEPCertificateProfile resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Phone 8.1+ SCEP certificate profile

Inherits from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81SCEPCertificateProfiles](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_list.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) collection|List properties and relationships of the [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) objects.|
|[Get windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_get.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md)|Read properties and relationships of the [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) object.|
|[Create windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_create.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md)|Create a new [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) object.|
|[Delete windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_delete.md)|None|Deletes a [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md).|
|[Update windowsPhone81SCEPCertificateProfile](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_update.md)|[windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md)|Update the properties of a [windowsPhone81SCEPCertificateProfile](../resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|
|[Get windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsphone81scepcertificateprofile_get_windowsphone81trustedrootcertificate.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsphone81trustedrootcertificate.md)|Get the [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsphone81trustedrootcertificate.md) from the rootCertificate navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP). Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md) Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validtiy Period. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md) collection|Extended Key Usage (EKU) settings. Inherited from [windowsPhone81CertificateProfileBase](../resources/intune_deviceconfig_windowsphone81certificateprofilebase.md)|
|scepServerUrls|String collection|SCEP Server Url(s).|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|rootCertificate|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsphone81trustedrootcertificate.md)|Trusted Root Certificate.|

## JSON Representation
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



