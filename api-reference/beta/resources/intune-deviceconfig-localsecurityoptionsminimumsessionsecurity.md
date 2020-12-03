---
title: "localSecurityOptionsMinimumSessionSecurity enum type"
description: "Possible values for LocalSecurityOptionsMinimumSessionSecurity"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# localSecurityOptionsMinimumSessionSecurity enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for LocalSecurityOptionsMinimumSessionSecurity

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Send LM & NTLM responses|
|requireNtmlV2SessionSecurity|1|Send LM & NTLM-use NTLMv2 session security if negotiated|
|require128BitEncryption|2|Send LM & NTLM responses only|
|ntlmV2And128BitEncryption|3|Send LM & NTLMv2 responses only|




