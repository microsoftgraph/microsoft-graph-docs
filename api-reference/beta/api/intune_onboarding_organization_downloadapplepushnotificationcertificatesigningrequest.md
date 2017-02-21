# downloadApplePushNotificationCertificateSigningRequest function

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following **scopes** is required to execute this API:

** DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All **
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /organization/{organizationId}/downloadApplePushNotificationCertificateSigningRequest
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a String in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/organization/{organizationId}/downloadApplePushNotificationCertificateSigningRequest
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 66

Download Apple Push Notification Certificate Signing Request value
```



