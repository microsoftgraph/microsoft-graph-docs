---
title: paymentTerms resource type 
description: A payment terms object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# paymentTerms resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a payment term in Dynamics 365 Business Central.

## Methods

| Method                                                      | Return Type|Description            |
|:------------------------------------------------------------|:-----------|:----------------------|
|[Get paymentTerms](../api/dynamics-paymentterms-get.md)      |paymentTerms|Get a payment terms object.   |
|[Post paymentTerms](../api/dynamics-create-paymentterms.md)  |paymentTerms|Create a payment terms object.|
|[Patch paymentTerms](../api/dynamics-paymentterms-update.md) |paymentTerms|Update a payment terms object.|
|[Delete paymentTerms](../api/dynamics-paymentterms-delete.md)|none        |Delete a payment terms object.|

## Properties
| Property	                   | Type	  |Description                                                |
|:-----------------------------|:-------|:----------------------------------------------------------|
|id                            |GUID    |The unique ID of the paymentTerms. Non-editable.           |
|code                          |string  |Specifies the payment term code.                           |
|displayName                   |string  |Specifies the payment term display name.                   |
|dueDateCalculation            |string  |Specifies the formula that is used to calculate the date that a payment must be made.|
|discountDateCalculation       |string  |Specifies the formula that is used to calculate the date that a payment must be made in order to obtain a discount.|
|discountPercent               |decimal |Specifies the discount percentage that is applied for early payment of an invoice amount.|
|calculateDiscountOnCreditMemos|boolean |Specifies if the discount should be applied to credit memos. **True** indicates a discount will be given, **false** indicates a discount will not be given.|
|lastModifiedDateTime          |datetime|The last datetime the paymentTerms was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the paymentTerms.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "dueDateCalculation": "string",
  "discountDateCalculation": "string",
  "discountPercent": "decimal",
  "calculateDiscountOnCreditMemos": "boolean",
  "lastModifiedDateTime": "datetime"
}

```


