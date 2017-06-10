# List managedDeviceMobileAppProvisioningConfigurationDeviceStatuses

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/deviceStatuses/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/deviceStatuses/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 407

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedDeviceMobileAppProvisioningConfigurationDeviceStatus",
      "id": "e09b54b6-54b6-e09b-b654-9be0b6549be0",
      "deviceDisplayName": "Device Display Name value",
      "status": "notApplicable",
      "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00",
      "userPrincipalName": "User Principal Name value"
    }
  ]
}
```



