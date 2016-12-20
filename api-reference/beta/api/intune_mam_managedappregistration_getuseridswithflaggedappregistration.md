# getUserIdsWithFlaggedAppRegistration function
Read user IDs with flagged app registrations.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /managedAppRegistrations//getUserIdsWithFlaggedAppRegistration
GET /users/{id}/managedAppRegistrations//getUserIdsWithFlaggedAppRegistration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this function returns a `200 OK` response code and a String collection in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/managedAppRegistrations//getUserIdsWithFlaggedAppRegistration
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 58

[
  "Get User Ids With Flagged App Registration value"
]
```
