---
title: "localSecurityOptionsMinimumSessionSecurity enum type"
description: "Possible values for LocalSecurityOptionsMinimumSessionSecurity"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# localSecurityOptionsMinimumSessionSecurity enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values for LocalSecurityOptionsMinimumSessionSecurity
## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Send LM & NTLM responses|
|requireNtmlV2SessionSecurity|1|Send LM & NTLM-use NTLMv2 session security if negotiated|
|require128BitEncryption|2|Send LM & NTLM responses only|
|ntlmV2And128BitEncryption|3|Send LM & NTLMv2 responses only|





