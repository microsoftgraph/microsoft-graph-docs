---
title: "calendarGroup resource type"
description: "A group of user calendars."
author: "harini84"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# calendarGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of user calendars.

## Methods

| Method                                                      | Return Type                        | Description                                                   |
| :---------------------------------------------------------- | :--------------------------------- | :------------------------------------------------------------ |
| [List calendar groups](../api/user-list-calendargroups.md)  | [Calendar](calendar.md) collection | Get the user's calendar groups.                               |
| [Create calendar group](../api/user-post-calendargroups.md) | [Calendar](calendar.md)            | Create a new calendar group.                                  |
| [Get calendar group](../api/calendargroup-get.md)           | [calendarGroup](calendargroup.md)  | Read properties and relationships of a calendar group object. |
| [Update](../api/calendargroup-update.md)                    | [calendarGroup](calendargroup.md)  | Update calendarGroup object.                                  |
| [Delete](../api/calendargroup-delete.md)                    | None                               | Delete calendarGroup object.                                  |
| [List calendars](../api/calendargroup-list-calendars.md)    | [Calendar](calendar.md) collection | List calendars in a calendar group.                           |
| [Create Calendar](../api/calendargroup-post-calendars.md)   | [Calendar](calendar.md)            | Create a new Calendar in a calendar group.                    |

## Properties

| Property  | Type   | Description                                                                                                                                                                                               |
| :-------- | :----- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| name      | String | The group name.                                                                                                                                                                                           |
| changeKey | String | Identifies the version of the calendar group. Every time the calendar group is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only. |
| classId   | Guid   | The class identifier. Read-only.                                                                                                                                                                          |
| id        | String | The group's unique identifier. Read-only.                                                                                                                                                                 |

## Relationships

| Relationship | Type                               | Description                                                                    |
| :----------- | :--------------------------------- | :----------------------------------------------------------------------------- |
| calendars    | [Calendar](calendar.md) collection | The calendars in the calendar group. Navigation property. Read-only. Nullable. |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "calendars"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.calendarGroup"
}-->

```json
{
  "changeKey": "string",
  "classId": "guid",
  "id": "string (identifier)",
  "name": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "calendarGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


