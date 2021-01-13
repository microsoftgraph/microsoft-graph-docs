---
title: "fileVaultState enum type"
description: "FileVault State"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# fileVaultState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

FileVault State

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|FileVault State Success|
|driveEncryptedByUser|1|FileVault has been enabled by user and is not being managed by policy|
|userDeferredEncryption|2|FileVault policy is successfully installed but user has not started encryption|
|escrowNotEnabled|4|FileVault recovery key escrow is not enabled|




