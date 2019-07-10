---
title: "customer resource type"
description: "Represents an customer object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# customer resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an customer object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get customer](../api/dynamics-customer-get.md) | [customer](dynamics-customer.md) | Read properties and relationships of customer object. |
| [Create picture](../api/dynamics-customer-post-picture.md) | [picture](dynamics-picture.md) | Create a new picture by posting to the picture collection. |
| [List picture](../api/dynamics-customer-list-picture.md) | [picture](dynamics-picture.md) collection | Get a picture object collection. |
| [Update](../api/dynamics-customer-update.md) | [customer](dynamics-customer.md) | Update customer object. |
| [Delete](../api/dynamics-customer-delete.md) | None | Delete customer object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id           |string      |The unique ID of the item. Non-editable.|
|number       |string    |The customer number.|
|displayName  |string    |Specifies the customer's name. This name will appear on all sales documents for the customer.|
|type         |string    |Specifies the type of customer, can be "Company" or "Person".|
|address      |[microsoft.graph.postalAddress](../resources/dynamics-complextypes.md)|Specifies the customer's address. This address will appear on all sales documents for the customer.|
|phoneNumber  |string    |Specifies the customer's telephone number.|
|email        |string    |Specifies the customer's email address.|
|website      |string    |Specifies the customer's home page address.|
|taxLiable    |boolean   |Specifies if the customer or vendor is liable for sales tax. Set to **true** if the customer is tax liable.|
|taxAreaId    |GUID      |Specifies which tax area the customer belongs to.|
|taxAreaDisplayName|string|Specified the display name of the tax area the customer belongs to.|
|taxRegistrationNumber|string, maximum size 20|Specified the tax registration number of the customer.|
|currencyId   |GUID      |Specifies which currency the customer uses.|
|currencyCode |numeric   |The default currency code for the customer.|
|paymentTermsId|GUID     |Specifies which payment term the customer uses.|
|paymentMethodId|GUID    |Specifies which payment method the customer uses.|
|shipmentMethodId|GUID   |Specifies which shipment method the customer uses.|
|blocked      |string    |Specifies that transactions with the customer cannot be posted. Set to **All**, if the customer is blocked, set to blank if not blocked.|
|lastModifiedDateTime|datetime|The last datetime the customer was modified. Read-Only.|  


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|paymentMethod|[paymentMethod](dynamics-paymentmethod.md)| Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Nullable.|
|picture|[picture](dynamics-picture.md) collection| Nullable.|
|shipmentMethod|[shipmentMethod](dynamics-shipmentmethod.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.customer",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.postalAddressType"},
  "blocked": "String",
  "currencyCode": "String",
  "currencyId": "Guid",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "paymentMethodId": "Guid",
  "paymentTermsId": "Guid",
  "phoneNumber": "String",
  "shipmentMethodId": "Guid",
  "taxAreaDisplayName": "String",
  "taxAreaId": "Guid",
  "taxLiable": true,
  "taxRegistrationNumber": "String",
  "type": "String",
  "website": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "customer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->