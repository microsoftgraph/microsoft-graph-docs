# Update androidScepCertificateProfile
Update the properties of a [androidScepCertificateProfile](../resources/intune_deviceconfig_androidScepCertificateProfile.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/<id>
PATCH /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration
PATCH /deviceConfigurationAssignments/<id>/deviceConfiguration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [androidScepCertificateProfile](../resources/intune_deviceconfig_androidScepCertificateProfile.md) object.
The following table shows the properties that are required when you create a [androidScepCertificateProfile](../resources/intune_deviceconfig_androidScepCertificateProfile.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md).|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md). Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md). Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md).|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md). Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [androidCertificateProfileBase](intune_deviceconfig_androidCertificateProfileBase.md).|
|scepServerUrls|String collection|SCEP Server Url(s)|
|keyUsage|String|SCEP Key Usage Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm Possible values are: `sha1`, `sha2`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [androidScepCertificateProfile](../resources/intune_deviceconfig_androidScepCertificateProfile.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 728

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "subjectNameFormat": "commonNameIncludingEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 30,
  "certificateValidityPeriodScale": "months",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ],
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 904

{
  "@odata.type": "#microsoft.graph.androidScepCertificateProfile",
  "id": "e9a0dbbd-dbbd-e9a0-bddb-a0e9bddba0e9",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "subjectNameFormat": "commonNameIncludingEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 30,
  "certificateValidityPeriodScale": "months",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ],
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2"
}
```



