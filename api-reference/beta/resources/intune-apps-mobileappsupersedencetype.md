---
title: "mobileAppSupersedenceType enum type"
description: "Indicates the supersedence type associated with a relationship between two mobile apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# mobileAppSupersedenceType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the supersedence type associated with a relationship between two mobile apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|update|0|Indicates that the child app should be updated by the internal logic of the parent app.|
|replace|1|Indicates that the child app should be uninstalled before installing the parent app.|




