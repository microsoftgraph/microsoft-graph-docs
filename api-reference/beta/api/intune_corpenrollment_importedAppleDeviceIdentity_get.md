# Get importedAppleDeviceIdentity
Read properties and relationships of the [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.Read.All; DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/importedAppleDeviceIdentities/<id>
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
If successful, this method returns a `200 OK` response code and [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/importedAppleDeviceIdentities/<id>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 648

{
  "value": {
    "@odata.type": "#microsoft.graph.importedAppleDeviceIdentity",
    "id": "352e3c2f-3c2f-352e-2f3c-2e352f3c2e35",
    "serialNumber": "Serial Number value",
    "requestedEnrollmentProfileId": "Requested Enrollment Profile Id value",
    "requestedEnrollmentProfileAssignmentDateTime": "2017-01-01T00:02:32.8167841-08:00",
    "isSupervised": true,
    "discoverySource": "adminImport",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
    "description": "Description value",
    "enrollmentState": "enrolled",
    "platform": "ios"
  }
}
```



