# bookingReminder resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents when and to whom to send an email reminder.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message|String|The message in the reminder.|
|offset|Duration|The amount of time before the start of an appointment that the reminder should be sent. It's denoted in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|recipients|String| The persons who shouold receive the reminder. Possible values are: `allAttendees`, `staff`, `customer`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingReminder"
}-->

```json
{
  "message": "String",
  "offset": "String (timestamp)",
  "recipients": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingReminder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->