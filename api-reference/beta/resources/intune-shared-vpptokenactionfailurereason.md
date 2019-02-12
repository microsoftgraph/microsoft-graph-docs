---
title: "vppTokenActionFailureReason enum type"
description: "Possible types of reasons for an Apple Volume Purchase Program token action failure."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vppTokenActionFailureReason enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible types of reasons for an Apple Volume Purchase Program token action failure.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None.|
|appleFailure|1|There was an error on Apple's service.|
|internalError|2|There was an internal error.|
|expiredVppToken|3|There was an error because the Apple Volume Purchase Program token was expired.|
|expiredApplePushNotificationCertificate|4|There was an error because the Apple Volume Purchase Program Push Notification certificate expired.|




