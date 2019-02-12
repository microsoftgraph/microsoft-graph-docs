---
title: "keyStorageProviderOption enum type"
description: "Key Storage Provider (KSP) Import Options."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# keyStorageProviderOption enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Key Storage Provider (KSP) Import Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|useTpmKspOtherwiseUseSoftwareKsp|0|Import to Trusted Platform Module (TPM) KSP if present, otherwise import to Software KSP.|
|useTpmKspOtherwiseFail|1|Import to Trusted Platform Module (TPM) KSP if present, otherwise fail.|
|usePassportForWorkKspOtherwiseFail|2|Import to Passport for work KSP if available, otherwise fail.|
|useSoftwareKsp|3|Import to Software KSP.|




