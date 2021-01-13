---
title: "userPfxPaddingScheme enum type"
description: "Supported values for the padding scheme used by encryption provider."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# userPfxPaddingScheme enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported values for the padding scheme used by encryption provider.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Unknown padding Scheme.|
|pkcs1|1|Pkcs1 is no longer supported|
|oaepSha1|2|OaepSha1 is no longer supported|
|oaepSha256|3|Use OAEP SHA-256 padding.|
|oaepSha384|4|Use OAEP SHA-384 padding.|
|oaepSha512|5|Use OAEP SHA-512 padding.|




