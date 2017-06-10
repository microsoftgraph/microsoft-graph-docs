# List deviceManagementScriptStates

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.Read.All; DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/runStates/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/runStates/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 308

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceManagementScriptState",
      "id": "fbfa3cb8-3cb8-fbfa-b83c-fafbb83cfafb",
      "runState": "success",
      "resultMessage": "Result Message value",
      "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00"
    }
  ]
}
```



