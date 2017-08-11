# Create windowsManagementAppHealthState

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/windowsManagementApp//healthStates/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a windowsManagementAppHealthState object.
The following table shows the properties that are required when you create a windowsManagementAppHealthState.

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the Windows management app health state|
|healthState|String|Windows management app health state. Possible values are: `unknown`, `healthy`, `unhealthy`.|
|installedVersion|String|Windows management app installed version.|
|lastCheckInDateTime|DateTimeOffset|Windows management app last check-in time.|
|deviceName|String|Name of the device on which Windows management app is installed.|
|deviceOSVersion|String|Windows 10 OS version of the device on which Windows management app is installed.|

## Response

If successful, this method returns a `201 Created` response code and a [windowsManagementAppHealthState](../resources/intune_devices_windowsmanagementapphealthstate.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/windowsManagementApp//healthStates/
Content-type: application/json
Content-length: 300

{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthState",
  "healthState": "healthy",
  "installedVersion": "Installed Version value",
  "lastCheckInDateTime": "2016-12-31T23:59:56.413532-08:00",
  "deviceName": "Device Name value",
  "deviceOSVersion": "Device OSVersion value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 349

{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthState",
  "id": "5c7e50fb-50fb-5c7e-fb50-7e5cfb507e5c",
  "healthState": "healthy",
  "installedVersion": "Installed Version value",
  "lastCheckInDateTime": "2016-12-31T23:59:56.413532-08:00",
  "deviceName": "Device Name value",
  "deviceOSVersion": "Device OSVersion value"
}
```



