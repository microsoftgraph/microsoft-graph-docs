# bookingPerson resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
This is a base type for a person in a Microsoft Bookings business, which can be a [bookingCustomer](bookingcustomer.md) or [bookingStaffMember](bookingstaffmember.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|A name for the derived entity, which interfaces with customers.|
|emailAddress|String|The email address of the person.|
|id|String| The ID for the derived entity. Read-only.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingPerson"
}-->

```json
{
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingPerson resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->