# bypassActivationLock action> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Bypass activation lock for a [managedDevice](../resources/intune_onboarding_manageddevice.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.PriviligedOperation.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedDevices/{id}/bypassActivationLock
POST /users/{id}/managedDevices/{id}/bypassActivationLock
POST /detectedapps/{id}/managedDevices/{id}/bypassActivationLock
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
POST https://graph.microsoft.com/beta/managedDevices/{id}/bypassActivationLock
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
