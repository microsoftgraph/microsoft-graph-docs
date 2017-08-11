# Create deviceManagementScriptGroupAssignment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagementScriptGroupAssignments/
POST /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a deviceManagementScriptGroupAssignment object.
The following table shows the properties that are required when you create a deviceManagementScriptGroupAssignment.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the device management script group assignment entity.|
|targetGroupId|String|The Id of the Azure Active Directory group we are targeting the script to.|

## Response

If successful, this method returns a `201 Created` response code and a [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagementScriptGroupAssignments/
Content-type: application/json
Content-length: 124

{
  "@odata.type": "#microsoft.graph.deviceManagementScriptGroupAssignment",
  "targetGroupId": "Target Group Id value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 173

{
  "@odata.type": "#microsoft.graph.deviceManagementScriptGroupAssignment",
  "id": "ecd2357d-357d-ecd2-7d35-d2ec7d35d2ec",
  "targetGroupId": "Target Group Id value"
}
```



