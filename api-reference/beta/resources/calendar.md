---
title: "calendar resource type"
description: "A calendar which is a container for events. It can be a calendar for a user, or the default calendar of a Microsoft 365 group."
localization_priority: Priority
author: "harini84"
ms.prod: "outlook"
doc_type: resourcePageType
---

# calendar resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A calendar which is a container for events. It can be a calendar for a [user](user.md), or the default calendar of a Microsoft 365 [group](group.md).

> **Note:** There are a few minor differences in the way you can interact with user calendars and group calendars:

- You can organize only user calendars in a [calendarGroup](calendargroup.md).
- Outlook automatically accepts all meeting requests on behalf of groups. You can [accept](../api/event-accept.md), [tentatively accept](../api/event-tentativelyaccept.md), or [decline](../api/event-decline.md)  meeting requests for user calendars only.
- Outlook doesn't support reminders for group events. You can [snooze](../api/event-snoozereminder.md) or [dismiss](../api/event-dismissreminder.md) a [reminder](reminder.md) for user calendars only.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List calendars](../api/user-list-calendars.md)|[calendar](calendar.md) collection|Get all the user's calendars, or the calendars in the default or other specific calendar group.|
|[Create calendar](../api/user-post-calendars.md) |[calendar](calendar.md)| Create a new calendar in the default calendar group or specified calendar group for a user.|
|[Get calendar](../api/calendar-get.md) | [calendar](calendar.md) |Get the properties and relationships of a **calendar** object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. |
|[Update](../api/calendar-update.md) | [calendar](calendar.md)  |Update the properties of a **calendar** object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. |
|[Delete](../api/calendar-delete.md) | None |Delete calendar object. |
|[List calendarView](../api/calendar-list-calendarview.md) |[event](event.md) collection| Get the occurrences, exceptions, and single instances of events in a calendar view defined by a time range, from the user's primary calendar `(../me/calendarview)` or from a specified calendar.|
|[List events](../api/calendar-list-events.md) |[event](event.md) collection| Retrieve a list of events in a calendar.  The list contains single instance meetings and series masters.|
|[Create event](../api/calendar-post-events.md) |[event](event.md)| Create a new event in the default or specified calendar.|
|[getSchedule](../api/calendar-getschedule.md) |[scheduleInformation](scheduleinformation.md) collection|Get the free/busy availability information for a collection of users, distributions lists, or resources, for a specified time period. |
|[findMeetingTimes](../api/user-findmeetingtimes.md) |[meetingTimeSuggestionsResult](meetingtimesuggestionsresult.md) |Suggest meeting times and locations based on organizer and attendee availability, and time or location constraints. |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[calendar](calendar.md)  |Create one or more single-value extended properties in a new or existing calendar.   |
|[Get calendar with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [calendar](calendar.md) | Get calendars that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [calendar](calendar.md) | Create one or more multi-value extended properties in a new or existing calendar.  |
|[Get calendar with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [calendar](calendar.md) | Get a calendar that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowedOnlineMeetingProviders|string collection| Represent the online meeting service providers that can be used to create online meetings in this calendar. Possible values are: `unknown`, `skypeForBusiness`, `skypeForConsumer`, `teamsForBusiness`.|
|calendarGroupId|String|The [calendarGroup](calendargroup.md) in which to create the calendar. If the user has never explicitly set a group for the calendar, this property is  null.|
|canEdit |Boolean |True if the user can write to the calendar, false otherwise. This property is true for the user who created the calendar. This property is also true for a user who has been shared a calendar and granted write access, through an Outlook client or the corresponding [calendarPermission](calendarpermission.md) resource. Read-only.|
|canShare |Boolean |True if the user has the permission to share the calendar, false otherwise. Only the user who created the calendar can share it. Read-only.|
|canViewPrivateItems |Boolean |True if the user can read calendar items that have been marked private, false otherwise. This property is set through an Outlook client or the corresponding [calendarPermission](calendarpermission.md) resource. Read-only.|
|changeKey|String|Identifies the version of the calendar object. Every time the calendar is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.|
|color|String|Specifies the color theme to distinguish the calendar from other calendars in a UI. The property values are: LightBlue=0, LightGreen=1, LightOrange=2, LightGray=3, LightYellow=4, LightTeal=5, LightPink=6, LightBrown=7, LightRed=8, MaxColor=9, Auto=-1|
|defaultOnlineMeetingProvider|onlineMeetingProviderType|The default online meeting provider for meetings sent from this calendar. Possible values are: `unknown`, `skypeForBusiness`, `skypeForConsumer`, `teamsForBusiness`.|
|hexColor|String|The calendar color, expressed in a hex color code of three hexidecimal values, each ranging from 00 to FF and representing the red, green, or blue components of the color in the RGB color space. If the user has never explicitly set a color for the calendar, this property is  empty. |
|id|String|The calendar's unique identifier. Read-only.|
|isDefaultCalendar|Boolean|True if this is the default calendar where new events are created by default, false otherwise.|
|isRemovable|Boolean| Indicates whether this user calendar can be deleted from the user mailbox.|
|isShared |Boolean |True if the user has shared the calendar with other users, false otherwise. Since only the user who created the calendar can share it, **isShared** and **isSharedWithMe** cannot be true for the same user. This property is set when sharing is initiated in an Outlook client, and can be reset when the sharing is cancelled through the client or the corresponding [calendarPermission](calendarpermission.md) resource. Read-only.|
|isSharedWithMe |Boolean |True if the user has been shared this calendar, false otherwise. This property is always false for a calendar owner. This property is set when sharing is initiated in an Outlook client, and can be reset when the sharing is cancelled through the client or the corresponding [calendarPermission](calendarpermission.md) resource. Read-only. |
|isTallyingResponses|Boolean|Indicates whether this user calendar supports tracking of meeting responses. Only meeting invites sent from users' primary calendars support tracking of meeting responses.|
|name|String|The calendar name.|
|owner |[emailAddress](emailaddress.md) | If set, this represents the user who created or added the calendar. For a calendar that the user created or added, the **owner** property is set to the user. For a calendar shared with the user, the **owner** property is set to the person who shared that calendar with the user. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|calendarPermissions|[calendarPermission](calendarpermission.md) collection| The permissions of the users with whom the calendar is shared.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Navigation property. Read-only.|
|events|[event](event.md) collection|The events in the calendar. Navigation property. Read-only.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the calendar. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the calendar. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "calendarView",
    "events",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.calendar"
}-->

```json
{
  "allowedOnlineMeetingProviders": ["string"],
  "canEdit": "boolean",
  "canShare": "boolean",
  "canViewPrivateItems": "boolean",
  "changeKey": "string",
  "color": "String",
  "defaultOnlineMeetingProvider": "string",
  "hexColor": "String",
  "id": "string (identifier)",
  "isDefaultCalendar": "boolean",
  "isRemovable": "boolean",
  "isShared": "boolean",
  "isSharedWithMe": "boolean",
  "isTallyingResponses": "boolean",
  "name": "string",
  "owner": {"@odata.type": "microsoft.graph.emailAddress"}
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "calendar resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


