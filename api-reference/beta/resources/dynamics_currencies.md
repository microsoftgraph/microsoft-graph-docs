---
title: currencies resource type | Microsoft Docs
description: A currency object in Dynamics 365 Business Central 
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

# currencies resource type
Represents a currency used in Dynamics 365 Business Central.

## Methods
| Method                                                  |Return Type|Description       |
|:--------------------------------------------------------|:----------|:-----------------|
|[GET currencies](../api/dynamics_currencies_get.md)      |currencies |Get a Currency.   |
|[POST currencies](../api/dynamics_create_currencies.md)  |currencies |Create a Currency.|
|[PATCH currencies](../api/dynamics_currencies_update.md) |currencies |Update a Currency.|
|[DELETE currencies](../api/dynamics_currencies_delete.md)|none       |Delete a Currency.|

## Properties
| Property	            | Type	 |Description                                                   |
|:----------------------|:-------|:-------------------------------------------------------------|
|id                     |GUID    |The unique ID of the currency. Non-editable.                  |
|code                   |string  |Specifies the currency code.                                  |
|displayName            |string  |Specifies the currency display name.                          |
|symbol                 |string  |Specifies the symbol for this currency that appears on checks.|
|amountDecimalPlaces    |string  |Specifies the number of decimal places the system will display on amounts for this currency.|
|amountRoundingPrecision|decimal |Specifies the size of the interval to be used when rounding amounts for this currency.|
|lastModifiedDateTime   |datetime|The last datetime the currency was modified. Read-Only.       |  


## Relationships
None

## JSON representation

Here is a JSON representation of the currencies.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "symbol": "string",
  "amountDecimalPlaces": "string",
  "amountRoundingPrecision": "decimal",
  "lastModifiedDateTime": "datetime"
}

```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Currencies](../api/dynamics_currencies_get.md)  
[Post Currencies](../api/dynamics_create_currencies.md)  
[Patch Currencies](../api/dynamics_currencies_update.md)  
[Delete Currencies](../api/dynamics_currencies_delete.md)  