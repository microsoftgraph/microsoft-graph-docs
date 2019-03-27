---
title: "timeOffItem resource type"
description: "Represents a version of the timeOff."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# timeOffItem resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a version of the [timeOff](timeoff.md).

## Properties
| Property                         | Type                    | Description                                                                                                                                                                        |
|------------------------------|-------------------------|---------------------------------------------------------------------------------------------|
| timeOffReasonId               | `string`                  | ID of the `timeOffReason` for this `timeOffItem`. Required.     |
| startDateTime               | `DateTimeOffset`                  | The start date and time for the `timeOffItem`. Required. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| endDateTime               | `DateTimeOffset`                  | The end date and time for the `timeOffItem`. Required. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| theme | `enum`   | Supported colors: white; blue; green; purple; pink; yellow; gray; darkBlue; darkGreen; darkPurple; darkPink; darkYellow. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffItem"
}-->
```json
{
  "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
  "startDateTime": "2019-03-11T07:00:00Z",
  "endDateTime": "2019-03-12T07:00:00Z",
  "theme": "pink"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOffItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/timeoffitem.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
