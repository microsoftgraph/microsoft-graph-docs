---
title: "iosNotificationSettings resource type"
description: "An item describing notification setting."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosNotificationSettings resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An item describing notification setting.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleID|String|Bundle id of app to which to apply these notification settings.|
|appName|String|Application name to be associated with the bundleID.|
|publisher|String|Publisher to be associated with the bundleID.|
|enabled|Boolean|Indicates whether notifications are allowed for this app.|
|showInNotificationCenter|Boolean|Indicates whether notifications can be shown in notification center.|
|showOnLockScreen|Boolean|Indicates whether notifications can be shown on the lock screen.|
|alertType|[iosNotificationAlertType](../resources/intune-deviceconfig-iosnotificationalerttype.md)|Indicates the type of alert for notifications for this app. Possible values are: `deviceDefault`, `banner`, `modal`, `none`.|
|badgesEnabled|Boolean|Indicates whether badges are allowed for this app.|
|soundsEnabled|Boolean|Indicates whether sounds are allowed for this app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosNotificationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosNotificationSettings",
  "bundleID": "String",
  "appName": "String",
  "publisher": "String",
  "enabled": true,
  "showInNotificationCenter": true,
  "showOnLockScreen": true,
  "alertType": "String",
  "badgesEnabled": true,
  "soundsEnabled": true
}
```




