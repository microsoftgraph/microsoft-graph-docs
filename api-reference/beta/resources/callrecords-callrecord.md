---
title: "callRecord resource type"
description: "Represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting."
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# callRecord resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get callRecord](../api/callrecords-callrecord-get.md) | [microsoft.graph.callRecords.callRecord](callrecords-callrecord.md) | Read the properties and relationships of a **callRecord** object. |
| [Get PSTN calls](../api/callrecords-callrecord-getpstncalls.md) | [microsoft.graph.callRecords.pstnCallLogRow](callrecords-pstncalllogrow.md)| Read the properties of a **pstnCallLogRow** object. |
| [Get direct routing calls](../api/callrecords-callrecord-getdirectroutingcalls.md) | [microsoft.graph.callRecords.directRoutingLogRow](callrecords-directroutinglogrow.md)| Read the properties of a **directRoutingLogRow** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endDateTime|DateTimeOffset|UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|Unique identifier for the call record. Read-only.|
|joinWebUrl|String|Meeting URL associated to the call. May not be available for a peerToPeer call record type.|
|lastModifiedDateTime|DateTimeOffset|UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|modalities|microsoft.graph.callRecords.modality collection|List of all the modalities used in the call. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `screenSharing`, `unknownFutureValue`.|
|organizer|[identitySet](identityset.md)|The organizing party's identity.|
|participants|[identitySet](identityset.md) collection|List of distinct identities involved in the call.|
|startDateTime|DateTimeOffset|UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|type|microsoft.graph.callRecords.callType|Indicates the type of the call. Possible values are: `unknown`, `groupCall`, `peerToPeer`, `unknownFutureValue`.|
|version|Int64|Monotonically increasing version of the call record. Higher version call records with the same ID includes additional data compared to the lower version.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|sessions|[microsoft.graph.callRecords.session](callrecords-session.md) collection|List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.callRecord",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "modalities": ["string"],
  "organizer": {"@odata.type": "microsoft.graph.identitySet"},
  "participants": [{"@odata.type": "microsoft.graph.identitySet"}],
  "startDateTime": "String (timestamp)",
  "type": "string",
  "version": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


