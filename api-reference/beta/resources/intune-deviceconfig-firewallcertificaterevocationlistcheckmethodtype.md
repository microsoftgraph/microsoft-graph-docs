---
title: "firewallCertificateRevocationListCheckMethodType enum type"
description: "Possible values for firewallCertificateRevocationListCheckMethod"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# firewallCertificateRevocationListCheckMethodType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for firewallCertificateRevocationListCheckMethod

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|none|1|Do not check certificate revocation list|
|attempt|2|Attempt CRL check and allow a certificate only if the certificate is confirmed by the check|
|require|3|Require a successful CRL check before allowing a certificate|




