---
title: "deviceManagementConfigurationTechnologies enum type"
description: "Describes which technology this setting can be deployed with"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationTechnologies enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes which technology this setting can be deployed with

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Setting cannot be deployed through any channel|
|mdm|1|Setting can be deployed through the MDM channel|
|windows10XManagement|2|Setting can be deployed through the Windows10XManagement channel|
|configManager|4|Setting can be deployed through the ConfigManager channel|




