---
title: "vpnTrafficRuleRoutingPolicyType enum type"
description: "Specifies the routing policy for a VPN traffic rule."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vpnTrafficRuleRoutingPolicyType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the routing policy for a VPN traffic rule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No routing policy specified.|
|splitTunnel|1|Network traffic for the specified app will be routed through the VPN.|
|forceTunnel|2|All network traffic will be routed through the VPN.|




