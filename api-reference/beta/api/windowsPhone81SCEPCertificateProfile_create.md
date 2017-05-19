# Create windowsPhone81SCEPCertificateProfile
Create a new [windowsPhone81SCEPCertificateProfile](../resources/windowsPhone81SCEPCertificateProfile.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/<id>
POST /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration
POST /deviceConfigurationAssignments/<id>/deviceConfiguration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a windowsPhone81SCEPCertificateProfile object.
The following table shows the properties that are required when you create a windowsPhone81SCEPCertificateProfile.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md).|
|keyStorageProvider|String|Key Storage Provider (KSP). Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md). Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md). Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md). Possible values are: `emailAddress`, `userPrincipalName`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validtiy Period. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md).|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md). Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/extendedKeyUsage.md) collection|Extended Key Usage (EKU) settings. Inherited from [windowsPhone81CertificateProfileBase](windowsPhone81CertificateProfileBase.md).|
|scepServerUrls|String collection|SCEP Server Url(s).|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|



### Response
If successful, this method returns a `201 Created` response code and a [windowsPhone81SCEPCertificateProfile](../resources/windowsPhone81SCEPCertificateProfile.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 854

{
  "@odata.type": "#microsoft.graph.windowsPhone81SCEPCertificateProfile",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "keyStorageProvider": "useTpmKspOtherwiseFail",
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
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 962

{
  "@odata.type": "#microsoft.graph.windowsPhone81SCEPCertificateProfile",
  "id": "f070e30e-e30e-f070-0ee3-70f00ee370f0",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 26,
  "keyStorageProvider": "useTpmKspOtherwiseFail",
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


