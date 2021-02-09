---
title: "deviceGuardLocalSystemAuthorityCredentialGuardType enum type"
description: "Possible values of Credential Guard settings."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceGuardLocalSystemAuthorityCredentialGuardType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Credential Guard settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Turns off Credential Guard remotely if configured previously without UEFI Lock.|
|enableWithUEFILock|1|Turns on Credential Guard with UEFI lock.|
|enableWithoutUEFILock|2|Turns on Credential Guard without UEFI lock.|
|disable|3|Disables Credential Guard. This is the default OS value.|




