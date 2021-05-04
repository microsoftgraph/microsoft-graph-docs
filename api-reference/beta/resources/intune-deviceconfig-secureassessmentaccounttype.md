---
title: "secureAssessmentAccountType enum type"
description: "Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# secureAssessmentAccountType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.

## Members
|Member|Value|Description|
|:---|:---|:---|
|azureADAccount|0|Indicates an Azure AD account in format of AzureAD\username@tenant.com.|
|domainAccount|1|Indicates a domain account in format of domain\user or user@domain.com.|
|localAccount|2|Indicates a local account in format of username.|
|localGuestAccount|3|Indicates a local guest account in format of test name.|




