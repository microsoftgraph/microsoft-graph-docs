---
title: "windowsFirewallRuleNetworkProfileTypes enum type"
description: "Flags representing which network profile types apply to a firewall rule."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsFirewallRuleNetworkProfileTypes enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Flags representing which network profile types apply to a firewall rule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No flags set.|
|domain|1|The profile for networks that are connected to domains.|
|private|2|The profile for private networks.|
|public|4|The profile for public networks.|




