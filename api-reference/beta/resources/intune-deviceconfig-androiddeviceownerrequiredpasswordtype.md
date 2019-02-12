---
title: "androidDeviceOwnerRequiredPasswordType enum type"
description: "Android Device Owner policy required password type."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# androidDeviceOwnerRequiredPasswordType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner policy required password type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default value, no intent.|
|required|1|There must be a password set, but there are no restrictions on type.|
|numeric|2|At least numeric.|
|numericComplex|3|At least numeric with no repeating or ordered sequences.|
|alphabetic|4|At least alphabetic password.|
|alphanumeric|5|At least alphanumeric password|
|alphanumericWithSymbols|6|At least alphanumeric with symbols.|




