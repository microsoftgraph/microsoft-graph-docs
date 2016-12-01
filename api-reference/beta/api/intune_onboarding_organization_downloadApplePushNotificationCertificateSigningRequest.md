# downloadApplePushNotificationCertificateSigningRequest function
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
GET /organization/<id>/downloadApplePushNotificationCertificateSigningRequest
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
GET https://graph.microsoft.com/beta/organization/<id>/downloadApplePushNotificationCertificateSigningRequest
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 66

Download Apple Push Notification Certificate Signing Request value
```



