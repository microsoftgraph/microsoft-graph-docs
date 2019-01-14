---
title: "recordingInfo resource type"
description: "Recording information for a participant."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# recordingInfo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Recording information for a participant.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| initiatedBy | [participantInfo](participantinfo.md) | The participant who initiated the recording. |
| status | String | Possible values are: `recordingCapable`, `notRecording`, `startedRecording`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recordingInfo"
}-->
```json
{
  "initiatedBy": {"@odata.type": "#microsoft.graph.participantInfo"},
  "status": "recordingCapable | notRecording | startedRecording"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recordingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
