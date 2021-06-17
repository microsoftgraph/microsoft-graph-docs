---
title: "attendanceRecord resource type"
description: "Contains information associated with attendance record in meeting attendance report."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with attendance record in meeting attendance report.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| identity | [Identity](identity.md) | Identifier, such as display name. |
| emailAddress | String | Email address. |
| totalAttendanceInSeconds | Int32 | Total duration of the attendances in seconds. |
| attendanceIntervals | [attendanceInterval](attendanceInterval.md) collection | List of time periods between joining and leaving. |
| role | String | Role of the attendee. Possible values are `None`, `Attendee`, `Presenter`, and `Organizer`.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendanceRecord"
}-->

```json

{
    "emailAddress": "String",
    "totalAttendanceInSeconds": "Int32",
    "role": "String(None|Attendee|Presenter|Organizer)",
    "identity": {"@odata.type": "#microsoft.graph.identity"},
    "attendanceIntervals": [{"@odata.type": "#microsoft.graph.attendanceInterval"}]
}

```
