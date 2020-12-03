---
title: "meetingParticipantInfo resource type"
description: "Information about a participant in a meeting."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingParticipantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a participant in a meeting.

## Properties

| Property | Type                          | Description                                                                        |
| :------- | :---------------------------- | :--------------------------------------------------------------------------------- |
| identity | [identitySet](identityset.md) | Identity information of the participant.                                           |
| upn      | String                        | User principal name of the participant.                                            |
| role     | onlineMeetingRole             | Specifies the participant's role in the meeting.  Possible values are `attendee`, `presenter`, and `unknownFutureValue`.|

### onlineMeetingRole values

| Value              | Description                     |
| ------------------ | ------------------------------- |
| attendee           | The participant is an attendee. |
| presenter          | The participant is a presenter. |
| unknownFutureValue | Unknown future value.           |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipantInfo"
}-->
```json
{
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "upn": "String",
  "role": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


