# Create enterpriseCertificate

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/enterpriseCerts/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a enterpriseCertificate object.
The following table shows the properties that are required when you create a enterpriseCertificate.

|Property|Type|Description|
|---|---|---|
|id|String|The key of the entity.|
|certData|Binary|The Windows Enterprise Code-Signing Certificate in the raw data format.|
|issuedTo|String|The IssuedTo value for the cert.|
|issuedBy|String|The IssuedBy value for the cert.|
|certExpirationDate|DateTimeOffset|The Cert Expiration Date.|
|certStatus|Int32|The Cert Status Provisioned or not Provisioned.|
|certType|Int32|The Type of the CodeSigning Cert as Enterprise Cert.|



## Response
If successful, this method returns a `201 Created` response code and a [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/enterpriseCerts/
Content-type: application/json
Content-length: 263

{
  "@odata.type": "#microsoft.graph.enterpriseCertificate",
  "certData": "Y2VydERhdGE=",
  "issuedTo": "Issued To value",
  "issuedBy": "Issued By value",
  "certExpirationDate": "2016-12-31T23:56:39.3841403-08:00",
  "certStatus": 10,
  "certType": 8
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 312

{
  "@odata.type": "#microsoft.graph.enterpriseCertificate",
  "id": "3a9320b1-20b1-3a93-b120-933ab120933a",
  "certData": "Y2VydERhdGE=",
  "issuedTo": "Issued To value",
  "issuedBy": "Issued By value",
  "certExpirationDate": "2016-12-31T23:56:39.3841403-08:00",
  "certStatus": 10,
  "certType": 8
}
```



