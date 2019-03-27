---
title: "timeOffReason resource type"
description: "A valid reason to take time-off in the schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# timeOffReason resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A valid reason to for a [timeOff](timeoff.md) instance in a [schedule](schedule.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create timeOffReason](../api/schedule-post-timeoffreasons.md) | [timeOffReason](timeoffreason.md) | Create a new `timeOffReason`.|
|[List timeOffReason](../api/schedule-list-timeoffreasons.md) | [timeOffReason](timeoffreason.md) collection | Get the list of `timeOffReasons` in a schedule.|
|[Get timeOffReason](../api/timeoffreason-get.md) | [timeOffReason](timeoffreason.md) | Get a `timeOffReason` by ID.|
|[Replace timeOffReason](../api/timeoffreason-put.md) | [timeOffReason](timeoffreason.md) | Replace a `timeOffReason`.|
|[Delete timeOffReason](../api/timeoffreason-delete.md) | None | Mark `timeOffReason` as inactive.|

## Properties
|Name          |Type           |Description                                                                                 |
|--------------|---------------|--------------------------------------------------------------------------------------------|
| id			|`string`      |ID of the `timeOffReason`.|
| displayName               | `string`                  | The name of the `timeOffReason`. Required. |
| iconType | `enum`   | Supported icon types: none; car; calendar; running; plane; firstAid; doctor; notWorking; clock; juryDuty; globe; cup; phone; weather; umbrella; piggyBank; dog; cake; trafficCone; pin; sunny. Required. |
| isActive 			|`bool`      | Indicates whether the `timeOffReason` can be used when creating new entities or updating existing ones. Required. |
| createdDateTime		|`DateTimeOffset`        |The time stamp on which this `timeOffReason` was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`         |The time stamp on which this `timeOffReason` was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		|`microsoft.graph.identitySet`        |The identity that last updated this `timeOffReason`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffReason"
}-->

```json
{
  "id": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
  "createdDateTime": "2019-03-12T22:10:38.242Z",
  "lastModifiedDateTime": "2019-03-12T22:10:38.242Z",
  "displayName": "Vacation",
  "iconType": "plane",
  "isActive": true,
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "conversation": null,
    "user": {
      "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
      "displayName": "John Doe"
    }
  }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOffReason resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/timeoffreason.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
