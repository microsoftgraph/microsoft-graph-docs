---
title: "win32LobAppRegistryDetectionType enum type"
description: "Contains all supported registry data detection type."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# win32LobAppRegistryDetectionType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains all supported registry data detection type.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured.|
|exists|1|The specified registry key or value exists.|
|doesNotExist|2|The specified registry key or value does not exist.|
|string|3|String value type.|
|integer|4|Integer value type.|
|version|5|Version value type.|





