---
title: "participantJoiningNotification resource type"
description: "Contains details about the policy-based participant joining a call."
author: "yizhenww"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# participantJoiningNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the policy-based participant joining a call.

Under the [Policy-based recording scenario](/microsoftteams/teams-recording-policy), before a participant under the policy joins a call, a `participantJoiningNotification` will be sent to the bot associated with the policy that has available capacity to handle the new participant.

A [participantJoiningResponse](participantjoiningResponse.md) in the response payload is expected from the bot.

## Properties
| Property       | Type            | Description                                                        |
| -------------- | --------------  | -------------------------------------------                        |
| call           | [call](call.md) | The call object that contains details about the participant joining event. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.participantJoiningNotification"
}-->
```json
{
  "call": {"@odata.type": "#microsoft.graph.call"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participantJoiningNotification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

