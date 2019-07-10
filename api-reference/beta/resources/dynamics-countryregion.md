---
title: "countryRegion resource type"
description: "Represents an countryRegion object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# countryRegion resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an countryRegion object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get countryRegion](../api/dynamics-countryregion-get.md) | [countryRegion](dynamics-countryregion.md) | Read properties and relationships of countryRegion object. |
| [Update](../api/dynamics-countryregion-update.md) | [countryRegion](dynamics-countryregion.md) | Update countryRegion object. |
| [Delete](../api/dynamics-countryregion-delete.md) | None | Delete countryRegion object. |

## Properties

| Property	     | Type	      |Description                                                  |
|:---------------|:-----------|:------------------------------------------------------------|
|id              |string        |The unique ID of the country/region. Non-editable.           |
|code            |string      |Specifies the code of the country/region.                    |
|displayName     |string      |Specifies the display name of the country/region.            |
|addressFormat   |string      |Specifies the format of the address that is displayed on external-facing documents. You link an address format to a country/region code so that external-facing documents based on cards or documents with that country/region code use the specified address format.|
|lastModifiedDateTime|datetime|The last datetime the country/region was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.countryRegion",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "addressFormat": "String",
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "countryRegion resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->