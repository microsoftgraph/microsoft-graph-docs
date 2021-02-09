---
title: "vpnServiceExceptionAction enum type"
description: "The VPN action to take for a specific service."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# vpnServiceExceptionAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The VPN action to take for a specific service.

## Members
|Member|Value|Description|
|:---|:---|:---|
|forceTrafficViaVPN|0|Make all traffic from that service go through the VPN|
|allowTrafficOutside|1|Allow the service outside of the VPN|
|dropTraffic|2|Drop all traffic from the service|




