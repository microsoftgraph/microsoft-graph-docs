---
title: "secureAssessmentAccountType enum type"
description: "Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# secureAssessmentAccountType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.

## Members
|Member|Value|Description|
|:---|:---|:---|
|azureADAccount|0|Indicates an Azure AD account in format of AzureAD\username@tenant.com.|
|domainAccount|1|Indicates a domain account in format of domain\user or user@domain.com.|
|localAccount|2|Indicates a local account in format of username.|




