---
title: "event resource type"
description: "An event in a calendar."
author: "harini84"
localization_priority: Priority
ms.prod: "outlook"
doc_type: resourcePageType
---

# event resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An event in a [user](user.md) calendar, or the default calendar of a Microsoft 365 [group](group.md).

The maximum number of attendees included in an **event**, and the maximum number of recipients in an [eventMessage](eventmessage.md) sent from an Exchange Online mailbox is 500. For more information, see [sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/event-delta.md) function.

> **Note:** There are a few minor differences in the way you can interact with user calendars, group calendars, and their events:

- You can organize only user calendars in a [calendarGroup](calendargroup.md).
- You can add [attachment](attachment.md) objects to events in only user calendars, but not to events in group calendars.
- Outlook automatically accepts all meeting requests on behalf of groups. You can [accept](../api/event-accept.md), [tentatively accept](../api/event-tentativelyaccept.md), or [decline](../api/event-decline.md)  meeting requests for _user_ calendars only.
- Outlook doesn't support reminders for group events. You can [snooze](../api/event-snoozereminder.md) or [dismiss](../api/event-dismissreminder.md) a [reminder](reminder.md) for _user_ calendars only.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
   "keyProperty": "id",
  "optionalProperties": [
    "attachments",
    "calendar",
    "extensions",
    "instances",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.event"
}-->

```json
{
  "allowNewTimeProposals": "Boolean",
  "attendees": [{"@odata.type": "microsoft.graph.attendee"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "cancelledOccurrences":["string"],
  "categories": ["string"],
  "changeKey": "string",
  "createdDateTime": "String (timestamp)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "exceptionOccurrences":["string"],
  "hasAttachments": true,
  "uid": "string",
  "id": "string (identifier)",
  "importance": "String",
  "isAllDay": true,
  "isCancelled": true,
  "isDraft": false,
  "isOnlineMeeting": true,
  "isOrganizer": true,
  "isReminderOn": true,  
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "locations": [{"@odata.type": "microsoft.graph.location"}],
  "occurrenceId":"string",
  "onlineMeeting": {"@odata.type": "microsoft.graph.onlineMeetingInfo"},
  "onlineMeetingProvider": "string",
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
  "singleValueExtendedProperties": [ { "@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty" }],
  "multiValueExtendedProperties": [ { "@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty" }]
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowNewTimeProposals| Boolean | `True` if the meeting organizer allows invitees to propose a new time when responding, `false` otherwise. Optional. Default is `true`. |
|attendees|[Attendee](attendee.md) collection|The collection of attendees for the event.|
|body|[ItemBody](itembody.md)|The body of the message associated with the event. It can be in HTML or text format.|
|bodyPreview|String|The preview of the message associated with the event. It is in text format.|
|cancelledOccurrences|String collection|Contains **occurrenceId** property values of cancelled instances in a recurring series, if the event is the series master. Instances in a recurring series that are cancelled are called cancelledOccurences.<br><br>Returned only on $select in a [Get](../api/event-get.md) operation which specifies the id of a series master event (that is, the seriesMasterId property value).|
|categories|String collection|The categories associated with the event. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) defined for the user.|
|changeKey|String|Identifies the version of the event object. Every time the event is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|end|[DateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event ends. By default, the end time is in UTC.|
|exceptionOccurrences|String collection|Contains the **id** property values of the event instances that are exceptions in a recurring series.<br>Exceptions can differ from other occurrences in a recurring series, such as the subject, start or end times, or attendees. Exceptions do not include cancelled occurrences.<br><br>Returned only on $select and $expand in a [GET](../api/event-get.md) operation which specifies the id of a series master event (that is, the seriesMasterId property value).|
|hasAttachments|Boolean|Set to true if the event has attachments.|
|id|String| Unique identifier for the event. [!INCLUDE [outlook-beta-id](../../includes/outlook-beta-id.md)] Read-only. |
|importance|String|The importance of the event. Possible values are: `low`, `normal`, `high`.|
|isAllDay|Boolean|Set to true if the event lasts all day. If true, regardless of whether it's a single-day or multi-day event, start and end time must be set to midnight and be in the same time zone.|
|isCancelled|Boolean|Set to true if the event has been canceled.|
|isDraft|Boolean|Set to true if the user has updated the meeting in Outlook but has not sent the updates to attendees. Set to false if all changes have been sent, or if the event is an appointment without any attendees.|
|isOnlineMeeting|Boolean| `True` if this event has online meeting information (that is, **onlineMeeting** points to an [onlineMeetingInfo](onlinemeetinginfo.md) resource), `false` otherwise. Default is `false` (**onlineMeeting** is `null`). Optional. <br> After you set **isOnlineMeeting** to `true`, Microsoft Graph initializes **onlineMeeting**. Subsequently Outlook ignores any further changes to **isOnlineMeeting**, and the meeting remains available online. |
|isOrganizer|Boolean|Set to true if the calendar owner (specified by the **owner** property of the [calendar](calendar.md)) is the organizer of the event (specified by the **organizer** property of the **event**). This also applies if a delegate organized the event on behalf of the owner.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the event.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|location|[Location](location.md)|The location of the event.|
|locations|[Location](location.md) collection|The locations where the event is held or attended from. The **location** and **locations** properties always correspond with each other. If you update the **location** property, any prior locations in the **locations** collection would be removed and replaced by the new **location** value. |
|occurrenceId|String|An identifier for an occurrence in a recurring event series. Null if the event is not part of a recurring series.<br><br>The format of the property value is OID.{seriesMasterId-value}.{occurrence-start-date}. The time zone for {occurrence-start-date} is the recurrenceTimeZone property defined for the corresponding [recurrenceRange](recurrencerange.md).<br><br>This property can identify any occurrence in a recurring series, including an occurrence that has been modified or cancelled. You can use this property to perform all operations supported by occurrences in the recurring series.|
|onlineMeeting|[OnlineMeetingInfo](onlinemeetinginfo.md)| Details for an attendee to join the meeting online. Default is null. Read-only. <br>After you set the **isOnlineMeeting** and **onlineMeetingProvider** properties to enable a meeting online, Microsoft Graph initializes **onlineMeeting**. When set, the meeting remains available online, and you cannot change the **isOnlineMeeting**, **onlineMeetingProvider**, and **onlneMeeting** properties again.|
|onlineMeetingProvider|onlineMeetingProviderType| Represents the online meeting service provider. By default, **onlineMeetingProvider** is `unknown`. The possible values are `unknown`, `teamsForBusiness`, `skypeForBusiness`, and `skypeForConsumer`. Optional. <br> After you set **onlineMeetingProvider**, Microsoft Graph initializes **onlineMeeting**. Subsequently you cannot change **onlineMeetingProvider** again, and the meeting remains available online. |
|onlineMeetingUrl|String|A URL for an online meeting. The property is set only when an organizer specifies in Outlook that an event is an online meeting such as Skype. Read-only.<br>To access the URL to join an online meeting, use **joinUrl** which is exposed via the **onlineMeeting** property of the **event**. The **onlineMeetingUrl** property will be deprecated in the future. |
|organizer|[Recipient](recipient.md)|The organizer of the event.|
|originalEndTimeZone|String|The end time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|originalStart|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|originalStartTimeZone|String|The start time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|recurrence|[PatternedRecurrence](patternedrecurrence.md)|The recurrence pattern for the event.|
|reminderMinutesBeforeStart|Int32|The number of minutes before the event start time that the reminder alert occurs.|
|responseRequested|Boolean|Default is true, which represents the organizer would like an invitee to send a response to the event.|
|responseStatus|[ResponseStatus](responsestatus.md)|Indicates the type of response sent in response to an event message.|
|sensitivity|String| Possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|String|The ID for the recurring series master item, if this event is part of a recurring series.|
|showAs|String|The status to show. Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|[DateTimeTimeZone](datetimetimezone.md)|The start date, time, and time zone of the event. By default, the start time is in UTC.|
|subject|String|The text of the event's subject line.|
|transactionId|String|A custom identifier specified by a client app for the server to avoid redundant [POST](../api/calendar-post-events.md) operations in case of client retries to create the same event. This is useful when low network connectivity causes the client to time out before receiving a response from the server for the client's prior create-event request. After you set **transactionId** when creating an event, you cannot change **transactionId** in a subsequent update. This property is only returned in a response payload if an app has set it. Optional.|
|type|String|The event type. Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`. Read-only|
|uid|String|A unique identifier for calendar events. For recurring events, the value is the same for the series master and all of its occurrences including exceptions. This property will replace the current iCalUid property defined in the [event resource](/graph/api/resources/event?view=graph-rest-1.0&preserve-view=true), which is different for each instance in a series.|
|webLink|String|The URL to open the event in Outlook on the web.<br/><br/>Outlook on the web opens the event in the browser if you are signed in to your mailbox. Otherwise, Outlook on the web prompts you to sign in.<br/><br/>This URL cannot be accessed from within an iFrame.|

> [!NOTE]
> The **webLink** property specifies a URL that opens the event in only earlier versions of Outlook on the web. The following is its URL format, with _{event-id}_ being the _**URL-encoded**_ value of the **id** property:
>
> * For work or school accounts:
> `https://outlook.office365.com/owa/?itemid={event-id}&exvsurl=1&path=/calendar/item`
>
> * For Microsoft accounts:
> `https://outlook.live.com/owa/?itemid={event-id}&exvsurl=1&path=/calendar/item`
>
> To open the event in a current version of Outlook on the web, convert the URL to one of the following formats, and use that URL to open the event: 
>
> * For work or school accounts:
> `https://outlook.office365.com/calendar/item/{event-id}`
>
> * For Microsoft accounts:
>  `https://outlook.live.com/calendar/item/{event-id}`


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The collection of [FileAttachment](fileattachment.md), [ItemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the event. Navigation property. Read-only. Nullable.|
|calendar|[Calendar](calendar.md)|The calendar that contains the event. Navigation property. Read-only.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the event. Nullable.|
|instances|[Event](event.md) collection|The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.|
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
<!--
{
  "type": "#page.annotation",
  "description": "event resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->