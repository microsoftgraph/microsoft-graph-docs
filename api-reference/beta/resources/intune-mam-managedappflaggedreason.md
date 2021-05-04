---
title: "managedAppFlaggedReason enum type"
description: "The reason for which a user has been flagged"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# managedAppFlaggedReason enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The reason for which a user has been flagged

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No issue.|
|rootedDevice|1|The app registration is running on a rooted/unlocked device.|
|androidBootloaderUnlocked|2|The app registration is running on an Android device on which the bootloader is unlocked.|
|androidFactoryRomModified|3|The app registration is running on an Android device on which the factory ROM has been modified.|




