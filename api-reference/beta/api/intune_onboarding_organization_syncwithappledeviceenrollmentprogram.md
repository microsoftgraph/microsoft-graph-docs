# syncWithAppleDeviceEnrollmentProgram action
Request Apple DEP to send assigned serial numbers to the tenant.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /organization/{id}/syncWithAppleDeviceEnrollmentProgram
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this action returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/organization/{id}/syncWithAppleDeviceEnrollmentProgram
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
