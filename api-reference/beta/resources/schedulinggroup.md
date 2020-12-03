---
title: "schedulingGroup resource type"
description: "A logical grouping of members in the schedule (usually by role)."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# schedulingGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A logical grouping of users in a [schedule](schedule.md) (usually by role). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create schedulingGroup](../api/schedule-post-schedulinggroups.md) | [schedulingGroup](schedulinggroup.md) | Create a new `schedulingGroup`.|
|[List schedulingGroups](../api/schedule-list-schedulinggroups.md) | [schedulingGroup](schedulinggroup.md) collection | Get the list of `schedulingGroups` in a schedule.|
|[Get schedulingGroup](../api/schedulinggroup-get.md) | [schedulingGroup](schedulinggroup.md) | Get a `schedulingGroup` by ID.|
|[Replace schedulingGroup](../api/schedulinggroup-put.md) | [schedulingGroup](schedulinggroup.md) | Replace a `schedulingGroup`.|
|[Delete schedulingGroup](../api/schedulinggroup-delete.md) | None | Mark `schedulingGroup` as inactive.|

## Properties
|Name          |Type           |Description                                                                                 |
|--------------|---------------|--------------------------------------------------------------------------------------------|
| id			| `string`      |ID of the `schedulingGroup`.|
| displayName   | `string`      | The display name for the `schedulingGroup`. Required. |
| isActive 			|`bool`      | Indicates whether the `schedulingGroup` can be used when creating new entities or updating existing ones. Required. |
| userIds 		| `collection(string)`    |  The list of user IDs that are a member of the `schedulingGroup`. Required. |
| createdDateTime		|`DateTimeOffset`        |The time stamp in which this `schedulingGroup` was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`        |The time stamp in which this `schedulingGroup` was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		| [identitySet](identityset.md) |The identity that last updated this `schedulingGroup`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedulingGroup",
  "baseType": "microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "id": "string (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "isActive": true,
  "userIds": ["String (identifier)"],
  "lastModifiedBy":{"@odata.type":"microsoft.graph.identitySet"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "schedulingGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


