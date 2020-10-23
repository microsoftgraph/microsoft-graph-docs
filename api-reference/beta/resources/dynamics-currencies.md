---
title: currencies resource type 
description: A currency object in Dynamics 365 Business Central 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# currencies resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a currency used in Dynamics 365 Business Central.

## Methods
| Method                                                  |Return Type|Description       |
|:--------------------------------------------------------|:----------|:-----------------|
|[Get currencies](../api/dynamics-currencies-get.md)      |currencies |Get a Currency.   |
|[Post currencies](../api/dynamics-create-currencies.md)  |currencies |Create a Currency.|
|[Patch currencies](../api/dynamics-currencies-update.md) |currencies |Update a Currency.|
|[Delete currencies](../api/dynamics-currencies-delete.md)|none       |Delete a Currency.|

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



