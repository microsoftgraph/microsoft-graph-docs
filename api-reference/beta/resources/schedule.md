---
title: "schedule resource type"
description: "A collection of schedulingGroups, shifts, timeOffReasons and timesOff within a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# schedule resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of [schedulingGroup](schedulinggroup.md) objects, [shift](shift.md) objects, [timeOffReason](timeoffreason.md) objects, and [timeOff](timeoff.md) objects within a [team](../resources/team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create or replace schedule](../api/team-put-schedule.md) | [schedule](schedule.md) | Create or replace a `schedule`.|
|[Get schedule](../api/schedule-get.md) | [schedule](schedule.md) | Get a `schedule`.|
|[share](../api/schedule-share.md) | None | Share a `schedule` time range with schedule members.|

## Properties
|Name                   |Type           |Description                                                                                                                                      |
|-----------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			        |`string`  |ID of the `schedule`.|
| enabled 			    |`bool`    | Indicates whether the schedule is enabled for the team. Required.|
| timeZone 		        |`string`  | Indicates the time zone of the schedule team using tz database format. Required.|
| provisionStatus       |`enum`    | The status of the schedule provisioning. |
| provisionStatusCode   |`string`  | Additional information about why schedule provisioning failed. |


## Relationships
|Name                   |Type           |Description                                                                                                                                      |
|-----------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| shifts   |`collection(shift)`  | The shifts in the schedule. |
| timesOff   |`collection(timeOff)`  | The instances of times off in the schedule. |
| timeOffReasons   |`collection(timeOffReason)`  | The set of reasons for a time off in the schedule. |
| schedulingGroups   |`collection(schedulingGroup)`  | The logical grouping of users in the schedule (usually by role). |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedule"
}-->

```json
{
  "id": "833fc4df-c88b-4398-992f-d8afcfe41df2",
  "enabled": true,
  "timeZone": "America/Chicago",
  "provisionStatus": "Completed",
  "provisionStatusCode": null
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "schedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/schedule.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
