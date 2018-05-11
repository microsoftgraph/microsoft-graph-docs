# event resource type

An event in a calendar.

This resource supports:

- Adding your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).
- Using [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/event_delta.md) function.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List events](../api/user_list_events.md)|[event](event.md) collection |Retrieve a list of [event](../resources/event.md) objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user_post_events.md) |[event](event.md)| Create a new event by posting to the instances collection.|
|[Get event](../api/event_get.md) | [event](event.md) |Read properties and relationships of event object.|
|[Update](../api/event_update.md) | [event](event.md) |Update event object. |
|[Delete](../api/event_delete.md) | None |Delete event object. |
|[accept](../api/event_accept.md)|None|Accept the specified event.|
|[tentativelyAccept](../api/event_tentativelyaccept.md)|None|Tentatively accept the specified event.|
|[decline](../api/event_decline.md)|None|Decline invitation to the specified event.|
|[delta](../api/event_delta.md)|[event](event.md) collection|Get a set of events that have been added, deleted, or updated in a **calendarView** (a range of events) of the user's primary calendar.|
|[dismissReminder](../api/event_dismissreminder.md)|None|Dismiss the reminder for the specified event.|
|[snoozeReminder](../api/event_snoozereminder.md)|None|Snooze the reminder for the specified event.|
|[List instances](../api/event_list_instances.md) |[event](event.md) collection| Get the instances (occurrences) of an event for a specified time range. If the event is a `SeriesMaster` type, this returns the occurrences and exceptions of the event in the specified time range.|
|**Attachments**| | |
|[List attachments](../api/event_list_attachments.md) |[attachment](attachment.md) collection| Get all attachments on an event.|
|[Add attachment](../api/event_post_attachments.md) |[attachment](attachment.md)| Add a new attachment to an event by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension object or objects identified by name or fully qualified name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[event](event.md)  |Create one or more single-value extended properties in a new or existing event.   |
|[Get event with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [event](event.md) | Get events that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [event](event.md) | Create one or more multi-value extended properties in a new or existing event.  |
|[Get event with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [event](event.md) | Get an event that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|[attendee](attendee.md) collection|The collection of attendees for the event.|
|body|[itemBody](itembody.md)|The body of the message associated with the event. It can be in HTML or text format.|
|bodyPreview|String|The preview of the message associated with the event. It is in text format.|
|categories|String collection|The categories associated with the event.|
|changeKey|String|Identifies the version of the event object. Every time the event is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event ends.|
|hasAttachments|Boolean|Set to true if the event has attachments.|
|iCalUId|String|A unique identifier that is shared by all instances of an event across different calendars.|
|id|String| Read-only.|
|importance|String|The importance of the event. Possible values are: `low`, `normal`, `high`.|
|isAllDay|Boolean|Set to true if the event lasts all day.|
|isCancelled|Boolean|Set to true if the event has been canceled.|
|isOrganizer|Boolean|Set to true if the message sender is also the organizer.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the event.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|location|[location](location.md)|The location of the event.|
|locations|[location](location.md) collection|The locations where the event is held or attended from. The **location** and **locations** properties always correspond with each other. If you update the **location** property, any prior locations in the **locations** collection would be removed and replaced by the new **location** value. |
|onlineMeetingUrl|String|A URL for an online meeting.|
|organizer|[recipient](recipient.md)|The organizer of the event.|
|originalEndTimeZone|String|The end time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|originalStart|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|originalStartTimeZone|String|The start time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook. |
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern for the event.|
|reminderMinutesBeforeStart|Int32|The number of minutes before the event start time that the reminder alert occurs.|
|responseRequested|Boolean|Set to true if the sender would like a response when the event is accepted or declined.|
|responseStatus|[responseStatus](responsestatus.md)|Indicates the type of response sent in response to an event message.|
|sensitivity|String| Possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|String|The ID for the recurring series master item, if this event is part of a recurring series.|
|showAs|String|The status to show. Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event starts.|
|subject|String|The text of the event's subject line.|
|type|String|The event type. Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`. Read-only.|
|webLink|String|The URL to open the event in Outlook Web App.<br/><br/>The event will open in the browser if you are logged in to your mailbox via Outlook Web App. You will be prompted to login if you are not already logged in with the browser.<br/><br/>This URL can be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileAttachment.md) and [itemAttachment](itemAttachment.md) attachments for the event. Navigation property. Read-only. Nullable.|
|calendar|[calendar](calendar.md)|The calendar that contains the event. Navigation property. Read-only.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the event. Read-only. Nullable.|
|instances|[event](event.md) collection|The instances of the event. Navigation property. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the event. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the event. Read-only. Nullable.|

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
  "keyProperty": "id",
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
  "iCalUId": "string",
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


## See also

- [Use delta query to track changes in Microsoft Graph data](../../../concepts/delta_query_overview.md)
- [Get incremental changes to events in a folder](../../../concepts/delta_query_events.md)
- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "event resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
