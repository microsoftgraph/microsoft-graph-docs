---
title: "deliveryOptimizationBandwidthBusinessHoursLimit resource type"
description: "Bandwidth business hours and percentages type"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deliveryOptimizationBandwidthBusinessHoursLimit resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Bandwidth business hours and percentages type

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bandwidthBeginBusinessHours|Int32|Specifies the beginning of business hours using a 24-hour clock (0-23). Valid values 0 to 23|
|bandwidthEndBusinessHours|Int32|Specifies the end of business hours using a 24-hour clock (0-23). Valid values 0 to 23|
|bandwidthPercentageDuringBusinessHours|Int32|Specifies the percentage of bandwidth to limit during business hours (0-100). Valid values 0 to 100|
|bandwidthPercentageOutsideBusinessHours|Int32|Specifies the percentage of bandwidth to limit outsidse business hours (0-100). Valid values 0 to 100|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deliveryOptimizationBandwidthBusinessHoursLimit"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deliveryOptimizationBandwidthBusinessHoursLimit",
  "bandwidthBeginBusinessHours": 1024,
  "bandwidthEndBusinessHours": 1024,
  "bandwidthPercentageDuringBusinessHours": 1024,
  "bandwidthPercentageOutsideBusinessHours": 1024
}
```




