---
title: "Update bookingappointment"
description: "Update the properties of a bookingAppointment object in the specified bookingbusiness."
localization_priority: Normal
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: apiPageType
---

# Update bookingappointment

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [bookingAppointment](../resources/bookingappointment.md) object in the specified [bookingbusiness](../resources/bookingbusiness.md).
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /bookingBusinesses/{id}/appointments/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String|The SMTP address of the [bookingCustomer](../resources/bookingcustomer.md) who is booking the appointment.|
|customerId|String|The ID of the [bookingCustomer](../resources/bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the **customerId** immutable.|
|customerLocation|[location](../resources/location.md)|Represents location information for the [bookingCustomer](../resources/bookingcustomer.md) who is booking the appointment.|
|customerName|String|The customer's name.|
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when reading this **bookingAppointment** by its ID. <br> You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by **customerId**.|
|customerPhone|String|The customer's phone number.|
|duration|Duration|The length of the appointment, denoted in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|end|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone that the appointment ends.|
|invoiceAmount|Double|The billed amount on the invoice.|
|invoiceDate|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone of the invoice for this appointment.|
|invoiceId|String|The ID of the invoice.|
|invoiceStatus|string| The status of the invoice. Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String|The URL of the invoice in Microsoft Bookings.|
|optOutOfCustomerEmail|Boolean|True indicates that the [bookingCustomer](../resources/bookingcustomer.md) for this appointment does not wish to receive a confirmation for this appointment.|
|postBuffer|Duration|The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|preBuffer|Duration|The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|price|Double|The regular price for an appointment for the specified [bookingService](../resources/bookingservice.md).|
|priceType|string| A setting to provide flexibility for the pricing structure of services. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|reminders|[bookingReminder](../resources/bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String|An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.|
|serviceId|String|The ID of the [bookingService](../resources/bookingservice.md) associated with this appointment.|
|serviceLocation|[location](../resources/location.md)|The location where the service is delivered.|
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the **serviceId** property.|
|serviceNotes|String|Notes from a [bookingStaffMember](../resources/bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|staffMemberIds|String collection|The ID of each [bookingStaffMember](../resources/bookingstaffmember.md) who is scheduled in this appointment.|
|start|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone that the appointment begins.|


## Response
If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.
## Example
##### Request
The following example changes the date of service by a day, and updated the invoice date as well.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_bookingappointment"
}-->
```http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/appointments/AAMkADKnAAA=
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.bookingAppointment",
    "end":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "invoiceDate":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "start":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:00:00.0000000+00:00",
        "timeZone":"UTC"
    }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-bookingappointment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-bookingappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-bookingappointment-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-bookingappointment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update bookingappointment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


