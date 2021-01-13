---
title: "deliveryOptimizationMaxCacheSizePercentage resource type"
description: "Delivery Optimization Max cache size percentage types."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deliveryOptimizationMaxCacheSizePercentage resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Delivery Optimization Max cache size percentage types.


Inherits from [deliveryOptimizationMaxCacheSize](../resources/intune-deviceconfig-deliveryoptimizationmaxcachesize.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maximumCacheSizePercentage|Int32|Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). Valid values 1 to 100|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deliveryOptimizationMaxCacheSizePercentage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deliveryOptimizationMaxCacheSizePercentage",
  "maximumCacheSizePercentage": 1024
}
```




