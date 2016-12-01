# Create androidManagedAppRegistration
Create a new [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppRegistrations/<id>
POST /users/<id>/managedAppRegistrations/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a androidManagedAppRegistration object.
The following table shows the properties that are required when you create a androidManagedAppRegistration.

|Property|Type|Description|
|---|---|---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|applicationVersion|String|App version Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|deviceType|String|Host device type Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|deviceName|String|Host device name Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|flaggedReasons|String collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileAppIdentifier.md)|The app package Identifier Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|id|String|Key of the entity. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|
|version|String|Version of the entity. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md).|



### Response
If successful, this method returns a `201 Created` response code and a [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppRegistrations/<id>
Content-type: application/json
Content-length: 600

{
  "@odata.type": "#microsoft.graph.androidManagedAppRegistration",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "applicationVersion": "Application Version value",
  "managementSdkVersion": "Management Sdk Version value",
  "platformVersion": "Platform Version value",
  "deviceType": "Device Type value",
  "deviceTag": "Device Tag value",
  "deviceName": "Device Name value",
  "flaggedReasons": [
    "rootedDevice"
  ],
  "userId": "User Id value",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "version": "Version value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 708

{
  "@odata.type": "#microsoft.graph.androidManagedAppRegistration",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "applicationVersion": "Application Version value",
  "managementSdkVersion": "Management Sdk Version value",
  "platformVersion": "Platform Version value",
  "deviceType": "Device Type value",
  "deviceTag": "Device Tag value",
  "deviceName": "Device Name value",
  "flaggedReasons": [
    "rootedDevice"
  ],
  "userId": "User Id value",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "id": "0e064997-4997-0e06-9749-060e9749060e",
  "version": "Version value"
}
```



