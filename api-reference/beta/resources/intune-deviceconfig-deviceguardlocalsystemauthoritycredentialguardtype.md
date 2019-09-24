---
title: "deviceGuardLocalSystemAuthorityCredentialGuardType enum type"
description: "Possible values of Credential Guard settings."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# deviceGuardLocalSystemAuthorityCredentialGuardType enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Credential Guard settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Turns off Credential Guard remotely if configured previously without UEFI Lock.|
|enableWithUEFILock|1|Turns on Credential Guard with UEFI lock.|
|enableWithoutUEFILock|2|Turns on Credential Guard without UEFI lock.|



