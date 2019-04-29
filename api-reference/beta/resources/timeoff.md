---
title: "timeOff resource type"
description: "A unit of non-work in the schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# timeOff resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unit of non-work in the schedule.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create timeOff](../api/schedule-post-timesoff.md) | [timeOff](timeOff.md) | Create a new `timeOff` object.|
|[List timeOffs](../api/schedule-list-timesoff.md) | [timeOff](timeOff.md) collection | Get the list of `timeOff` objects in this schedule.|
|[Get timeOff](../api/timeoff-get.md) | [timeOff](timeOff.md) | Get a `timeOff` by ID.|
|[Replace timeOff](../api/timeoff-put.md) | [timeOff](timeOff.md) | Replace a `timeOff`.|
|[Delete timeOff](../api/timeoff-delete.md) | None | Delete a `timeOff` from the schedule.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			|`string`      |ID of the `timeOff`.|
| userId 			|`string`      |ID of the user assigned to the `timeOff`. Required.|
| sharedTimeOff 	| [timeOffItem](timeoffitem.md)  |The shared version of this `timeOff` that is viewable by both employees and managers. Required.|
| draftTimeOff		| [timeOffItem](timeoffitem.md)        |The draft version of this `timeOff` that is viewable by managers. Required.|
| createdDateTime		|`DateTimeOffset`        |The time stamp at which this `timeOff` was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`        |The time stamp at which this `timeOff` was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this `timeOff`. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOff",
   "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "userId": "string (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "sharedTimeOff": {"@odata.type":"microsoft.graph.timeOffItem"},
  "draftTimeOff": {"@odata.type":"microsoft.graph.timeOffItem"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOff resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
