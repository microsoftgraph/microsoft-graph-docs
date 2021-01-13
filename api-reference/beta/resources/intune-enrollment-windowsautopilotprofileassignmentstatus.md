---
title: "windowsAutopilotProfileAssignmentStatus enum type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsAutopilotProfileAssignmentStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown assignment status|
|assignedInSync|1|Assigned successfully in Intune and in sync with Windows auto pilot program|
|assignedOutOfSync|2|Assigned successfully in Intune and not in sync with Windows auto pilot program|
|assignedUnkownSyncState|3|Assigned successfully in Intune and either in-sync or out of sync with Windows auto pilot program|
|notAssigned|4|Not assigned|
|pending|5|Pending assignment|
|failed|6| Assignment failed|




