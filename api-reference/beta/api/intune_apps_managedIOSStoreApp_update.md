# Update managedIOSStoreApp
Update the properties of a [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/<id>
PATCH /deviceAppManagement/mobileApps/<id>/groupAssignments/<id>/app
PATCH /deviceAppManagement/mobileApps/<id>/deviceStatuses/<id>/app
PATCH /deviceAppManagement/mobileApps/<id>/userStatuses/<id>/app
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md) object.
The following table shows the properties that are required when you create a [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md).

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
|bundleId|String|The app's bundle ID.|



### Response
If successful, this method returns a `200 OK` response code and an updated [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>
Content-type: application/json
Content-length: 964

{
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
  "bundleId": "Bundle Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1129

{
  "@odata.type": "#microsoft.graph.managedIOSStoreApp",
  "id": "51b9830f-830f-51b9-0f83-b9510f83b951",
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
  "bundleId": "Bundle Id value"
}
```



