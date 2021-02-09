---
title: "lanManagerAuthenticationLevel enum type"
description: "Possible values for LanManagerAuthenticationLevel"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# lanManagerAuthenticationLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




