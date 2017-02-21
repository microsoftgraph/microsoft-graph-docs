# iosNotificationSettings resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An item describing notification setting.
## Properties
|Property|Type|Description|
|---|---|---|
|bundleIdentifier|String|Bundle identifier of app to which to apply these notification settings.|
|notificationsEnabled|Boolean|Indicates whether notifications are allowed for this app.|
|showInNotificationCenter|Boolean|Indicates whether notifications can be shown in notification center.|
|showInLockScreen|Boolean|Indicates whether notifications can be shown in the lock screen.|
|alertType|String|Indicates the type of alert for notifications for this app. Possible values are: `banner`, `none`, `modalAlert`.|
|badgesEnabled|Boolean|Indicates whether badges are allowed for this app.|
|soundsEnabled|Boolean|Indicates whether sounds are allowed for this app.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosNotificationSettings"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosNotificationSettings",
  "bundleIdentifier": "String",
  "notificationsEnabled": true,
  "showInNotificationCenter": true,
  "showInLockScreen": true,
  "alertType": "String",
  "badgesEnabled": true,
  "soundsEnabled": true
}
```



