# Update deviceAppManagement

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementServiceConfiguration.ReadWrite.All; DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md) object.
The following table shows the properties that are required when you create a [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md).

|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|windowsStoreForBusinessLastSuccessfulSyncDateTime|DateTimeOffset|The last time the apps from the windows store for business were synced successfully for the account.|
|isEnabledForWindowsStoreForBusiness|Boolean|Whether the account is enabled for syncing applications from the Windows Store for business .|
|windowsStoreForBusinessLanguage|String|The locale information used to sync applications from the windows store for business.Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is <languagecode2>-<country/regioncode2>, where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.|
|windowsStoreForBusinessLastCompletedApplicationSyncTime|DateTimeOffset|The last time an application sync from the windows store for business was completed.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAppManagement](../resources/intune_onboarding_deviceappmanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement
Content-type: application/json
Content-length: 325

{
  "windowsStoreForBusinessLastSuccessfulSyncDateTime": "2017-01-01T00:02:28.7069473-08:00",
  "isEnabledForWindowsStoreForBusiness": true,
  "windowsStoreForBusinessLanguage": "Windows Store For Business Language value",
  "windowsStoreForBusinessLastCompletedApplicationSyncTime": "2016-12-31T23:56:31.025453-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 432

{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "bbb801a3-01a3-bbb8-a301-b8bba301b8bb",
  "windowsStoreForBusinessLastSuccessfulSyncDateTime": "2017-01-01T00:02:28.7069473-08:00",
  "isEnabledForWindowsStoreForBusiness": true,
  "windowsStoreForBusinessLanguage": "Windows Store For Business Language value",
  "windowsStoreForBusinessLastCompletedApplicationSyncTime": "2016-12-31T23:56:31.025453-08:00"
}
```



