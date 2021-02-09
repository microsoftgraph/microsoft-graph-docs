---
title: "groupPolicyConfigurationType enum type"
description: "Group Policy Configuration Type"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# groupPolicyConfigurationType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Group Policy Configuration Type

## Members
|Member|Value|Description|
|:---|:---|:---|
|policy|0|The policy type does not tattoo the value, which means the value is removed allowing the original configuration value to be used. The policy type supercedes application configuration setting so the application is always aware of the value. The policy type prevents the user from modifying the value through the application's user interface.|
|preference|1|The preference type does tattoo the value, which means the value is not removed from the registry. The preference type will overwrite the user configured-value and does not retain the previous value. The preference type does not prevent the user from modifying the value through the application's user interface.|




