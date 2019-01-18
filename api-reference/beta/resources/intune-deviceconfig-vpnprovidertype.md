---
title: "vpnProviderType enum type"
description: "Provider type for per-app VPN."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# vpnProviderType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Provider type for per-app VPN.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Tunnel traffic is not explicitly configured.|
|appProxy|1|Tunnel traffic at the application layer.|
|packetTunnel|2|Tunnel traffic at the IP layer.|





