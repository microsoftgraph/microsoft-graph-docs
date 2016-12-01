# Create managedAndroidStoreApp
Create a new [managedAndroidStoreApp](../resources/intune_apps_managedAndroidStoreApp.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileApps/<id>
POST /deviceAppManagement/mobileApps/<id>/groupAssignments/<id>/app
POST /deviceAppManagement/mobileApps/<id>/deviceStatuses/<id>/app
POST /deviceAppManagement/mobileApps/<id>/userStatuses/<id>/app
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a managedAndroidStoreApp object.
The following table shows the properties that are required when you create a managedAndroidStoreApp.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|description|String|The description of the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|publisher|String|The publisher of the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|largeIcon|[mimeContent](../resources/intune_apps_mimeContent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|informationUrl|String|The more information Url. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|owner|String|The owner of the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|developer|String|The developer of the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|notes|String|Notes for the app. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|uploadState|Int32|The upload state. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileAppInstallSummary.md)|Mobile App Install Summary. Inherited from [mobileApp](intune_apps_mobileApp.md).|
|appAvailability|String|The Application's availability. Inherited from [managedApp](intune_apps_managedApp.md). Possible values are: `global`, `lineOfBusiness`.|
|version|String|The Application's version. Inherited from [managedApp](intune_apps_managedApp.md).|
|packageId|String|The app's package ID.|



### Response
If successful, this method returns a `201 Created` response code and a [managedAndroidStoreApp](../resources/intune_apps_managedAndroidStoreApp.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>
Content-type: application/json
Content-length: 1027

{
  "@odata.type": "#microsoft.graph.managedAndroidStoreApp",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "isFeatured": true,
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "informationUrl": "https://example.com/informationUrl/",
  "owner": "Owner value",
  "developer": "Developer value",
  "notes": "Notes value",
  "uploadState": 11,
  "installSummary": {
    "@odata.type": "microsoft.graph.mobileAppInstallSummary",
    "installedDeviceCount": 20,
    "failedDeviceCount": 17,
    "notInstalledDeviceCount": 23,
    "installedUserCount": 18,
    "failedUserCount": 15,
    "notInstalledUserCount": 21
  },
  "appAvailability": "lineOfBusiness",
  "version": "Version value",
  "packageId": "Package Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1135

{
  "@odata.type": "#microsoft.graph.managedAndroidStoreApp",
  "id": "89e7e991-e991-89e7-91e9-e78991e9e789",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "isFeatured": true,
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "informationUrl": "https://example.com/informationUrl/",
  "owner": "Owner value",
  "developer": "Developer value",
  "notes": "Notes value",
  "uploadState": 11,
  "installSummary": {
    "@odata.type": "microsoft.graph.mobileAppInstallSummary",
    "installedDeviceCount": 20,
    "failedDeviceCount": 17,
    "notInstalledDeviceCount": 23,
    "installedUserCount": 18,
    "failedUserCount": 15,
    "notInstalledUserCount": 21
  },
  "appAvailability": "lineOfBusiness",
  "version": "Version value",
  "packageId": "Package Id value"
}
```



