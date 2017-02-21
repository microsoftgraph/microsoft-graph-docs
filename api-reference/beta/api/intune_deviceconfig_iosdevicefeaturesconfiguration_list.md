# List iosDeviceFeaturesConfigurations

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1483

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.iosDeviceFeaturesConfiguration",
      "id": "651e0ab3-0ab3-651e-b30a-1e65b30a1e65",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "description": "Description value",
      "displayName": "Display Name value",
      "version": 7,
      "deviceSharingAssetTagInformation": "Device Sharing Asset Tag Information value",
      "deviceSharingLockScreenFootnote": "Device Sharing Lock Screen Footnote value",
      "homeScreenLayoutDockIcons": [
        {
          "@odata.type": "microsoft.graph.iosHomeScreenItem",
          "displayName": "Display Name value"
        }
      ],
      "homeScreenLayoutPages": [
        {
          "@odata.type": "microsoft.graph.iosHomeScreenPage",
          "icons": [
            {
              "@odata.type": "microsoft.graph.iosHomeScreenItem",
              "displayName": "Display Name value"
            }
          ]
        }
      ],
      "notificationSettings": [
        {
          "@odata.type": "microsoft.graph.iosNotificationSettings",
          "bundleIdentifier": "Bundle Identifier value",
          "notificationsEnabled": true,
          "showInNotificationCenter": true,
          "showInLockScreen": true,
          "alertType": "none",
          "badgesEnabled": true,
          "soundsEnabled": true
        }
      ]
    }
  ]
}
```



