---
title: "windowsPrivacyDataCategory enum type"
description: "Windows privacy data category specifier for privacy data access."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsPrivacyDataCategory enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows privacy data category specifier for privacy data access.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No access level specified, no intents. Device may behave either as in UserInControl or ForceAllow. It may depend on the privacy data been accessed, Windows versions and other factors.|
|accountInfo|1|Let apps access user’s name, picture and other account information created in Microsoft account. Added in Windows 10, version 1607.|
|appsRunInBackground|2|Allow apps to receive information, send notifications, and stay up-to-date, even when the user is not using them. Be aware that when disabling communication apps (Email, Voice, etc) from background access these apps may or may not function as they are with the background access. Added in Windows 10, version 1703.|
|calendar|3|Let apps access user’s calendar. Added in Windows 10, version 1607.|
|callHistory|4|Let apps access user’s call history. Added in Windows 10, version 1607.|
|camera|5|Let apps access the camera on user’s device. Added in Windows 10, version 1607.|
|contacts|6|Let apps access user’s contact information. Added in Windows 10, version 1607.|
|diagnosticsInfo|7|Let apps access diagnostic information about other running apps. Added in Windows 10, version 1703.|
|email|8|Let apps access and send email. Added in Windows 10, version 1607.|
|location|9|Let apps access the precise location data of device user. Added in Windows 10, version 1607.|
|messaging|10|Let apps read or send messages, text or MMS. Added in Windows 10, version 1607.|
|microphone|11|Let apps use microphone on the user device. Added in Windows 10, version 1607.|
|motion|12|Let apps use motion data generated on the device user. Added in Windows 10, version 1607.|
|notifications|13|Let apps access user’s notifications. Added in Windows 10, version 1607.|
|phone|14|Let apps access phone data and make phone calls. Added in Windows 10, version 1607.|
|radios|15|Let apps use radios, including Bluetooth, to send and receive data. Added in Windows 10, version 1607.|
|tasks|16|Let apps access Task Scheduler. Added in Windows 10, version 1703.|
|syncWithDevices|17|Let apps automatically share and sync info with wireless devices that don’t explicitly pair with user’s device. Added in Windows 10, version 1607.|
|trustedDevices|18|Let apps access trusted devices. Added in Windows 10, version 1607.|




