---
title: "advancedBitLockerState enum type"
description: "Advanced BitLocker State"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# advancedBitLockerState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Advanced BitLocker State

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|Advanced BitLocker State Success|
|noUserConsent|1|User never gave consent for Encryption|
|osVolumeUnprotected|2|Unprotected OS Volume was detected|
|osVolumeTpmRequired|4|TPM not used for protection of OS volume, but is required by policy|
|osVolumeTpmOnlyRequired|8|TPM only protection not used for OS volume, but is required by policy|
|osVolumeTpmPinRequired|16|TPM+PIN protection not used for OS volume, but is required by policy|
|osVolumeTpmStartupKeyRequired|32|TPM+Startup Key protection not used for OS volume, but is required by policy|
|osVolumeTpmPinStartupKeyRequired|64|TPM+PIN+Startup Key not used for OS volume, but is required by policy|
|osVolumeEncryptionMethodMismatch|128|Encryption method of OS Volume is different than that set by policy|
|recoveryKeyBackupFailed|256|Recovery key backup failed|
|fixedDriveNotEncrypted|512|Fixed Drive not encrypted|
|fixedDriveEncryptionMethodMismatch|1024|Encryption method of Fixed Drive is different than that set by policy|
|loggedOnUserNonAdmin|2048|Logged on user is non-admin. This requires “AllowStandardUserEncryption” policy set to 1|
|windowsRecoveryEnvironmentNotConfigured|4096|WinRE is not configured|
|tpmNotAvailable|8192|TPM is not available for BitLocker. This means TPM is not present, or TPM unavailable registry override is set or host OS is on portable/rome-able drive|
|tpmNotReady|16384|TPM is not ready for BitLocker|
|networkError|32768|Network not available. This is required for recovery key backup. This is reported for Drive Encryption capable devices|




