# Update deviceManagementScriptRunSummary

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/runSummary/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md) object.
The following table shows the properties that are required when you create a [deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the device management script run summary entity.|
|successDeviceCount|Int32|Success device count.|
|errorDeviceCount|Int32|Error device count.|
|successUserCount|Int32|Success user count.|
|errorUserCount|Int32|Error user count.|

## Response

If successful, this method returns a `200 OK` response code and an updated [deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/runSummary/
Content-type: application/json
Content-length: 108

{
  "successDeviceCount": 2,
  "errorDeviceCount": 0,
  "successUserCount": 0,
  "errorUserCount": 14
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 228

{
  "@odata.type": "#microsoft.graph.deviceManagementScriptRunSummary",
  "id": "514d5d38-5d38-514d-385d-4d51385d4d51",
  "successDeviceCount": 2,
  "errorDeviceCount": 0,
  "successUserCount": 0,
  "errorUserCount": 14
}
```



