---
title: "vendor resource type"
description: "Represents an vendor object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# vendor resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an vendor object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get vendor](../api/dynamics-vendor-get.md) | [vendor](dynamics-vendor.md) | Read properties and relationships of vendor object. |
| [Create picture](../api/dynamics-vendor-post-picture.md) | [picture](dynamics-picture.md) | Create a new picture by posting to the picture collection. |
| [List picture](../api/dynamics-vendor-list-picture.md) | [picture](dynamics-picture.md) collection | Get a picture object collection. |
| [Update](../api/dynamics-vendor-update.md) | [vendor](dynamics-vendor.md) | Update vendor object. |
| [Delete](../api/dynamics-vendor-delete.md) | None | Delete vendor object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the vendor. Non-editable.|
|number|string|The vendor number.|
|displayName|string|The vendor's display name.|
|address|[microsoft.graph.postalAddress](../resources/dynamics-complextypes.md)|The vendor's address.|
|phoneNumber|string|The vendor's telephone number.|
|email|string|The vendor's email address.|
|website|string|The vendor's website address.|
|taxRegistrationNumber|string|The vendor's tax registration number.|
|currencyId|GUID|The default currency code ID for the vendor.|
|currencyCode|string|The default currency code for the vendor.|
|irs1099Code|string|Specifies a 1099 code for the vendor. US only.|
|paymentTermsId|GUID|The default payment terms ID for the vendor.|
|paymentMethodId|GUID|The default payment method ID for the vendor.|
|taxLiable|boolean|Specifies if the vendor is liable for tax.|
|blocked|string|Specifies which transactions with the vendor that cannot be posted. Accepted values are blank, Payment or All|
|balance|decimal|The vendor's balance. Read-Only.|
|lastModifiedDateTime|datetime|The last datetime the vendor was modified. Read-Only.|  

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Read-only. Nullable.|
|paymentMethod|[paymentMethod](dynamics-paymentmethod.md)| Read-only. Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Read-only. Nullable.|
|picture|[picture](dynamics-picture.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.vendor",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.postalAddressType"},
  "balance": 1024,
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
  "taxLiable": true,
  "taxRegistrationNumber": "String",
  "website": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "vendor resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->