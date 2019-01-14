---
title: "resultantAppState enum type"
description: "Not yet documented"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# resultantAppState enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Members
|Member|Value|Description|
|:---|:---|:---|
|installed|1|The application is installed with no errors|
|failed|2|The application failed to install.|
|notInstalled|3|The application is not installed.|
|uninstallFailed|4|The application failed to uninstall.|
|pendingInstall|5|The installation of the application is in progress.|
|unknown|99|The status of the application is unknown.|
|notApplicable|-1|The application is not applicable.|





