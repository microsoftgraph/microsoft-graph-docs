---
title: "timeOffReason resource type"
description: "Represents a valid reason to take time-off in the schedule."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType_
---

# timeOffReason resource type

Namespace: microsoft.graph

Represents a valid reason to for a [timeOff](timeoff.md) instance in a [schedule](schedule.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/schedule-list-timeoffreasons.md) | [timeOffReason](timeoffreason.md) collection | Get the list of **timeOffReason** in a schedule.|
|[Create](../api/schedule-post-timeoffreasons.md) | [timeOffReason](timeoffreason.md) | Create a new **timeOffReason**.|
|[Get](../api/timeoffreason-get.md) | [timeOffReason](timeoffreason.md) | Get a **timeOffReason** by ID.|
|[Replace](../api/timeoffreason-put.md) | [timeOffReason](timeoffreason.md) | Replace a **timeOffReason**.|
|[Delete](../api/timeoffreason-delete.md) | None | Mark a **timeOffReason** as inactive.|

## Properties
|Name          |Type           |Description                                                                                 |
|--------------|---------------|--------------------------------------------------------------------------------------------|
| id			|`string`      |ID of the `timeOffReason`.|
| displayName               | `string`                  | The name of the **timeOffReason**. Required. |
| iconType | `timeOffReasonIconType`   | Supported icon types: none; car; calendar; running; plane; firstAid; doctor; notWorking; clock; juryDuty; globe; cup; phone; weather; umbrella; piggyBank; dog; cake; trafficCone; pin; sunny. Required. |
| isActive 			|`Boolean`      | Indicates whether the **timeOffReason** can be used when creating new entities or updating existing ones. Required. |
| createdDateTime		|`DateTimeOffset`        |The time stamp on which this **timeOffReason** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`         |The time stamp on which this **timeOffReason** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **timeOffReason**.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffReason",
  "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "id": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "iconType": "String",
  "isActive": true,
  "lastModifiedBy": { "@odata.type":"microsoft.graph.identitySet"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOffReason resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

