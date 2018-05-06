# bookingCustomer resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents a customer of a [bookingBsiness](bookingbusiness.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List customers](../api/bookingbusiness_list_customers.md) | [bookingCustomer](bookingcustomer.md) collection | Get a list of **bookingCustomer** objects. |
|[Create bookingCustomer](../api/bookingbusiness_post_customers.md) | [bookingCustomer](bookingcustomer.md) | Create a new **bookingCustomer** object. |
|[Get bookingCustomer](../api/bookingcustomer_get.md) | [bookingCustomer](bookingcustomer.md) |Read the properties and relationships of a **bookingCustomer** object.|
|[Update](../api/bookingcustomer_update.md) | [bookingCustomer](bookingcustomer.md)	|Update a **bookingCustomer** object. |
|[Delete](../api/bookingcustomer_delete.md) | None |Delete a **bookingCustomer** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The name of the customer.|
|emailAddress|String|The SMTP address of the customer.|
|id|String| The ID of the customer. Read-only.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingCustomer"
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
  "description": "bookingCustomer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->