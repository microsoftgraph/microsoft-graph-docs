---
title: "rejectJoinResponse resource type"
description: "Contains a response to reject a participant who tries to join the meeting."
author: "yizhenww"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# rejectJoinResponse resource type

Namespace: microsoft.graph

Contains a response to reject a participant who tries to join the meeting.

This has the same effect as rejecting a policy recording incoming call notification using the [reject-call](../api/call-reject.md) method. The bot will continue to receive a participant joining notification for a new user joining until its capacity has been reached.

## Properties

| Property         | Type                            | Description                                                                                                                                                  |
| :--------------- | :------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| reason           | String                          | The rejection reason. Possible values are `None`, `Busy`, and `Forbidden`.                                                                                     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.rejectJoinResponse"
}-->
```json
{
  "reason": "None | Busy | Forbidden" 
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "rejectJoinResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
