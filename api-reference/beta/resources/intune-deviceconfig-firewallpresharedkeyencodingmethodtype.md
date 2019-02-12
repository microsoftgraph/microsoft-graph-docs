---
title: "firewallPreSharedKeyEncodingMethodType enum type"
description: "Possible values for firewallPreSharedKeyEncodingMethod"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# firewallPreSharedKeyEncodingMethodType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for firewallPreSharedKeyEncodingMethod

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|none|1|Preshared key is not encoded. Instead, it is kept in its wide-character format|
|utF8|2|Encode the preshared key using UTF-8|




