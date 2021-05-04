---
title: "vppTokenState enum type"
description: "Possible states associated with an Apple Volume Purchase Program token."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# vppTokenState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible states associated with an Apple Volume Purchase Program token.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default state.|
|valid|1|Token is valid.|
|expired|2|Token is expired.|
|invalid|3|Token is invalid.|
|assignedToExternalMDM|4|Token is managed by another MDM Service.|
|duplicateLocationId|5|Token is associated with the same location as another token on the account.|




