# remoteLock action
Remote lock a [managedDevice](../resources/intune_onboarding_manageddevice.md) object.

### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.PriviligedOperation.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedDevices/<id>/remoteLock
POST /users/<id>/managedDevices/<id>/remoteLock
POST /detectedapps/<id>/managedDevices/<id>/remoteLock
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
POST https://graph.microsoft.com/beta/managedDevices/<id>/remoteLock
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
