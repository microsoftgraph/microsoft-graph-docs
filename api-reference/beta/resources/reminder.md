# reminder resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A reminder for an [event](event.md) in a user [calendar](calendar.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|String|Identifies the version of the reminder. Every time the reminder is changed, **changeKey** changes as well. This allows Exchange to apply changes to the correct version of the object.|
|eventEndTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time and time zone that the event ends.|
|eventId|String|The unique ID of the event. Read only.|
|eventLocation|[Location](location.md)|The location of the event.|
|eventStartTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event starts.|
|eventSubject|String|The text of the event's subject line.|
|eventWebLink|String|The URL to open the event in Outlook on the web.<br/><br/>The event will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.<br/><br/>This URL can be accessed from within an iFrame.|
|reminderFireTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the reminder is set to occur.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.reminder"
}-->

```json
{
  "changeKey": "string",
  "eventEndTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventId": "string",
  "eventLocation": {"@odata.type": "microsoft.graph.location"},
  "eventStartTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventSubject": "string",
  "eventWebLink": "string",
  "reminderFireTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reminder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->