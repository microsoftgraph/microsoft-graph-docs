# Create managedDeviceMobileAppConfiguration

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileAppConfigurations/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a managedDeviceMobileAppConfiguration object.
The following table shows the properties that are required when you create a managedDeviceMobileAppConfiguration.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|targetedMobileApps|String collection|the associated app.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Response

If successful, this method returns a `201 Created` response code and a [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileAppConfigurations/
Content-type: application/json
Content-length: 304

{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfiguration",
  "targetedMobileApps": [
    "Targeted Mobile Apps value"
  ],
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 412

{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfiguration",
  "id": "c60e7591-7591-c60e-9175-0ec691750ec6",
  "targetedMobileApps": [
    "Targeted Mobile Apps value"
  ],
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7
}
```



