---
title: itemCategories resource type 
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
|[Get itemCategories](../api/dynamics_itemcategories_get.md)      |itemCategories|Get an item category.   |
|[Post itemCategories](../api/dynamics_create_itemcategories.md)  |itemCategories|Create an item category.|
|[Patch itemCategories](../api/dynamics_itemcategories_update.md) |itemCategories|Update an item category.|
|[Delete itemCategories](../api/dynamics_itemcategories_delete.md)|none          |Delete an item category.|

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

