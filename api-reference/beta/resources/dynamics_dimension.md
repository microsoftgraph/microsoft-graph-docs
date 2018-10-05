---
title: dimensions resource type 
description: A dimension in Dynamics 365 Business Central.
author: SusanneWindfeldPedersen

ms.service: dynamics365-businesscentral
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 03/19/2018
ms.author: solsen
---

# Dimensions resource type
Represents a dimension in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get dimensions](../api/dynamics_dimension_get.md)|dimension|Gets a dimension.|


## Properties
| Property	         | Type                  |Description               |
|:-------------------|:----------------------|:-------------------------|
|id                  |GUID                   |The unique ID of the item.|
|code                |string, maximum size 20|The dimension code.       |
|displayName         |string                 |Specifies the dimension's name. This name will appear where the dimension is used.|
|lastModifiedDateTime|datetime               |The last datetime the dimension was modified.|  


## JSON representation

Here is a JSON representation of the resource.


```json
{

    "id": "GUID",
    "code": "string",
    "displayName": "string",
    "lastModifiedDateTime": "datetime"
}
```

