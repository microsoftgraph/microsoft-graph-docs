# Get managedAppStatus
Read properties and relationships of the [managedAppStatus](../resources/intune_mam_managedAppStatus.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppStatuses/<id>
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
If successful, this method returns a `200 OK` response code and [managedAppStatus](../resources/intune_mam_managedAppStatus.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppStatuses/<id>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 205

{
  "value": {
    "@odata.type": "#microsoft.graph.managedAppStatus",
    "displayName": "Display Name value",
    "id": "ad1f7541-7541-ad1f-4175-1fad41751fad",
    "version": "Version value"
  }
}
```



