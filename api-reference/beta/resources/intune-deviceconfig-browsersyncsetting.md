# browserSyncSetting enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default – Allow syncing of browser settings across devices.|
|blockedWithUserOverride|1|Prevent syncing of browser settings across user devices, allow user override of setting.|
|blocked|2|Absolutely prevent syncing of browser settings across user devices.|











