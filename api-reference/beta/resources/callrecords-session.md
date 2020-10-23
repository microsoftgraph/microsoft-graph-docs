---
title: "session resource type"
description: "The session type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# session resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a User-User communication or a User-Meeting communication
in the case of a Conference call.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List sessions](../api/callrecords-session-list.md) | [microsoft.graph.callRecords.session](callrecords-session.md) collection | Retrieve the list of sessions associated with a [callRecord](callrecords-callrecord.md) object.
 |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|Unique identifier for the session. Read-only.|
|caller|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that initiated the session.|
|callee|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that answered the session.|
|failureInfo|[microsoft.graph.callRecords.failureInfo](callrecords-failureinfo.md)|Failure information associated with the session if the session failed.|
|modalities|microsoft.graph.callRecords.modality collection|List of modalities present in the session. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `screenSharing`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|UTC fime when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|endDateTime|DateTimeOffset|UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|segments|[microsoft.graph.callRecords.segment](callrecords-segment.md) collection|The list of segments involved in the session. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.session",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "caller": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "callee": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "failureInfo": {"@odata.type": "microsoft.graph.callRecords.failureInfo"},
  "modalities": ["string"],
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "session resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

