---
title: "macOSGatekeeperAppSources enum type"
description: "App source options for macOS Gatekeeper."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# macOSGatekeeperAppSources enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App source options for macOS Gatekeeper.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|macAppStore|1|Only apps from the Mac AppStore can be run.|
|macAppStoreAndIdentifiedDevelopers|2|Only apps from the Mac AppStore and identified developers can be run.|
|anywhere|3|Apps from anywhere can be run.|




