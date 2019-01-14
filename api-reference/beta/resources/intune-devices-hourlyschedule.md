---
title: "hourlySchedule resource type"
description: "Hourly run schedule of a recurring device management script."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# hourlySchedule resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Hourly run schedule of a recurring device management script.

Inherits from [runSchedule](../resources/intune-devices-runschedule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|interval|Int32|Interval in number of hours|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.hourlySchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hourlySchedule",
  "interval": 1024
}
```





