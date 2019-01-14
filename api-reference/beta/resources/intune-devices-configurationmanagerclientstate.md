---
title: "configurationManagerClientState enum type"
description: "Configuration manager client state"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# configurationManagerClientState enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Configuration manager client state
## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Configuration manager agent is older than 1806 or not installed or this device has not checked into Intune for over 30 days.|
|installed|1|The configuration manager agent is installed but may not be showing up in the configuration manager console yet. Wait a few hours for it to refresh.|
|healthy|7|This device was able to check in with the configuration manager service successfully.|
|installFailed|8|The configuration manager agent failed to install.|
|updateFailed|11|The update from version x to version y of the configuration manager agent failed. |
|communicationError|19|The configuration manager agent was able to reach the configuration manager service in the past but is now no longer able to. |





