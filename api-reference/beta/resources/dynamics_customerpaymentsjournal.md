---
title: customerPaymentJournals resource type | Microsoft Docs
description: A customer payments journal in Dynamics 365 Business Central.
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

# customerPaymentsJournals resource type
Represents a customer payment journal in Dynamics 365 Business Central.

## Methods

| Method               | Return Type             |Description                      |
|:---------------------|:------------------------|:--------------------------------|
|[GET customerPaymentJournals](../api/dynamics_customerpaymentsjournal_get.md)      |customerPaymentJournals|Gets a customer payment journal.   |
|[POST customerPaymentJournals](../api/dynamics_create_customerpaymentsjournal.md)  |customerPaymentJournals|Creates a customer payment journal.|
|[PATCH customerPaymentJournals](../api/dynamics_customerpaymentsjournal_update.md) |customerPaymentJournals|Updates a customer payment journal.|
|[DELETE customerPaymentJournals](../api/dynamics_customerpaymentsjournal_delete.md)|none                     |Deletes a customer payment journal.|

## Properties
| Property	         | Type	                 |Description                                                             |
|:-------------------|:----------------------|:-----------------------------------------------------------------------|
|id                  |GUID                   |The unique ID of the customer payment journal. Non-editable.           |
|code                |string, maximum size 10| The code of the customer payment journal.                             |
|displayName         |string, maximum size 50| The display name of the customer payment journal.                     |
|lastModifiedDateTime|datetime               |The last datetime the customer payment journal was modified. Read-Only.|

## Relationships

## JSON representation

Here is a JSON representation of the resource.


```json
{
  "id": "GUID",
  "code": "String",
  "displayName": "String",
  "lastModifiedDateTime": "datetime"
}
```

## See also
[Microsoft Graph Reference](../api/dynamics_graph_reference.md)  
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Customer Payment Journal](../api/dynamics_customerpaymentsjournal_get.md)  
[Post Customer Payment Journal](../api/dynamics_create_customerpaymentsjournal.md)  
[Patch Customer Payment Journal](../api/dynamics_customerpaymentsjournal_update.md)  
[Delete Customer Payment Journal](../api/dynamics_customerpaymentsjournal_delete.md)  
