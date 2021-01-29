---
title: "keyStorageProviderOption enum type"
description: "Key Storage Provider (KSP) Import Options."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# keyStorageProviderOption enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Key Storage Provider (KSP) Import Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|useTpmKspOtherwiseUseSoftwareKsp|0|Import to Trusted Platform Module (TPM) KSP if present, otherwise import to Software KSP.|
|useTpmKspOtherwiseFail|1|Import to Trusted Platform Module (TPM) KSP if present, otherwise fail.|
|usePassportForWorkKspOtherwiseFail|2|Import to Passport for work KSP if available, otherwise fail.|
|useSoftwareKsp|3|Import to Software KSP.|




