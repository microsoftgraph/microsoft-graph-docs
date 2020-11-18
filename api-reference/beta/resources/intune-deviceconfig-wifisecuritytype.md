---
title: "wiFiSecurityType enum type"
description: "Wi-Fi Security Types."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# wiFiSecurityType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




