---
title: "userPfxIntendedPurpose enum type"
description: "Supported values for the intended purpose of a user PFX certificate."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# userPfxIntendedPurpose enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported values for the intended purpose of a user PFX certificate.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unassigned|0|No roles/usages assigned.|
|smimeEncryption|1|Valid for S/MIME encryption.|
|smimeSigning|2|Valid for S/MIME signing.|
|vpn|4|Valid for use in VPN.|
|wifi|8|Valid for use in WiFi.|




