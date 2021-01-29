---
title: "macOSFileVaultRecoveryKeyTypes enum type"
description: "Recovery key types for macOS FileVault"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSFileVaultRecoveryKeyTypes enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Recovery key types for macOS FileVault

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|institutionalRecoveryKey|1|An institutional recovery key is like a “master” recovery key that can be used to unlock any device whose password has been lost.|
|personalRecoveryKey|2|A personal recovery key is a unique code that can be used to unlock the user’s device, even if the password to the device is lost.|




