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

An event in a [user](user.md) calendar, or the default calendar of a Microsoft 365 [group](group.md).

The maximum number of attendees included in an **event**, and the maximum number of recipients in an [eventMessage](eventmessage.md) sent from an Exchange Online mailbox is 500. For more information, see [sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/event-delta.md) function.

> **Note:** There are a few minor differences in the way you can interact with user calendars, group calendars, and their events:

- You can organize only user calendars in a [calendarGroup](calendargroup.md).
- You can add [attachment](attachment.md) objects to events in only user calendars, but not to events in group calendars.
- Outlook automatically accepts all meeting requests on behalf of groups. You can [accept](../api/event-accept.md), [tentatively accept](../api/event-tentativelyaccept.md), or [decline](../api/event-decline.md)  meeting requests for _user_ calendars only.
- Outlook doesn't support reminders for group events. You can [snooze](../api/event-snoozereminder.md) or [dismiss](../api/event-dismissreminder.md) a [reminder](reminder.md) for _user_ calendars only.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List events](../api/user-list-events.md)|[event](event.md) collection |Retrieve a list of [event](../resources/event.md) objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user-post-events.md) |[event](event.md)| Create a new event by posting to the instances collection.|
|[Get event](../api/event-get.md) | [event](event.md) |Read properties and relationships of event object.|
|[Update](../api/event-update.md) | [event](event.md) |Update event object. |
|[Delete](../api/event-delete.md) | None |Delete event object. |
|[accept](../api/event-accept.md)|None|Accept the specified event in a user calendar.|
|[tentativelyAccept](../api/event-tentativelyaccept.md)|None|Tentatively accept the specified event in a user calendar.|
|[decline](../api/event-decline.md)|None|Decline invitation to the specified event in a user calendar.|
|[delta](../api/event-delta.md)|[event](event.md) collection|Get a set of events that have been added, deleted, or updated in a **calendarView** (a range of events) of the user's primary calendar.|
|[dismissReminder](../api/event-dismissreminder.md)|None|Dismiss the reminder for the specified event in a user calendar.|
|[snoozeReminder](../api/event-snoozereminder.md)|None|Postpone a reminder for the specified event in a user calendar until a new time.|
|[List instances](../api/event-list-instances.md) |[event](event.md) collection| Get the instances (occurrences) of an event for a specified time range. If the event is a `SeriesMaster` type, this returns the occurrences and exceptions of the event in the specified time range.|
|**Attachments**| | |
|[List attachments](../api/event-list-attachments.md) |[attachment](attachment.md) collection| Get all attachments on an event.|
|[Add attachment](../api/event-post-attachments.md) |[attachment](attachment.md)| Add a new attachment to an event by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension object or objects identified by name or fully qualified name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[event](event.md)  |Create one or more single-value extended properties in a new or existing event.   |
|[Get event with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [event](event.md) | Get events that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [event](event.md) | Create one or more multi-value extended properties in a new or existing event.  |
|[Get event with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [event](event.md) | Get an event that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowNewTimeProposals| Boolean | `True` if the meeting organizer allows invitees to propose a new time when responding, `false` otherwise. Optional. Default is `true`. |
|attendees|[attendee](attendee.md) collection|The collection of attendees for the event.|
|body|[itemBody](itembody.md)|The body of the message associated with the event. It can be in HTML or text format.|
|bodyPreview|String|The preview of the message associated with the event. It is in text format.|
|categories|String collection|The categories associated with the event.|
|changeKey|String|Identifies the version of the event object. Every time the event is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event ends. By default, the end time is in UTC.|
|hasAttachments|Boolean|Set to true if the event has attachments.|
|iCalUId|String|A unique identifier for an event across calendars. This ID is different for each occurrence in a recurring series. Read-only.|
|id|String| Read-only.|
|importance|importance|The importance of the event. The possible values are: `low`, `normal`, `high`.|
|isAllDay|Boolean|Set to true if the event lasts all day.|
|isCancelled|Boolean|Set to true if the event has been canceled.|
|isOnlineMeeting|Boolean| `True` if this event has online meeting information, `false` otherwise. Default is false. Optional.|
|isOrganizer|Boolean|Set to true if the calendar owner (specified by the **owner** property of the [calendar](calendar.md)) is the organizer of the event (specified by the **organizer** property of the **event**). This also applies if a delegate organized the event on behalf of the owner.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the event.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|location|[location](location.md)|The location of the event.|
|locations|[location](location.md) collection|The locations where the event is held or attended from. The **location** and **locations** properties always correspond with each other. If you update the **location** property, any prior locations in the **locations** collection would be removed and replaced by the new **location** value. |
|onlineMeeting|[OnlineMeetingInfo](onlinemeetinginfo.md)| Details for an attendee to join the meeting online. Read-only.|
|onlineMeetingProvider|onlineMeetingProviderType| Represents the online meeting service provider. The possible values are `teamsForBusiness`, `skypeForBusiness`, and `skypeForConsumer`. Optional. |
|onlineMeetingUrl|String|A URL for an online meeting. The property is set only when an organizer specifies an event as an online meeting such as a Skype meeting. Read-only.|
|organizer|[recipient](recipient.md)|The organizer of the event.|
|originalEndTimeZone|String|The end time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook.|
|originalStart|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|originalStartTimeZone|String|The start time zone that was set when the event was created. A value of `tzone://Microsoft/Custom` indicates that a legacy custom time zone was set in desktop Outlook. |
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern for the event.|
|reminderMinutesBeforeStart|Int32|The number of minutes before the event start time that the reminder alert occurs.|
|responseRequested|Boolean|Default is true, which represents the organizer would like an invitee to send a response to the event.|
|responseStatus|[responseStatus](responsestatus.md)|Indicates the type of response sent in response to an event message.|
|sensitivity|sensitivity| The possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|String|The ID for the recurring series master item, if this event is part of a recurring series.|
|showAs|freeBusyStatus|The status to show. The possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event starts. By default, the start time is in UTC.|
|subject|String|The text of the event's subject line.|
|transactionId |String |A custom identifier specified by a client app for the server to avoid redundant POST operations in case of client retries to create the same event. This is useful when low network connectivity causes the client to time out before receiving a response from the server for the client's prior create-event request. After you set **transactionId** when creating an event, you cannot change **transactionId** in a subsequent update. This property is only returned in a response payload if an app has set it. Optional.|
|type|eventType|The event type. The possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`. Read-only.|
|webLink|String|The URL to open the event in Outlook on the web.<br/><br/>Outlook on the web opens the event in the browser if you are signed in to your mailbox. Otherwise, Outlook on the web prompts you to sign in.<br/><br/>This URL cannot be accessed from within an iFrame.|

> [!NOTE]
> The **webLink** property specifies a URL that opens the event in only earlier versions of Outlook on the web. The following are the URL formats, with _{event-id}_ being the _**URL-encoded**_ value of the **id** property:
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
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md) and [itemAttachment](itemattachment.md) attachments for the event. Navigation property. Read-only. Nullable.|
|calendar|[calendar](calendar.md)|The calendar that contains the event. Navigation property. Read-only.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the event. Read-only. Nullable.|
|instances|[event](event.md) collection|The instances of the event. Navigation property. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the event. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the event. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [
    "attachments",
    "calendar",
    "extensions",
    "instances",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.outlookItem",
  "@odata.type": "microsoft.graph.event",
  "@odata.annotations": [
    {
      "property": "attachments",
      "capabilities": {
        "changeTracking": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "calendar",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "navigability": "single",
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "extensions",
      "capabilities": {
        "changeTracking": false,
        "searchable": false
      }
    },
    {
      "property": "instances",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "navigability": "single",
        "searchable": false,
        "updatable": false
      }
    }
  ]
}-->

```json
{
  "allowNewTimeProposals": "Boolean",
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
  "isOnlineMeeting": true,
  "isOrganizer": true,
  "isReminderOn": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "locations": [{"@odata.type": "microsoft.graph.location"}],
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
  "transactionId": "string",
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

