# Update macOSScepCertificateProfile
Update the properties of a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object.
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
In the request body, supply a JSON representation of a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object.
The following table shows the properties that are required when you create a [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [macOSCertificateProfileBase](intune_deviceconfig_macOSCertificateProfileBase.md).|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [macOSCertificateProfileBase](intune_deviceconfig_macOSCertificateProfileBase.md). Possible values are: `commonName`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [macOSCertificateProfileBase](intune_deviceconfig_macOSCertificateProfileBase.md). Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](intune_deviceconfig_macOSCertificateProfileBase.md).|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [macOSCertificateProfileBase](intune_deviceconfig_macOSCertificateProfileBase.md). Possible values are: `days`, `months`, `years`.|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings.|



### Response
If successful, this method returns a `200 OK` response code and an updated [macOSScepCertificateProfile](../resources/intune_deviceconfig_macOSScepCertificateProfile.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 787

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "subjectNameFormat": "commonNameAsEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 30,
  "certificateValidityPeriodScale": "months",
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "subjectNameFormatString": "Subject Name Format String value",
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 961

{
  "@odata.type": "#microsoft.graph.macOSScepCertificateProfile",
  "id": "78c3929d-929d-78c3-9d92-c3789d92c378",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "subjectNameFormat": "commonNameAsEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 30,
  "certificateValidityPeriodScale": "months",
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "subjectNameFormatString": "Subject Name Format String value",
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ]
}
```



