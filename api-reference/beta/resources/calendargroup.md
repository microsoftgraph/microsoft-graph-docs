# calendarGroup resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A group of user calendars.

## Methods

| Method                                                      | Return Type                        | Description                                                   |
| :---------------------------------------------------------- | :--------------------------------- | :------------------------------------------------------------ |
| [List calendar groups](../api/user_list_calendargroups.md)  | [Calendar](calendar.md) collection | Get the user's calendar groups.                               |
| [Create calendar group](../api/user_post_calendargroups.md) | [Calendar](calendar.md)            | Create a new calendar group.                                  |
| [Get calendar group](../api/calendargroup_get.md)           | [calendarGroup](calendargroup.md)  | Read properties and relationships of a calendar group object. |
| [Update](../api/calendargroup_update.md)                    | [calendarGroup](calendargroup.md)  | Update calendarGroup object.                                  |
| [Delete](../api/calendargroup_delete.md)                    | None                               | Delete calendarGroup object.                                  |
| [List calendars](../api/calendargroup_list_calendars.md)    | [Calendar](calendar.md) collection | List calendars in a calendar group.                           |
| [Create Calendar](../api/calendargroup_post_calendars.md)   | [Calendar](calendar.md)            | Create a new Calendar in a calendar group.                    |

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

<!-- {
  "type": "#page.annotation",
  "description": "calendarGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
