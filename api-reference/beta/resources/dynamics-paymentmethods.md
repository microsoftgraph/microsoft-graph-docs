---
title: paymentMethods resource type 
description: A payment method object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# paymentMethods resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a method of payment in Dynamics 365 Business Central, such as PayPal, credit card, and bank account.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get paymentMethods](../api/dynamics-paymentmethods-get.md)      |paymentMethods|Gets a payment method object.   |
|[Post paymentMethods](../api/dynamics-create-paymentmethods.md)  |paymentMethods|Creates a payment method object.|
|[Patch paymentMethods](../api/dynamics-paymentmethods-update.md) |paymentMethods|Updates a payment method object.|
|[Delete paymentMethods](../api/dynamics-paymentmethods-delete.md)|none          |Deletes a payment method object.|

## Properties
| Property	         | Type	  |Description                                                  |
|:-------------------|:-------|:------------------------------------------------------------|
|id                  |GUID    |The unique ID of the paymentMethods. Non-editable.           |
|code                |string  |Specifies the payment method code.                           |
|displayName         |string  |Specifies the payment method display name.                   |
|lastModifiedDateTime|datetime|The last datetime the payment method was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the paymentMethods.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "lastModifiedDateTime": "datetime"
}

```


