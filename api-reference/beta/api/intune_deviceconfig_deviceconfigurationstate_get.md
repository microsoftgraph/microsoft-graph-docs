# Get deviceConfigurationState

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedDevices/{managedDevicesId}/deviceConfigurationStates/{deviceConfigurationStateId}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedDevices/{managedDevicesId}/deviceConfigurationStates/{deviceConfigurationStateId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 634

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceConfigurationState",
    "id": "11692784-2784-1169-8427-691184276911",
    "settingStates": [
      {
        "@odata.type": "microsoft.graph.deviceConfigurationSettingState",
        "setting": "Setting value",
        "instanceDisplayName": "Instance Display Name value",
        "state": "notApplicable",
        "errorCode": 9,
        "errorDescription": "Error Description value"
      }
    ],
    "displayName": "Display Name value",
    "version": 7,
    "platformType": "androidForWork",
    "state": "notApplicable",
    "settingCount": 12
  }
}
```



