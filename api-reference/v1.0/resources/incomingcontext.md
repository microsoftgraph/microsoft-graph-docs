---
title: "incomingContext resource type"
description: "Represents the context associated with an incoming call."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# incomingContext resource type

Namespace: microsoft.graph

Represents the context associated with an incoming call.

## Properties

| Property              | Type                          | Description                                                             |
|:----------------------|:------------------------------|:------------------------------------------------------------------------|
| sourceParticipantId   | String                        | The ID of the participant that triggered the incoming call. Read-only.  |
| observedParticipantId | String                        | The ID of the participant that is under observation. Read-only.         |
| onBehalfOf            | [identitySet](identityset.md) | The identity that the call is happening on behalf of.                   |
| transferor            | [identitySet](identityset.md) | The identity that transferred the call.                                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "sourceParticipantId",
    "observedParticipantId",
    "onBehalfOf",
    "transferor"
  ],
  "@odata.type": "microsoft.graph.incomingContext"
}-->
```json
{
  "sourceParticipantId": "String",
  "observedParticipantId": "String",
  "onBehalfOf": {"@odata.type": "#microsoft.graph.identitySet"},
  "transferor": {"@odata.type": "#microsoft.graph.identitySet"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "incomingContext resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

