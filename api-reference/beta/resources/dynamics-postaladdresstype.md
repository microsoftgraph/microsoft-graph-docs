---
title: "postalAddressType resource type"
description: "Represents an postalAddressType object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# postalAddressType resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an postalAddressType object in Dynamics 365 Business Central.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| Property     | Type       |Description             |
|:-------------|:---------|:-----------------------|
|street        |string    |Postal address street.  |
|city          |string    |Postal address city.    |
|state         |string    |Postal address state.   |
|countryLetterCode|string |Postal address country letter code (two character word)|
|postalCode    |string    |Postal address post code|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.postalAddressType",
  "baseType": null
}-->

```json
{
  "city": "String",
  "countryLetterCode": "String",
  "postalCode": "String",
  "state": "String",
  "street": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "postalAddressType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->