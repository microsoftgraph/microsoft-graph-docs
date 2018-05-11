# Update bookingservice

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Update the properties of a [bookingService](../resources/bookingservice.md) object in the specified [bookingbusiness](../resources/bookingbusiness.md).

The following are some examples you can customize for a service:
- Price
- Typical length of an appointment
- Reminders
- Any time buffer to set up before or finish up after the service
- [Scheduling policy](../resources/bookingschedulingpolicy.md) parameters such as minimum notice to book or cancel, and whether customers can select specific staff members for an appointment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /bookingBusinesses/{id}/services/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|defaultDuration|Duration|The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S. |
|defaultLocation|[location](../resources/location.md)|The default physical location for the service.|
|defaultPrice|Double|The default monetary price for the service.|
|defaultPriceType|string|The default way the service is charged. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|defaultReminders|[bookingReminder](../resources/bookingreminder.md) collection|The default set of reminders for an appointment of this service. The value of this property is available only when reading this **bookingService** by its ID.|
|description|String|A text description for the service.|
|displayName|String|A service name.|
|emailAddress|String|An email address|
|id|String| Read-only.|
|isHiddenFromCustomers|Boolean|True means this service is not available to customers for booking.|
|notes|String|Additional information about this service.|
|postBuffer|Duration|The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.|
|preBuffer|Duration|The time to buffer before an appointment for this service can start.|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|The set of policies that determine how appointments for this type of service should be created and managed.|
|staffMemberIds|String collection|Represents those [staff members](../resources/bookingstaffmember.md) who provide this service. |

## Response
If successful, this method returns a `204 No content` response code. It does not return anything in the response body.
## Example
##### Request
The following example updates the duration of the specified service.
<!-- {
  "blockType": "request",
  "name": "update_bookingservice"
}-->
```http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/services/57da6774-a087-4d69-b0e6-6fb82c339976
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.bookingService",
    "defaultDuration":"PT30M"
}
```
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
<!-- {
  "type": "#page.annotation",
  "description": "Update bookingservice",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->