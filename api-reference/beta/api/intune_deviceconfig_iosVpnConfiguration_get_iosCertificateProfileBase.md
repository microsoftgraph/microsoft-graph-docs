# Get iosCertificateProfileBase
Get the [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) from the identityCertificate navigation property.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosVpnConfiguration/identityCertificate/
GET /deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosEasEmailProfileConfiguration/identityCertificate/
GET /deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosEasEmailProfileConfiguration/smimeSigningCertificate/
GET /deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosEnterpriseWiFiConfiguration/identityCertificateForClientAuthentication/
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [iosCertificateProfileBase](../resources/intune_deviceconfig_iosCertificateProfileBase.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosVpnConfiguration/identityCertificate/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 602

{
  "value": {
    "@odata.type": "#microsoft.graph.iosCertificateProfileBase",
    "id": "b90209cb-09cb-b902-cb09-02b9cb0902b9",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "description": "Description value",
    "displayName": "Display Name value",
    "version": 7,
    "renewalThresholdPercentage": 26,
    "subjectNameFormat": "commonNameAsEmail",
    "subjectAlternativeNameType": "userPrincipalName",
    "certificateValidityPeriodValue": 30,
    "certificateValidityPeriodScale": "months"
  }
}
```



