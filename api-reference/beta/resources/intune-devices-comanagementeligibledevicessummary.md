---
title: "comanagementEligibleDevicesSummary resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# comanagementEligibleDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comanagedCount|Int32|Count of devices already Co-Managed|
|eligibleCount|Int32|Count of devices fully eligible for Co-Management|
|eligibleButNotAzureAdJoinedCount|Int32|Count of devices eligible for Co-Management but not yet joined to Azure Active Directory|
|needsOsUpdateCount|Int32|Count of devices that will be eligible for Co-Management after an OS update|
|ineligibleCount|Int32|Count of devices ineligible for Co-Management|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.comanagementEligibleDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.comanagementEligibleDevicesSummary",
  "comanagedCount": 1024,
  "eligibleCount": 1024,
  "eligibleButNotAzureAdJoinedCount": 1024,
  "needsOsUpdateCount": 1024,
  "ineligibleCount": 1024
}
```




