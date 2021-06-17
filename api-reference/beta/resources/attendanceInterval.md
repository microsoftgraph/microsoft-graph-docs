---
title: "attendanceInterval resource type"
description: "Contains information associated with attendance interval in attendanceRecord."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceInterval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with attendance interval in attendanceRecord.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| joinDateTime | DateTime | Time attendee joined in UTC. |
| leaveDateTime | DateTime | Time attendee left in UTC. |
| durationInSeconds | Int32 | Duration of the meeting interval in seconds; that is, the difference between **joinDateTime** and **leaveDateTime**. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendanceInterval"
}-->

```json

{
    "joinDateTime": "String (timestamp)",
    "leaveDateTime": "String (timestamp)",
    "durationInSeconds": "Int32"
}
    
```
