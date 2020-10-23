---
title: "segment resource type"
description: "The segment type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# segment resource type

Namespace: microsoft.graph.callRecords

Represents a portion of a User-User communication or a User-Meeting communication
in the case of a Conference call. A typical VOIP call will have one segment per session. In certain
scenarios, such as PSTN calls, there will be multiple segments per session due to additional
server-to-server communication required to connect the call.

## Methods

No methods exist to directly access segments. Please use the [Get callRecord](../api/callrecords-callrecord-get.md)
api with `$expand=sessions($expand=segments)` or the [List session](../api/callrecords-session-list.md) api with
`$expand=segments` to get the segments for a [callRecord](callrecords-callrecord.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|Unique identifier for the segment. Read-only.|
|caller|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that initiated this segment.|
|callee|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that answered this segment.|
|failureInfo|[microsoft.graph.callRecords.failureInfo](callrecords-failureinfo.md)|Failure information associated with the segment if it failed.|
|media|[microsoft.graph.callRecords.media](callrecords-media.md) collection|Media associated with this segment.|
|startDateTime|DateTimeOffset|UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|endDateTime|DateTimeOffset|UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.segment",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "caller": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "callee": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "failureInfo": {"@odata.type": "microsoft.graph.callRecords.failureInfo"},
  "media": [{"@odata.type": "microsoft.graph.callRecords.media"}],
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "segment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
