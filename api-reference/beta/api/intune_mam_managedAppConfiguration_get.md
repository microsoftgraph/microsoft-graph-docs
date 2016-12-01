# Get managedAppConfiguration
Read properties and relationships of the [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppPolicies/<id>
GET /managedAppRegistrations/<id>/appliedPolicies/<id>
GET /managedAppRegistrations/<id>/intendedPolicies/<id>
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
If successful, this method returns a `200 OK` response code and [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppPolicies/<id>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 514

{
  "value": {
    "@odata.type": "#microsoft.graph.managedAppConfiguration",
    "displayName": "Display Name value",
    "description": "Description value",
    "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
    "deployedAppCount": 16,
    "id": "2ed27cb5-7cb5-2ed2-b57c-d22eb57cd22e",
    "version": "Version value",
    "customSettings": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "Name value",
        "value": "Value value"
      }
    ]
  }
}
```



