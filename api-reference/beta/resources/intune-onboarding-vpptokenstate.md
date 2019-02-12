---
title: "vppTokenState enum type"
description: "Possible states associated with an Apple Volume Purchase Program token."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vppTokenState enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

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




