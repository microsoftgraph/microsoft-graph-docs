---
apiDocType: resourcePageType
---
---
title: paymentMethods resource type 
description: A payment method object in Dynamics 365 Business Central.
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

# paymentMethods resource type
Represents a method of payment in Dynamics 365 Business Central, such as PayPal, credit card, and bank account.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get paymentMethods](../api/dynamics_paymentmethods_get.md)      |paymentMethods|Gets a payment method object.   |
|[Post paymentMethods](../api/dynamics_create_paymentmethods.md)  |paymentMethods|Creates a payment method object.|
|[Patch paymentMethods](../api/dynamics_paymentmethods_update.md) |paymentMethods|Updates a payment method object.|
|[Delete paymentMethods](../api/dynamics_paymentmethods_delete.md)|none          |Deletes a payment method object.|

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
