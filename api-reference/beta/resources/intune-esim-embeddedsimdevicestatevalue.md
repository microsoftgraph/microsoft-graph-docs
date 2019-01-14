---
title: "embeddedSIMDeviceStateValue enum type"
description: "Describes the various states for an embedded SIM activation code."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# embeddedSIMDeviceStateValue enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Describes the various states for an embedded SIM activation code.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notEvaluated|0|Designates that the embedded SIM activation code is free and available to be assigned to a device.|
|failed|1|Designates that Intune Service failed to deliver this profile to a device.|
|installing|2|Designates that the embedded SIM activation code has been assigned to a device and the device is installing the token.|
|installed|3|Designates that the embedded SIM activation code has been successfully installed on the target device.|
|deleting|4|Designates that Intune Service is trying to delete the profile from the device.|
|error|5|Designates that there is error with this profile.|
|deleted|6|Designates that the profile is deleted from the device.|
|removedByUser|7|Designates that the profile is removed from the device by the user|





