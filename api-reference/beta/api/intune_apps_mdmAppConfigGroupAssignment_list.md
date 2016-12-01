# List mdmAppConfigGroupAssignments
List properties and relationships of the [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /iosMobileAppConfigurations/<id>/groupAssignments/
GET /appConfigurationGroupAssignments/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/iosMobileAppConfigurations/<id>/groupAssignments/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 262

{
  "value": [
    {
      "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
      "appConfiguration": "App Configuration value",
      "targetGroupId": "Target Group Id value",
      "id": "347b9b52-9b52-347b-529b-7b34529b7b34"
    }
  ]
}
```



