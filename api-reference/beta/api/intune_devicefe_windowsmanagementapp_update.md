# Update windowsManagementApp

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/windowsManagementApp/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md) object.
The following table shows the properties that are required when you create a [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md).

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the Windows management app|
|availableVersion|String|Windows management app available version.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/windowsManagementApp/
Content-type: application/json
Content-length: 53

{
  "availableVersion": "Available Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 161

{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "id": "5facc79c-c79c-5fac-9cc7-ac5f9cc7ac5f",
  "availableVersion": "Available Version value"
}
```



