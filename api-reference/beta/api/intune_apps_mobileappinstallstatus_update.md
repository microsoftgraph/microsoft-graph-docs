# Update mobileAppInstallStatus> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Update the properties of a [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/{id}/deviceStatuses/{id}
PATCH /deviceAppManagement/mobileApps/{id}/userStatuses/{id}/deviceStatuses/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) object.
The following table shows the properties that are required when you create a [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|deviceName|String|Device name|
|deviceId|String|Device ID|
|lastSyncDateTime|DateTimeOffset|Last sync date time|
|mobileAppInstallStatusValue|Int32|The install state of the app.|
|errorCode|Int32|The error code for install failures.|
|deviceType|Int32|Device Type|
|osVersion|String|OS Version|



### Response
If successful, this method returns a `200 OK` response code and an updated [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{id}/deviceStatuses/{id}
Content-type: application/json
Content-length: 249

{
  "deviceName": "Device Name value",
  "deviceId": "Device Id value",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "mobileAppInstallStatusValue": 27,
  "errorCode": 9,
  "deviceType": 10,
  "osVersion": "Os Version value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 359

{
  "@odata.type": "#microsoft.graph.mobileAppInstallStatus",
  "id": "7560ee45-ee45-7560-45ee-607545ee6075",
  "deviceName": "Device Name value",
  "deviceId": "Device Id value",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "mobileAppInstallStatusValue": 27,
  "errorCode": 9,
  "deviceType": 10,
  "osVersion": "Os Version value"
}
```



