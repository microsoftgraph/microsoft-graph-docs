# Create iosDeviceFeaturesConfiguration

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a iosDeviceFeaturesConfiguration object.
The following table shows the properties that are required when you create a iosDeviceFeaturesConfiguration.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSharingAssetTagInformation|String|Asset tag information for the device, displayed on the login window and lock screen.|
|deviceSharingLockScreenFootnote|String|A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.|
|homeScreenLayoutDockIcons|[iosHomeScreenItem](../resources/intune_deviceconfig_ioshomescreenitem.md) collection|A list of app and folders to appear on the Home Screen Dock|
|homeScreenLayoutPages|[iosHomeScreenPage](../resources/intune_deviceconfig_ioshomescreenpage.md) collection|A list of pages on the Home Screen|
|notificationSettings|[iosNotificationSettings](../resources/intune_deviceconfig_iosnotificationsettings.md) collection|Notification settings for each bundle identifier. Applicable to devices in supervised mode only (iOS 9.3 and later).|



## Response
If successful, this method returns a `201 Created` response code and a [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/
Content-type: application/json
Content-length: 1190

{
  "@odata.type": "#microsoft.graph.iosDeviceFeaturesConfiguration",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
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
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1298

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
```



