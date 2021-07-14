---
title: "broadcastMeetingSettings resource type"
description: "Settings related to a live event"
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# broadcastMeetingSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings related to a live event.

> [!CAUTION]
> This API does not validate live event settings that are managed by [policy](/microsoftteams/teams-live-events/set-teams-live-events-policies-using-powershell).
> For example, if an admin sets a live event policy using `Set-CsTeamsMeetingBroadcastPolicy -Identity Global -BroadcastAttendeeVisibility EveryoneInCompany`,
> users will be prevented from setting live event permissions to `public` in their Teams client, but will be able to create a live event via Microsoft Graph
> by setting **allowedAudience** to `everyone`.

## Properties

| Property                   | Type                     | Description                                                                     |
| -------------------------- | ------------------------ | ------------------------------------------------------------------------------- |
| allowedAudience            | [broadcastMeetingAudience](#broadcastmeetingaudience-values) | Defines who can join the live event. Possible values are listed in the following table. |
| isRecordingEnabled         | Boolean                  | Indicates whether recording is enabled for this live event. Default value is `false`.          |
| isAttendeeReportEnabled    | Boolean                  | Indicates whether attendee report is enabled for this live event. Default value is `false`.    |
| isQuestionAndAnswerEnabled | Boolean                  | Indicates whether Q&A is enabled for this live event. Default value is `false`.                |
| isVideoOnDemandEnabled     | Boolean                  | Indicates whether video on demand is enabled for this live event. Default value is `false`.    |

### broadcastMeetingAudience values

| Value              | Description                                                       |
| ------------------ | ----------------------------------------------------------------- |
| everyone           | The live event will be open to anyone. This is the default value. |
| organization       | Everyone in your org can join the live event.                     |
| roleIsAttendee     | Only the specified people can join the live event.                |
| unknownFutureValue | Unknown future value.                                             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.broadcastMeetingSettings"
}-->
```json
{
  "allowedAudience": "String",
  "isRecordingEnabled": "Boolean",
  "isAttendeeReportEnabled": "Boolean",
  "isQuestionAndAnswerEnabled": "Boolean",
  "isVideoOnDemandEnabled": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "broadcastSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
