---
title: "shift resource type"
description: "Represents a unit of scheduled work in the schedule."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# shift resource type

Namespace: microsoft.graph

Represents a unit of scheduled work in a [schedule](schedule.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List shifts](../api/schedule-list-shifts.md) | [shift](shift.md) collection | Get the list of **shifts** in this schedule.|
|[Create shift](../api/schedule-post-shifts.md) | [shift](shift.md) | Create a new **shift**.|
|[Get shift](../api/shift-get.md) | [shift](shift.md) | Get a **shift** by ID.|
|[Replace shift](../api/shift-put.md) | [shift](shift.md) | Replace a **shift**.|
|[Delete shift](../api/shift-delete.md) | None | Delete a **shift** from the schedule.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			|`string`      |ID of the **shift**.|
| userId 			|`string`      |ID of the user assigned to the **shift**. Required. |
| schedulingGroupId 		|`string`      |ID of the scheduling group the **shift** is part of. Required. |
| sharedShift 	|[shiftItem](shiftitem.md)  |The shared version of this **shift** that is viewable by both employees and managers. Required. |
| draftShift		|[shiftItem](shiftitem.md)        |The draft version of this **shift** that is viewable by managers. Required. |
| createdDateTime		|`DateTimeOffset`        |The timestamp on which this **shift** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`        |The timestamp on which this **shift** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **shift**.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shift"
}-->

```json
{
  "id": "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
  "createdDateTime": "2019-03-14T04:32:51.451Z",
  "lastModifiedDateTime": "2019-03-14T05:32:51.451Z",
  "userId": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
  "schedulingGroupId": "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
  "lastModifiedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "sharedShift": {"@odata.type":"microsoft.graph.shiftItem"},
  "draftShift": {"@odata.type":"microsoft.graph.shiftItem"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "shift resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

