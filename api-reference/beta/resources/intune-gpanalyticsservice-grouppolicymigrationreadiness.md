---
title: "groupPolicyMigrationReadiness enum type"
description: "Indicates if the Group Policy Object file is covered and ready for Intune migration."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# groupPolicyMigrationReadiness enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates if the Group Policy Object file is covered and ready for Intune migration.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|1|No Intune coverage|
|partial|2|Partial Intune coverage|
|complete|3|Complete Intune coverage|
|error|4|Error when analyzing coverage|
|notApplicable|5|No Group Policy settings in GPO|




