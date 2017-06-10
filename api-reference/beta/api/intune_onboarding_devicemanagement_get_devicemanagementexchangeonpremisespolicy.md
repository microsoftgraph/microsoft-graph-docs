# Get deviceManagementExchangeOnPremisesPolicy

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the [deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) from the exchangeOnPremisesPolicy navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.Read.All; DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/exchangeOnPremisesPolicy/
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/exchangeOnPremisesPolicy/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 777

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceManagementExchangeOnPremisesPolicy",
    "id": "16e76336-6336-16e7-3663-e7163663e716",
    "notificationContent": "bm90aWZpY2F0aW9uQ29udGVudA==",
    "defaultAccessLevel": "allow",
    "accessRules": [
      {
        "@odata.type": "microsoft.graph.deviceManagementExchangeAccessRule",
        "deviceClass": {
          "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
          "name": "Name value",
          "type": "model"
        },
        "accessLevel": "allow"
      }
    ],
    "knownDeviceClasses": [
      {
        "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
        "name": "Name value",
        "type": "model"
      }
    ]
  }
}
```



