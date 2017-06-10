# Delete detectedApp

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Deletes a [detectedApp](../resources/intune_devicefe_detectedapp.md).
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /detectedapps/{detectedappsId}
DELETE /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/runStates/{deviceManagementScriptStateId}/managedDevice//detectedApps/{detectedAppId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code.

## Example
### Request
Here is an example of the request.
```http
DELETE https://graph.microsoft.com/beta/detectedapps/{detectedappsId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



