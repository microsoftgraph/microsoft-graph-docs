# bookingAppointment resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents a customer appointment for a [bookingService](bookingservice.md), performed by a set of staff members, provided by a Microsoft Bookings business.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List appointments](../api/bookingbusiness_list_appointments.md) |  [bookingAppointment](bookingappointment.md) collection | Get a list of **bookingAppointment** objects in the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Create bookingAppointment](../api/bookingbusiness_post_appointments.md) |  [bookingAppointment](bookingappointment.md) | Create a new **bookingAppointment** for the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Get bookingAppointment](../api/bookingappointment_get.md) | [bookingAppointment](bookingappointment.md) |Read the properties and relationships of **bookingAppointment** object.|
|[Update](../api/bookingappointment_update.md) | [bookingAppointment](bookingappointment.md)	|Update a **bookingAppointment** object. |
|[Delete](../api/bookingappointment_delete.md) | None |Delete a **bookingAppointment** object. |
|[Cancel](../api/bookingappointment_cancel.md)|None| Cancel a **bookingAppointment** object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String|The SMTP address of the [bookingCustomer](bookingcustomer.md) who is booking the appointment.|
|customerId|String|The ID of the [bookingCustomer](bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the **customerId** immutable.|
|customerLocation|[location](location.md)|Represents location information for the [bookingCustomer](bookingcustomer.md) who is booking the appointment.|
|customerName|String|The customer's name.|
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when reading this **bookingAppointment** by its ID. <br> You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by **customerId**.|
|customerPhone|String|The customer's phone number.|
|duration|Duration|The length of the appointment, denoted in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the appointment ends.|
|id|String| The ID of the **bookingAppointment**. Read-only.|
|invoiceAmount|Double|The billed amount on the invoice.|
|invoiceDate|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone of the invoice for this appointment.|
|invoiceId|String|The ID of the invoice.|
|invoiceStatus|string| The status of the invoice. Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String|The URL of the invoice in Microsoft Bookings.|
|optOutOfCustomerEmail|Boolean|True indicates that the [bookingCustomer](bookingcustomer.md) for this appointment does not wish to receive a confirmation for this appointment.|
|postBuffer|Duration|The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|preBuffer|Duration|The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|price|Double|The regular price for an appointment for the specified [bookingService](bookingservice.md).|
|priceType|string| A setting to provide flexibility for the pricing structure of services. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|reminders|[bookingReminder](bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String|An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.|
|serviceId|String|The ID of the [bookingService](bookingservice.md) associated with this appointment.|
|serviceLocation|[location](location.md)|The location where the service is delivered.|
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the **serviceId** property.|
|serviceNotes|String|Notes from a [bookingStaffMember](bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|staffMemberIds|String collection|The ID of each [bookingStaffMember](bookingstaffmember.md) who is scheduled in this appointment.|
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the appointment begins.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingAppointment"
}-->

```json
{
  "customerEmailAddress": "String",
  "customerId": "String",
  "customerLocation": {"@odata.type": "microsoft.graph.location"},
  "customerName": "String",
  "customerNotes": "String",
  "customerPhone": "String",
  "duration": "String (timestamp)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "id": "String (identifier)",
  "invoiceAmount": 1024,
  "invoiceDate": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "invoiceId": "String",
  "invoiceStatus": "string",
  "invoiceUrl": "String",
  "optOutOfCustomerEmail": true,
  "postBuffer": "String (timestamp)",
  "preBuffer": "String (timestamp)",
  "price": 1024,
  "priceType": "string",
  "reminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "selfServiceAppointmentId": "String",
  "serviceId": "String",
  "serviceLocation": {"@odata.type": "microsoft.graph.location"},
  "serviceName": "String",
  "serviceNotes": "String",
  "staffMemberIds": ["String"],
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingAppointment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->