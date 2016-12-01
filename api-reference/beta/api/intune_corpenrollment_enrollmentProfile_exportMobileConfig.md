# exportMobileConfig function
Not yet documented
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.Read.All; DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/enrollmentProfiles/<id>/exportMobileConfig
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this function returns a `200 OK` response code and a String in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/enrollmentProfiles/<id>/exportMobileConfig
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 26

Export Mobile Config value
```



