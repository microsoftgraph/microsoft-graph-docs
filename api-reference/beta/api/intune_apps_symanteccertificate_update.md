# Update symantecCertificate

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [symantecCertificate](../resources/intune_apps_symanteccertificate.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/symantecCert/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [symantecCertificate](../resources/intune_apps_symanteccertificate.md) object.
The following table shows the properties that are required when you create a [symantecCertificate](../resources/intune_apps_symanteccertificate.md).

|Property|Type|Description|
|---|---|---|
|id|String|The key of the entity.|
|certData|Binary|The Windows Symantec Code-Signing Certificate in the raw data format.|
|password|String|The Password required for .pfx file.|
|issuedTo|String|The IssuedTo value for the cert.|
|issuedBy|String|The IssuedBy value for the cert.|
|certExpirationDate|DateTimeOffset|The Cert Expiration Date.|
|certStatus|Int32|The Cert Status Provisioned or not Provisioned.|
|certType|Int32|The Type of the CodeSigning Cert as Symantec Cert.|

## Response

If successful, this method returns a `200 OK` response code and an updated [symantecCertificate](../resources/intune_apps_symanteccertificate.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/symantecCert/
Content-type: application/json
Content-length: 236

{
  "certData": "Y2VydERhdGE=",
  "password": "Password value",
  "issuedTo": "Issued To value",
  "issuedBy": "Issued By value",
  "certExpirationDate": "2016-12-31T23:56:39.3841403-08:00",
  "certStatus": 10,
  "certType": 8
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 343

{
  "@odata.type": "#microsoft.graph.symantecCertificate",
  "id": "045e262c-262c-045e-2c26-5e042c265e04",
  "certData": "Y2VydERhdGE=",
  "password": "Password value",
  "issuedTo": "Issued To value",
  "issuedBy": "Issued By value",
  "certExpirationDate": "2016-12-31T23:56:39.3841403-08:00",
  "certStatus": 10,
  "certType": 8
}
```



