# List managedIOSStoreApps
List properties and relationships of the [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/mobileApps/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [managedIOSStoreApp](../resources/intune_apps_managedIOSStoreApp.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1286

{
  "value": [
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
  ]
}
```



