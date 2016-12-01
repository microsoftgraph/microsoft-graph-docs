# List deviceConfigurationDeviceStatuss
List properties and relationships of the [deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/<id>/deviceStatuses/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>/deviceStatuses/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 265

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceConfigurationDeviceStatus",
      "id": "674e98e5-98e5-674e-e598-4e67e5984e67",
      "status": "notApplicable",
      "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00"
    }
  ]
}
```



