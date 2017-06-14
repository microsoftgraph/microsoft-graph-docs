# List cloudPkiSubscriptions

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/cloudPkiSubscriptions/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/cloudPkiSubscriptions/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1025

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPkiSubscription",
      "id": "ed4ad7e9-d7e9-ed4a-e9d7-4aede9d74aed",
      "cloudPkiProvider": "symantec",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "description": "Description value",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "displayName": "Display Name value",
      "syncStatus": "succeeded",
      "lastSyncError": "Last Sync Error value",
      "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
      "credentials": {
        "@odata.type": "microsoft.graph.cloudPkiAdministratorCredentials",
        "adminUserName": "Admin User Name value",
        "adminPassword": "Admin Password value",
        "authenticationCertificate": "YXV0aGVudGljYXRpb25DZXJ0aWZpY2F0ZQ==",
        "authenticationCertificatePassword": "Authentication Certificate Password value"
      },
      "trustedRootCertificate": "dHJ1c3RlZFJvb3RDZXJ0aWZpY2F0ZQ==",
      "version": 7
    }
  ]
}
```



