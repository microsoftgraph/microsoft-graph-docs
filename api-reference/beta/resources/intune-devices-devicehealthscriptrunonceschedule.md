---
title: "deviceHealthScriptRunOnceSchedule resource type"
description: "Device health script run once schedule."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptRunOnceSchedule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device health script run once schedule.


Inherits from [deviceHealthScriptTimeSchedule](../resources/intune-devices-devicehealthscripttimeschedule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|interval|Int32|The x value of every x hours for hourly schedule, every x days for Daily Schedule, every x weeks for weekly schedule, every x months for Monthly Schedule. Valid values 1 to 23 Inherited from [deviceHealthScriptRunSchedule](../resources/intune-devices-devicehealthscriptrunschedule.md)|
|useUtc|Boolean|Indicate if the time is Utc or client local time. Inherited from [deviceHealthScriptTimeSchedule](../resources/intune-devices-devicehealthscripttimeschedule.md)|
|time|TimeOfDay|At what time the script is scheduled to run. This collection can contain a maximum of 20 elements. Inherited from [deviceHealthScriptTimeSchedule](../resources/intune-devices-devicehealthscripttimeschedule.md)|
|date|Date|The date the script is scheduled to run. This collection can contain a maximum of 20 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptRunOnceSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRunOnceSchedule",
  "interval": 1024,
  "useUtc": true,
  "time": "String (time of day)",
  "date": "String (Date)"
}
```




