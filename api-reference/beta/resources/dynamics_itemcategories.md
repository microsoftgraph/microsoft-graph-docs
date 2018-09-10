---
title: itemCategories resource type | Microsoft Docs
description: An item category in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-businesscentral
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 03/19/2018
ms.author: solsen
---

# itemCategories resource type
Represents a category for a number of items in Dynamics 365 Business Central.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[GET itemCategories](../api/dynamics_itemcategories_get.md)      |itemCategories|Get an item category.   |
|[POST itemCategories](../api/dynamics_create_itemcategories.md)  |itemCategories|Create an item category.|
|[PATCH itemCategories](../api/dynamics_itemcategories_update.md) |itemCategories|Update an item category.|
|[DELETE itemCategories](../api/dynamics_itemcategories_delete.md)|none          |Delete an item category.|

## Properties
| Property	         | Type	  |Description                                     |
|:-------------------|:-------|:-----------------------------------------------|
|id                  |GUID    |The unique ID of the itemCategory. Non-editable.|
|code                |string  |The itemCategory code.                          |
|displayName         |string  |The itemCategories display name.                |
|lastModifiedDateTime|datetime|The last datetime the itemCategory was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the itemCategories.

```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "lastModifiedDateTime": "datetime"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Item Categories](../api/dynamics_itemcategories_get.md)  
[Create Item Categories](../api/dynamics_create_itemcategories.md)  
[Update Item Categories](../api/dynamics_itemcategories_update.md)  
[Delete Item Categories](../api/dynamics_itemcategories_delete.md)  