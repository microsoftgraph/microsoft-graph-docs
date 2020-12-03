---
title: "folderProtectionType enum type"
description: "Possible values of Folder Protection"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# folderProtectionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Folder Protection

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Device default value, no intent.|
|enable|1|Block functionality.|
|auditMode|2|Allow functionality but generate logs.|
|blockDiskModification|3|Block untrusted apps from writing to disk sectors.|
|auditDiskModification|4|Generate logs when untrusted apps write to disk sectors.|




