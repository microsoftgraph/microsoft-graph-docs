---
title: "item resource type"
description: "Represents an item object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# item resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get item](../api/dynamics-item-get.md) | [item](dynamics-item.md) | Read properties and relationships of item object. |
| [Create picture](../api/dynamics-item-post-picture.md) | [picture](dynamics-picture.md) | Create a new picture by posting to the picture collection. |
| [List picture](../api/dynamics-item-list-picture.md) | [picture](dynamics-picture.md) collection | Get a picture object collection. |
| [Update](../api/dynamics-item-update.md) | [item](dynamics-item.md) | Update item object. |
| [Delete](../api/dynamics-item-delete.md) | None | Delete item object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|:-------------------|:-------|:----------------------------------------------------|
|id                  |string    |The unique ID of the item. Non-editable.             |
|number              |string  |The item number.                                     |
|displayName         |string  |Specifies a description of the item.                 |
|type                |numeric |The inventory type for the item. 1 = inventory item, 2 = service item. This is a required property.|
|blocked             |boolean |Specifies that transactions with the item cannot be posted, for example, because the item is in quarantine. Set to **true**, if item is blocked.|
|baseUnitOfMeasureId |GUID    |Specifies the ID of the unit of measure.             |
|baseUnitOfMeasure   |[microsoft.graph.unitOfMeasure](../resources/dynamics-complextypes.md)|Specifies the unit in which the item is held in inventory.|
|gtin                |numeric |This is the Global Trade Item Number.                |
|itemCategoryId      |GUID |Specifies the category that the item belongs to. Item categories also contain any assigned item attributes.|
|inventory           |decimal |Specifies how many units, such as pieces, boxes, or cans, of the item are in inventory. Read-Only.|
|unitPrice           |decimal |Specifies the price for one unit of the item in the specified currency.|
|priceIncludesTax    |boolean |Specifies that the unitPrice includes tax. Set to **true**, if unitPrice includes tax.|
|unitCost            |decimal |Specifies the cost per unit of the item.             |
|taxGroupId          |GUID    |Specifies the ID of the Tax Group for the item.      |
|taxGroupCode        |numeric |A Tax Group represents a group of inventory items or resources that are subject to identical tax terms.|
|lastModifiedDateTime|datetime|The last datetime the item was modified. Read-Only.  |  

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|itemCategory|[itemCategory](dynamics-itemcategory.md)| Nullable.|
|picture|[picture](dynamics-picture.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.item",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "baseUnitOfMeasureId": "Guid",
  "blocked": true,
  "displayName": "String",
  "gtin": "String",
  "id": "String (identifier)",
  "inventory": 1024,
  "itemCategoryCode": "String",
  "itemCategoryId": "Guid",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "priceIncludesTax": true,
  "taxGroupCode": "String",
  "taxGroupId": "Guid",
  "type": "String",
  "unitCost": 1024,
  "unitPrice": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->