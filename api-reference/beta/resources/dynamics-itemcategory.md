---
title: "itemCategory resource type"
description: "Represents an itemCategory object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# itemCategory resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an itemCategory object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get itemCategory](../api/dynamics-itemcategory-get.md) | [itemCategory](dynamics-itemcategory.md) | Read properties and relationships of itemCategory object. |
| [Update](../api/dynamics-itemcategory-update.md) | [itemCategory](dynamics-itemcategory.md) | Update itemCategory object. |
| [Delete](../api/dynamics-itemcategory-delete.md) | None | Delete itemCategory object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string    |The unique ID of the itemCategory. Non-editable.|
|code                |string  |The itemCategory code.                          |
|displayName         |string  |The itemCategories display name.                |
|lastModifiedDateTime|datetime|The last datetime the itemCategory was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemCategory",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
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
  "description": "itemCategory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->