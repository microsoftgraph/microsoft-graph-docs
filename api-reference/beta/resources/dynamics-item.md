---
title: items resource type 
description: An item object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# items resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in Dynamics 365 Business Central.

## Methods

| Method                                      |Return Type|Description |
|:--------------------------------------------|:----------|:-----------|
|[Get items](../api/dynamics-item-get.md)      |items     |Gets an item object.   |
|[Post items](../api/dynamics-create-item.md)  |items     |Creates an item object.|
|[Patch item](../api/dynamics-item-update.md)  |items     |Updates an item object.|
|[Delete items](../api/dynamics-item-delete.md)|none      |Deletes an item object.|

## Properties
| Property	         | Type	|Description                                          |
|:-------------------|:-------|:----------------------------------------------------|
|id                  |GUID    |The unique ID of the item. Non-editable.             |
|number              |string  |The item number.                                     |
|displayName         |string  |Specifies a description of the item.                 |
|type                |numeric |The inventory type for the item. 1 = inventory item, 2 = service item. This is a required property.|
|blocked             |boolean |Specifies that transactions with the item cannot be posted, for example, because the item is in quarantine. Set to **true**, if item is blocked.|
|baseUnitOfMeasureId |GUID    |Specifies the ID of the unit of measure.             |
|baseUnitOfMeasure   |[NAV.UnitOfMeasure](../resources/dynamics-complextypes.md)|Specifies the unit in which the item is held in inventory.|
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
A Tax Group(taxGroupCode) must exist in the Tax Group table.

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "displayName": "string",
      "type": "string",
      "blocked": "boolean",
      "baseUnitOfMeasureId": "GUID",
      "baseUnitOfMeasure": "NAV.UnitOfMeasure",
      "gtin": "numeric",
      "itemCategoryId": "GUID",
      "inventory": "decimal",
      "unitPrice": "decimal",
      "priceIncludesTax": "boolean",
      "unitCost": "decimal",
      "taxGroupId": "GUID",
      "taxGroupCode": "string",
      "lastModifiedDateTime": "datetime"
}

```




