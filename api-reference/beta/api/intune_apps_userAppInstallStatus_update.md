# Update userAppInstallStatus
Update the properties of a [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/<id>/userStatuses/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object.
The following table shows the properties that are required when you create a [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userName|String|User name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|



### Response
If successful, this method returns a `200 OK` response code and an updated [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>/userStatuses/<id>
Content-type: application/json
Content-length: 130

{
  "userName": "User Name value",
  "installedDeviceCount": 20,
  "failedDeviceCount": 17,
  "notInstalledDeviceCount": 23
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 238

{
  "@odata.type": "#microsoft.graph.userAppInstallStatus",
  "id": "14959a2a-9a2a-1495-2a9a-95142a9a9514",
  "userName": "User Name value",
  "installedDeviceCount": 20,
  "failedDeviceCount": 17,
  "notInstalledDeviceCount": 23
}
```



