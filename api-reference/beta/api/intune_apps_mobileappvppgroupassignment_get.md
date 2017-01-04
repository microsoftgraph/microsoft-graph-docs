# Get mobileAppVppGroupAssignment
Read properties and relationships of the [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /mobileAppGroupAssignments/{id}
GET /deviceAppManagement/mobileApps/{id}/groupAssignments/{id}
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
If successful, this method returns a `200 OK` response code and [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/mobileAppGroupAssignments/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 260

{
  "value": {
    "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
    "targetGroupId": "Target Group Id value",
    "id": "89a8674a-674a-89a8-4a67-a8894a67a889",
    "installIntent": "notApplicable",
    "useDeviceLicensing": true
  }
}
```



