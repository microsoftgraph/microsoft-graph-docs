# Get mobileAppIdentifierDeployment
Read properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppPolicies/<id>/mobileAppIdentifierDeployments/<id>
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
If successful, this method returns a `200 OK` response code and [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppPolicies/<id>/mobileAppIdentifierDeployments/<id>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 274

{
  "value": {
    "@odata.type": "#microsoft.graph.mobileAppIdentifierDeployment",
    "mobileAppIdentifier": {
      "@odata.type": "microsoft.graph.mobileAppIdentifier"
    },
    "id": "5a77f582-f582-5a77-82f5-775a82f5775a",
    "version": "Version value"
  }
}
```



