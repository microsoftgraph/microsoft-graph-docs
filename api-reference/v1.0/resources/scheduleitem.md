---
title: "scheduleItem resource type"
description: "An item that describes the availability of a user corresponding to an actual event on the user's default calendar. This item applies to a resource (room or equipment) as well."
localization_priority: Normal
author: "harini84"
ms.prod: ""
doc_type: resourcePageType
---

# scheduleItem resource type

Namespace: microsoft.graph

An item that describes the availability of a user corresponding to an actual event on the user's default calendar. This item applies to a resource (room or equipment) as well.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|end |[dateTimeTimeZone](datetimetimezone.md) |The date, time, and time zone that the corresponding event ends. |
|isPrivate |Boolean |The sensitivity of the corresponding event. True if the event is marked `private`, false otherwise. Optional.|
|location |String | The location where the corresponding event is held or attended from. Optional.|
|start |[dateTimeTimeZone](datetimetimezone.md) |The date, time, and time zone that the corresponding event starts. |
|status |freeBusyStatus | The availability status of the user or resource during the corresponding event. The possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`. |
|subject |String | The corresponding event's subject line. Optional.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "isPrivate",
    "location",
    "subject"
  ],
  "@odata.type": "microsoft.graph.scheduleItem"
}-->

```json
{
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "isPrivate": true,
  "location": "String",
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String",
  "subject": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "scheduleItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

