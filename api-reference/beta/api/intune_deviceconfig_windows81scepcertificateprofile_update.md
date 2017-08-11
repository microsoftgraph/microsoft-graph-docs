# Update windows81SCEPCertificateProfile

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [windows81SCEPCertificateProfile](../resources/intune_deviceconfig_windows81scepcertificateprofile.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/groupAssignments/{deviceConfigurationGroupAssignmentId}/deviceConfiguration/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [windows81SCEPCertificateProfile](../resources/intune_deviceconfig_windows81scepcertificateprofile.md) object.
The following table shows the properties that are required when you create a [windows81SCEPCertificateProfile](../resources/intune_deviceconfig_windows81scepcertificateprofile.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentStatus|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentProgress|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentErrorMessage|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Valid values 1 to 99 Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|
|keyStorageProvider|String|Key Storage Provider (KSP) Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md) Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|subjectNameFormat|String|Certificate Subject Name Format Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md) Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`, `custom`.|
|subjectAlternativeNameType|String|Certificate Subject Alternative Name Type Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md) Possible values are: `emailAddress`, `userPrincipalName`, `customAzureADAttribute`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md)|
|certificateValidityPeriodScale|String|Scale for the Certificate Validity Period Inherited from [windowsCertificateProfileBase](../resources/intune_deviceconfig_windowscertificateprofilebase.md) Possible values are: `days`, `months`, `years`.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune_deviceconfig_extendedkeyusage.md) collection|Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements. Inherited from [windows81CertificateProfileBase](../resources/intune_deviceconfig_windows81certificateprofilebase.md)|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|
|keyUsage|String|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|keySize|String|SCEP Key Size. Possible values are: `size1024`, `size2048`.|
|hashAlgorithm|String|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|subjectAlternativeNameFormatString|String|Custom String that defines the AAD Attribute.|

## Response

If successful, this method returns a `200 OK` response code and an updated [windows81SCEPCertificateProfile](../resources/intune_deviceconfig_windows81scepcertificateprofile.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}
Content-type: application/json
Content-length: 1101

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "assignmentStatus": "Assignment Status value",
  "assignmentProgress": "Assignment Progress value",
  "assignmentErrorMessage": "Assignment Error Message value",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 10,
  "keyStorageProvider": "useTpmKspOtherwiseFail",
  "subjectNameFormat": "commonNameIncludingEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 14,
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
  "subjectNameFormatString": "Subject Name Format String value",
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2",
  "subjectAlternativeNameFormatString": "Subject Alternative Name Format String value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1279

{
  "@odata.type": "#microsoft.graph.windows81SCEPCertificateProfile",
  "id": "2daf8af2-8af2-2daf-f28a-af2df28aaf2d",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "assignmentStatus": "Assignment Status value",
  "assignmentProgress": "Assignment Progress value",
  "assignmentErrorMessage": "Assignment Error Message value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "renewalThresholdPercentage": 10,
  "keyStorageProvider": "useTpmKspOtherwiseFail",
  "subjectNameFormat": "commonNameIncludingEmail",
  "subjectAlternativeNameType": "userPrincipalName",
  "certificateValidityPeriodValue": 14,
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
  "subjectNameFormatString": "Subject Name Format String value",
  "keyUsage": "digitalSignature",
  "keySize": "size2048",
  "hashAlgorithm": "sha2",
  "subjectAlternativeNameFormatString": "Subject Alternative Name Format String value"
}
```



