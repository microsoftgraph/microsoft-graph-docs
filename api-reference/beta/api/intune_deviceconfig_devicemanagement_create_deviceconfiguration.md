# Create deviceConfiguration

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) by posting to the deviceConfigurations collection.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a deviceConfiguration object.
The following table shows the properties that are required when you create a deviceConfiguration.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Response

If successful, this method returns a `201 Created` response code and a [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/
Content-type: application/json
Content-length: 221

{
  "@odata.type": "#microsoft.graph.deviceConfiguration",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 329

{
  "@odata.type": "#microsoft.graph.deviceConfiguration",
  "id": "34977265-7265-3497-6572-973465729734",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7
}
```



