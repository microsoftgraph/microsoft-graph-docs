---
title: "win32LobAppRestartBehavior enum type"
description: "Indicates the type of restart action."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# win32LobAppRestartBehavior enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of restart action.

## Members
|Member|Value|Description|
|:---|:---|:---|
|basedOnReturnCode|0|Intune will restart the device after running the app installation if the operation returns a reboot code.|
|allow|1|Intune will not take any specific action on reboot codes resulting from app installations. Intune will not attempt to suppress restarts for MSI apps.|
|suppress|2|Intune will attempt to suppress restarts for MSI apps.|
|force|3|Intune will force the device to restart immediately after the app installation operation.|




