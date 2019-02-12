---
title: "deviceGuardLocalSystemAuthorityCredentialGuardType enum type"
description: "Possible values of Credential Guard settings."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# deviceGuardLocalSystemAuthorityCredentialGuardType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Credential Guard settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Turns off Credential Guard remotely if configured previously without UEFI Lock.|
|enableWithUEFILock|1|Turns on Credential Guard with UEFI lock.|
|enableWithoutUEFILock|2|Turns on Credential Guard without UEFI lock.|




