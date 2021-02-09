---
title: itemCategories resource type 
description: An item category in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# itemCategories resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a category for a number of items in Dynamics 365 Business Central.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get itemCategories](../api/dynamics-itemcategories-get.md)      |itemCategories|Get an item category.   |
|[Post itemCategories](../api/dynamics-create-itemcategories.md)  |itemCategories|Create an item category.|
|[Patch itemCategories](../api/dynamics-itemcategories-update.md) |itemCategories|Update an item category.|
|[Delete itemCategories](../api/dynamics-itemcategories-delete.md)|none          |Delete an item category.|

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



