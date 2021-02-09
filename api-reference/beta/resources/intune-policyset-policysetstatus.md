---
title: "policySetStatus enum type"
description: "The enum to specify the status of PolicySet."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# policySetStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enum to specify the status of PolicySet.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default Value.|
|validating|1|All PolicySet items are now validating for corresponding settings of workloads.|
|partialSuccess|2|Post process complete for all PolicySet items but there are failures.|
|success|3|All PolicySet items are deployed. Doesn’t mean that all deployment succeeded. |
|error|4|PolicySet processing completely failed.|
|notAssigned|5|PolicySet/PolicySetItem is not assigned to any group.|




