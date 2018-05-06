# bookingSchedulingPolicy resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents the set of policies that determine how appointments should be created in a Microsoft Bookings calendar.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowStaffSelection|Boolean|True if to allow customers to choose a specific person for the booking.|
|maximumAdvance|Duration|Maximum number of days in advance that a booking can be made. It follows the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|minimumLeadTime|Duration|The minimum amount of time before which bookings and cancellations must be made. It follows the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|sendConfirmationsToOwner|Boolean| True to notify the business via email when a booking is created or changed. Use the email address specified in the **email** property of the **bookingBusiness** entity for the business. |
|timeSlotInterval|Duration|Duration of each time slot, denoted in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
}-->

```json
{
  "allowStaffSelection": true,
  "maximumAdvance": "String (timestamp)",
  "minimumLeadTime": "String (timestamp)",
  "sendConfirmationsToOwner": true,
  "timeSlotInterval": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingSchedulingPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->