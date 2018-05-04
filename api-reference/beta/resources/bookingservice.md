# bookingService resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents information about a particular service provided by a [bookingBusiness](bookingbusiness.md), such as the service name, price, and the staff that usually provides such service.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List services](../api/bookingbusiness_list_services.md) | [bookingService](bookingservice.md) collection | Get a list of **bookingService** objects in the specified [bookingbusiness](../resources/bookingbusiness.md).|
|[Create bookingService](../api/bookingbusiness_post_services.md) | [bookingService](bookingservice.md) | Create a **bookingService** for the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Get bookingService](../api/bookingservice_get.md) | [bookingService](bookingservice.md) |Get the properties and relationships of a **bookingService** object in the specified [bookingbusiness](../resources/bookingbusiness.md).|
|[Update](../api/bookingservice_update.md) | [bookingService](bookingservice.md)	|Update a **bookingService** object in the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Delete](../api/bookingservice_delete.md) | None |Delete a **bookingService** object in the specified [bookingbusiness](../resources/bookingbusiness.md). |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|defaultDuration|Duration|The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S. |
|defaultLocation|[location](location.md)|The default physical location for the service.|
|defaultPrice|Double|The default monetary price for the service.|
|defaultPriceType|string|The default way the service is charged. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|defaultReminders|[bookingReminder](bookingreminder.md) collection|The default set of reminders for an appointment of this service. The value of this property is available only when reading this **bookingService** by its ID.|
|description|String|A text description for the service.|
|displayName|String|A service name.|
|emailAddress|String|An email address|
|id|String|The ID of that service, in a GUID format. Read-only.|
|isHiddenFromCustomers|Boolean|True means this service is not available to customers for booking.|
|notes|String|Additional information about this service.|
|postBuffer|Duration|The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.|
|preBuffer|Duration|The time to buffer before an appointment for this service can start.|
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)|The set of policies that determine how appointments for this type of service should be created and managed.|
|staffMemberIds|String collection|Represents those [staff members](bookingstaffmember.md) who provide this service. |

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingService"
}-->

```json
{
  "defaultDuration": "String (timestamp)",
  "defaultLocation": {"@odata.type": "microsoft.graph.location"},
  "defaultPrice": 1024,
  "defaultPriceType": "string",
  "defaultReminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "description": "String",
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "isHiddenFromCustomers": true,
  "notes": "String",
  "postBuffer": "String (timestamp)",
  "preBuffer": "String (timestamp)",
  "schedulingPolicy": {"@odata.type": "microsoft.graph.bookingSchedulingPolicy"},
  "staffMemberIds": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->