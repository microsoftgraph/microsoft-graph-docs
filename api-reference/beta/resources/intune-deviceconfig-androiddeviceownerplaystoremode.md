---
title: "androidDeviceOwnerPlayStoreMode enum type"
description: "Android Device Owner Play Store mode type."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# androidDeviceOwnerPlayStoreMode enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner Play Store mode type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not Configured|
|allowList|1|Only apps that are in the policy are available and any app not in the policy will be automatically uninstalled from the device.|
|blockList|2|All apps are available and any app that should not be on the device should be explicitly marked as 'BLOCKED' in the applications policy.|



