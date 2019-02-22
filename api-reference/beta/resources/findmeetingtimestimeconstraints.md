---
title: "findMeetingTimesTimeConstraints resource type"
description: "Restricts meeting time suggestions to certain hours and days of the week according to the specified nature of activity and open time slots."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
---

# findMeetingTimesTimeConstraints resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restricts meeting time suggestions to the nature of activity and certain ranges of time.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.findMeetingTimesTimeConstraints"
}-->

```json
{
  "activityDomain": "String",
  "timeslots": [{"@odata.type": "microsoft.graph.timeSlot"}]
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityDomain|activityDomain|The nature of the activity, optional. Possible values are: `work`, `personal`, `unrestricted`, or `unknown`.|
|timeslots|[searchWindowTimeSlot](searchwindowtimeslot.md) collection|An array of time ranges to look into for possible meeting times.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "findMeetingTimesTimeConstraints resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/findmeetingtimestimeconstraints.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->