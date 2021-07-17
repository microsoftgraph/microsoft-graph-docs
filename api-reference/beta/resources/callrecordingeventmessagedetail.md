---
title: "callRecordingEventMessageDetail resource type"
description: "Represents the details of an event message about call recording."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callRecordingEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about call recording.
This message is generated when a call recording starts.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|callRecordingDisplayName|String|Display name for the call recording.|
|callRecordingDuration|Duration|Duration of the call recording.|
|callRecordingStatus|callRecordingStatus|Status of the call recording. Possible values are: `success`, `failure`, `initial`, `chunkFinished`, `unknownFutureValue`.|
|callRecordingUrl|String|Call recording URL.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|meetingOrganizer|[identitySet](../resources/identityset.md)|Organizer of the meeting.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecordingEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecordingEventMessageDetail",
  "callId": "String",
  "callRecordingDisplayName": "String",
  "callRecordingUrl": "String",
  "callRecordingDuration": "String (duration)",
  "callRecordingStatus": "String",
  "meetingOrganizer": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response for an event message about call recording](/graph/system-messages/#call-recording)
- For more information about other types of events, see [System messages](/graph/system-messages).

