---
title: "event resource type"
description: "An event in a calendar."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# event resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An event in a [user](user.md) calendar, or the default calendar of an Office 365 [group](group.md).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/event-delta.md) function.

> **Note:** There are a few minor differences in the way you can interact with user calendars, group calendars, and their events:

 - You can organize only user calendars in a [calendarGroup](calendargroup.md).
 - Outlook automatically accepts all meeting requests on behalf of groups. You can [accept](../api/event-accept.md), [tentatively accept](../api/event-tentativelyaccept.md), or [decline](../api/event-decline.md)  meeting requests for _user_ calendars only.
  - Outlook doesn't support reminders for group events. You can [snooze](../api/event-snoozereminder.md) or [dismiss](../api/event-dismissreminder.md) a [reminder](reminder.md) for _user_ calendars only.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "calendar",
    "extensions",
    "instances",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.event"
}-->

```json
{
  "attendees": [{"@odata.type": "microsoft.graph.attendee"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "categories": ["string"],
  "changeKey": "string",
  "createdDateTime": "String (timestamp)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "hasAttachments": true,
  "iud": "string",
  "id": "string (identifier)",
  "importance": "String",
  "isAllDay": true,
  "isCancelled": true,
  "isOrganizer": true,
  "isReminderOn": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "locations": [{"@odata.type": "microsoft.graph.location"}],
  "onlineMeetingUrl": "string",
  "organizer": {"@odata.type": "microsoft.graph.recipient"},
  "originalEndTimeZone": "string",
  "originalStart": "String (timestamp)",
  "originalStartTimeZone": "string",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "reminderMinutesBeforeStart": 1024,
  "responseRequested": true,
  "responseStatus": {"@odata.type": "microsoft.graph.responseStatus"},
  "sensitivity": "String",
  "seriesMasterId": "string",
  "showAs": "String",
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "string",
  "type": "String",
  "webLink": "string",
  
  "attachments": [ { "@odata.type": "microsoft.graph.attachment" } ],
  "calendar": { "@odata.type": "microsoft.graph.calendar" },
  "extensions": [ { "@odata.type": "microsoft.graph.extension" } ],
  "instances": [ { "@odata.type": "microsoft.graph.event" }],
  "multiValueExtendedProperties": [ { "@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty" }],
  "singleValueExtendedProperties": [ { "@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty" }]
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|[Attendee](attendee.md) collection|The collection of attendees for the event.|
|body|[ItemBody](itembody.md)|The body of the message associated with the event. It can be in HTML or text format.|
|bodyPreview|String|The preview of the message associated with the event. It is in text format.|
|categories|String collection|The categories associated with the event. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) defined for the user.|
|changeKey|String|Identifies the version of the event object. Every time the event is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|end|[DateTimeTimeZone](datetimetimezone.md)|The date and time that the event ends.|
|hasAttachments|Boolean|Set to true if the event has attachments.|
|id|String| Read-only.|
|importance|String|The importance of the event. Possible values are: `low`, `normal`, `high`.|
|isAllDay|Boolean|Set to true if the event lasts all day.|
|isCancelled|Boolean|Set to true if the event has been canceled.|
|isOrganizer|Boolean|Set to true if the message sender is also the organizer.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the event.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|location|[Location](location.md)|The location of the event.|
|locations|[Location](location.md) collection|The locations where the event is held or attended from. The **location** and **locations** properties always correspond with each other. If you update the **location** property, any prior locations in the **locations** collection would be removed and replaced by the new **location** value. |
|onlineMeetingUrl|String|A URL for an online meeting. The property is set only when an organizer specifies an event as an online meeting such as Skype. Read-only.|
|organizer|[Recipient](recipient.md)|The organizer of the event.|
|originalEndTimeZone|String|The end time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|originalStart|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|originalStartTimeZone|String|The start time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|recurrence|[PatternedRecurrence](patternedrecurrence.md)|The recurrence pattern for the event.|
|reminderMinutesBeforeStart|Int32|The number of minutes before the event start time that the reminder alert occurs.|
|responseRequested|Boolean|Set to true if the sender would like a response when the event is accepted or declined.|
|responseStatus|[ResponseStatus](responsestatus.md)|Indicates the type of response sent in response to an event message.|
|sensitivity|String| Possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|String|The ID for the recurring series master item, if this event is part of a recurring series.|
|showAs|String|The status to show. Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|[DateTimeTimeZone](datetimetimezone.md)|The start time of the event.|
|subject|String|The text of the event's subject line.|
|type|String|The event type. Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`. Read-only|
|uid|String|A unique identifier that is shared by all instances of an event across different calendars. **Note:** this property serves the same purpose as the `iCalUid` property on the [event resource](/graph/api/resources/event?view=graph-rest-1.0) on the v1.0 endpoint, but is not guaranteed to have the same value.|
|webLink|String|The URL to open the event in Outlook Web App.<br/><br/>The event will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br/><br/>This URL can be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The collection of [FileAttachment](fileattachment.md), [ItemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the event. Navigation property. Read-only. Nullable.|
|calendar|[Calendar](calendar.md)|The calendar that contains the event. Navigation property. Read-only.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the event. Nullable.|
|instances|[Event](event.md) collection|The instances of the event. Navigation property. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the event. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the event. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List events](../api/user-list-events.md)|[Event](event.md) collection |Retrieve a list of [event](../resources/event.md) objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user-post-events.md) |[event](event.md)| Create a new event by posting to the instances collection.|
|[Get event](../api/event-get.md) | [event](event.md) |Read properties and relationships of event object.|
|[Update](../api/event-update.md) | [event](event.md)	|Update event object. |
|[Delete](../api/event-delete.md) | None |Delete event object. |
|[cancel](../api/event-cancel.md) | None | Send cancellation message from the organizer to all the attendees and cancel the specified meeting. |
|[accept](../api/event-accept.md)|None|Accept the specified event in a user calendar.|
|[tentativelyAccept](../api/event-tentativelyaccept.md)|None|Tentatively accept the specified event in a user calendar.|
|[decline](../api/event-decline.md)|None|Decline invitation to the specified event in a user calendar.|
|[forward](../api/event-forward.md)|None|Lets the organizer or attendee of a meeting event forward the meeting request to a new recipient.|
|[delta](../api/event-delta.md)|[event](event.md) collection|Get a set of events that have been added, deleted, or updated in a **calendarView** (a range of events) of the user's primary calendar.|
|[dismissReminder](../api/event-dismissreminder.md)|None|Dismiss the reminder for the specified event in a user calendar.|
|[snoozeReminder](../api/event-snoozereminder.md)|None|Postpone a reminder for the specified event in a user calendar until a new time.|
|[List instances](../api/event-list-instances.md) |[Event](event.md) collection| Get a Event object collection.|
|**Attachments**| | |
|[List attachments](../api/event-list-attachments.md) |[Attachment](attachment.md) collection| Get all attachments on an event.|
|[Add attachment](../api/event-post-attachments.md) |[Attachment](attachment.md)| Add a new attachment to an event by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[event](event.md)  |Create one or more single-value extended properties in a new or existing event.   |
|[Get event with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [event](event.md) | Get events that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [event](event.md) | Create one or more multi-value extended properties in a new or existing event.  |
|[Get event with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [event](event.md) | Get an event that contains a multi-value extended property by using `$expand`. |

## See also

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to events in a folder](/graph/delta-query-events)
- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "event resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
