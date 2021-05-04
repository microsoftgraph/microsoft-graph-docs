---
title: "iosNotificationPreviewVisibility enum type"
description: "Determines when notification previews are visible on an iOS device. Previews can include things like text (from Messages and Mail) and invitation details (from Calendar). When configured, it will override the user's defined preview settings."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# iosNotificationPreviewVisibility enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines when notification previews are visible on an iOS device. Previews can include things like text (from Messages and Mail) and invitation details (from Calendar). When configured, it will override the user's defined preview settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Notification preview settings will not be overwritten.|
|alwaysShow|1|Always show notification previews.|
|hideWhenLocked|2|Only show notification previews when the device is unlocked.|
|neverShow|3|Never show notification previews.|




