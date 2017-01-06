# rebootNow action
Reboot a [managedDevice](../resources/intune_onboarding_manageddevice.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementManagedDevices.PriviligedOperation.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedDevices/{id}/rebootNow
POST /users/{id}/managedDevices/{id}/rebootNow
POST /detectedapps/{id}/managedDevices/{id}/rebootNow
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
POST https://graph.microsoft.com/beta/managedDevices/{id}/rebootNow
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
