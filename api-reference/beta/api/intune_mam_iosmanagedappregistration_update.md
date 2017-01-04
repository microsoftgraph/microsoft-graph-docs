# Update iosManagedAppRegistration
Update the properties of a [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedAppRegistrations/{id}
PATCH /users/{id}/managedAppRegistrations/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object.
The following table shows the properties that are required when you create a [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md).

|Property|Type|Description|
|---|---|---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|flaggedReasons|String collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|



### Response
If successful, this method returns a `200 OK` response code and an updated [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedAppRegistrations/{id}
Content-type: application/json
Content-length: 532

{
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
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 704

{
  "@odata.type": "#microsoft.graph.iosManagedAppRegistration",
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
  "id": "47632c19-2c19-4763-192c-6347192c6347",
  "version": "Version value"
}
```



