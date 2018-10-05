# managedAppClipboardSharingLevel enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents the level to which the device's clipboard may be shared between apps
## Members
|Member|Value|Description|
|:---|:---|:---|
|allApps|0|Sharing is allowed between all apps, managed or not|
|managedAppsWithPasteIn|1|Sharing is allowed between all managed apps with paste in enabled|
|managedApps|2|Sharing is allowed between all managed apps|
|blocked|3|Sharing between apps is disabled|



