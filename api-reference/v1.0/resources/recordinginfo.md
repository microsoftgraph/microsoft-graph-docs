---
title: "recordingInfo resource type"
description: "Represents recording information for a participant."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# recordingInfo resource type

Namespace: microsoft.graph

Represents recording information for a participant.

## Properties

| Property        | Type    | Description|
|:----------------|:--------|:----------|
| initiator     | [identitySet](identitySet.md) | The identities of the recording initiator. |
| recordingStatus | String | Possible values are: `unknown`, `notRecording`, `recording`, or `failed`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "initiator"
  ],
  "@odata.type": "microsoft.graph.recordingInfo"
}-->
```json
{
  "initiator": {"@odata.type": "#microsoft.graph.identitySet"},
  "recordingStatus": "unknown | notRecording | recording | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "recordingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

