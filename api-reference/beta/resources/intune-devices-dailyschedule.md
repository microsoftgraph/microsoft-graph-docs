---
title: "dailySchedule resource type"
description: "Daily run schedule of a recurring device management script."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# dailySchedule resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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



