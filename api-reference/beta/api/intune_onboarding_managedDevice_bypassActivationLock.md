# bypassActivationLock action
Not yet documented
### Prerequisites
One of the following **scopes** is required to execute this API:

**TODO: Determine scopes **
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /detectedapps/<id>/managedDevices/<id>/bypassActivationLock
POST /managedDevices/<id>/bypassActivationLock
POST /users/<id>/managedDevices/<id>/bypassActivationLock
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
POST https://graph.microsoft.com/beta/detectedapps/<id>/managedDevices/<id>/bypassActivationLock
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



