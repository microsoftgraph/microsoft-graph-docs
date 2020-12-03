---
title: "scheduleInformation resource type"
description: "Represents the availability of a user, distribution list, or resource for a specified time period."
localization_priority: Normal
author: "harini84"
ms.prod: ""
doc_type: resourcePageType
---

# scheduleInformation resource type

Namespace: microsoft.graph

Represents the availability of a user, distribution list, or resource (room or equipment) for a specified time period.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|availabilityView |String |Represents a merged view of availability of all the items in `scheduleItems`. The view consists of time slots. Availability during each time slot is indicated with: `0`= free, `1`= tentative, `2`= busy, `3`= out of office, `4`= working elsewhere.|
|error |[freeBusyError](freebusyerror.md) |Error information from attempting to get the availability of the user, distribution list, or resource. |
|scheduleId |String |An SMTP address of the user, distribution list, or resource, identifying an instance of **scheduleInformation**. |
|scheduleItems |[scheduleItem](scheduleitem.md) collection |Contains the items that describe the availability of the user or resource. |
|workingHours |[workingHours](workinghours.md) |The days of the week and hours in a specific time zone that the user works. These are set as part of the user's [mailboxSettings](mailboxsettings.md).|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.scheduleInformation"
}-->

```json
{
  "availabilityView": "String",
  "error": {"@odata.type": "microsoft.graph.freeBusyError"},
  "scheduleId": "String",
  "scheduleItems": [{"@odata.type": "microsoft.graph.scheduleItem"}],
  "workingHours": {"@odata.type": "microsoft.graph.workingHours"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "scheduleInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

