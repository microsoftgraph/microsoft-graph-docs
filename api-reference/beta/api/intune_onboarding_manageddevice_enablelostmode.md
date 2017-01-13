# enableLostMode action> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Enable lost mode for a [managedDevice](../resources/intune_onboarding_manageddevice.md) object.

### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.PriviligedOperation.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedDevices/{id}/enableLostMode
POST /users/{id}/managedDevices/{id}/enableLostMode
POST /detectedapps/{id}/managedDevices/{id}/enableLostMode
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|message|String|Not yet documented|
|phoneNumber|String|Not yet documented|
|footer|String|Not yet documented|



### Response
If successful, this action returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedDevices/{id}/enableLostMode

Content-type: application/json
Content-length: 103

{
  "message": "Message value",
  "phoneNumber": "Phone Number value",
  "footer": "Footer value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
