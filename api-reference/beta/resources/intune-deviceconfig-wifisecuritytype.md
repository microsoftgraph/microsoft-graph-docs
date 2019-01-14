---
title: "wiFiSecurityType enum type"
description: "Wi-Fi Security Types."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# wiFiSecurityType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Wi-Fi Security Types.
## Members
|Member|Value|Description|
|:---|:---|:---|
|open|0|Open (No Authentication).|
|wpaPersonal|1|WPA-Personal.|
|wpaEnterprise|2|WPA-Enterprise. Must use IOSEnterpriseWifiConfiguration type to configure enterprise options.|
|wep|3|WEP Encryption.|
|wpa2Personal|4|WPA2-Personal.|
|wpa2Enterprise|5|WPA2-Enterprise. Must use WindowsWifiEnterpriseEAPConfiguration type to configure enterprise options.|





