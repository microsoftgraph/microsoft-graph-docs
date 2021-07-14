---
title: "meetingAttendanceReport resource type"
description: "Contains information associated with meeting attendance report."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingAttendanceReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with meeting attendance report.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| attendanceRecords           | [attendanceRecord](attendanceRecord.md) collection  | The list of attendance records. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}-->

```json
{
  "attendanceRecords": [{"@odata.type": "#microsoft.graph.attendanceRecord"}]
}
```
