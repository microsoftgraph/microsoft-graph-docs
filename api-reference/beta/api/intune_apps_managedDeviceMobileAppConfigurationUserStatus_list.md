# List managedDeviceMobileAppConfigurationUserStatuss
List properties and relationships of the [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /iosMobileAppConfigurations/<id>/userStatuses/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/iosMobileAppConfigurations/<id>/userStatuses/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 279

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus",
      "id": "44960944-0944-4496-4409-964444099644",
      "status": "notApplicable",
      "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00"
    }
  ]
}
```



