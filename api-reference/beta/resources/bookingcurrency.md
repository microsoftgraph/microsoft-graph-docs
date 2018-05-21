# bookingCurrency resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents a monetary currency supported by a [bookingBusiness](bookingbusiness.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List bookingCurrencies](../api/bookingcurrency_list.md) | [bookingCurrency](bookingcurrency.md) collection |Get a list of **bookingCurrency** objects available to a Microsoft Bookings business.|
|[Get bookingCurrency](../api/bookingcurrency_get.md) | [bookingCurrency](bookingcurrency.md) |Get the properties of a **bookingCurrency** object.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| A 3-character currency code, based on [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). For example, the currency code for the US dollar is USD, and for the Australian dollar is AUD. Read-only.|
|symbol|String| The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.  |

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingCurrency"
}-->

```json
{
  "id": "String (identifier)",
  "symbol": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingCurrency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->