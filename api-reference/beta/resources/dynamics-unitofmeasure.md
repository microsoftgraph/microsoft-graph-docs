---
title: "unitOfMeasure resource type"
description: "Represents an unitOfMeasure object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# unitOfMeasure resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an unitOfMeasure object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get unitOfMeasure](../api/dynamics-unitofmeasure-get.md) | [unitOfMeasure](dynamics-unitofmeasure.md) | Read properties and relationships of unitOfMeasure object. |
| [Update](../api/dynamics-unitofmeasure-update.md) | [unitOfMeasure](dynamics-unitofmeasure.md) | Update unitOfMeasure object. |
| [Delete](../api/dynamics-unitofmeasure-delete.md) | None | Delete unitOfMeasure object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the unitsOfMeasure. Non-editable.|
|code|string|Specifies the code for the unit of measure.|
|displayName|string|Specifies the unit of measure's display name.|
|internationalStandardCode|string|Specifies the unit of measure code expressed according to the UNECE Rec20 standard in connection with electronic sending of sales documents.|
|lastModifiedDateTime|datetime|The last datetime the unit of measure was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unitOfMeasure",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "internationalStandardCode": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unitOfMeasure resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->