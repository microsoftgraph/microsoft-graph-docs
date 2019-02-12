---
title: "dailySchedule resource type"
description: "Daily run schedule of a recurring device management script."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# dailySchedule resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Daily run schedule of a recurring device management script.


Inherits from [runSchedule](../resources/intune-devices-runschedule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|interval|Int32|Interval in number of days|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dailySchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dailySchedule",
  "interval": 1024
}
```




