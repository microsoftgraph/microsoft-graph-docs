---
title: "lanManagerAuthenticationLevel enum type"
description: "Possible values for LanManagerAuthenticationLevel"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# lanManagerAuthenticationLevel enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values for LanManagerAuthenticationLevel
## Members
|Member|Value|Description|
|:---|:---|:---|
|lmAndNltm|0|Send LM & NTLM responses|
|lmNtlmAndNtlmV2|1|Send LM & NTLM-use NTLMv2 session security if negotiated|
|lmAndNtlmOnly|2|Send LM & NTLM responses only|
|lmAndNtlmV2|3|Send LM & NTLMv2 responses only|
|lmNtlmV2AndNotLm|4|Send LM & NTLMv2 responses only. Refuse LM|
|lmNtlmV2AndNotLmOrNtm|5|Send LM & NTLMv2 responses only. Refuse LM & NTLM|





