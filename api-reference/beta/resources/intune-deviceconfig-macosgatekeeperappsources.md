---
title: "macOSGatekeeperAppSources enum type"
description: "App source options for macOS Gatekeeper."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSGatekeeperAppSources enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App source options for macOS Gatekeeper.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|macAppStore|1|Only apps from the Mac AppStore can be run.|
|macAppStoreAndIdentifiedDevelopers|2|Only apps from the Mac AppStore and identified developers can be run.|
|anywhere|3|Apps from anywhere can be run.|




