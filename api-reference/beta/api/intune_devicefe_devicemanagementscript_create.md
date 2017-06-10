# Create deviceManagementScript

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceManagementScripts/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a deviceManagementScript object.
The following table shows the properties that are required when you create a deviceManagementScript.

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device management script.|
|displayName|String|Name of the device management script.|
|description|String|Optional description for the device management script.|
|runSchedule|[runSchedule](../resources/intune_devicefe_runschedule.md)|The the interval for script to run. If not defined the script will run once|
|scriptContent|String|The base64 encoded script text.|
|createdDateTime|DateTimeOffset|The date and time the device management script was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified.|
|runAsAccount|String|Indicates the type of execution context the device management script runs in. Possible values are: `system`, `user`.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/
Content-type: application/json
Content-length: 354

{
  "@odata.type": "#microsoft.graph.deviceManagementScript",
  "displayName": "Display Name value",
  "description": "Description value",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "Script Content value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "runAsAccount": "user"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 462

{
  "@odata.type": "#microsoft.graph.deviceManagementScript",
  "id": "59ea4525-4525-59ea-2545-ea592545ea59",
  "displayName": "Display Name value",
  "description": "Description value",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "Script Content value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "runAsAccount": "user"
}
```



