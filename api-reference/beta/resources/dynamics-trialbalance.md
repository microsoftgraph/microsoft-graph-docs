---
title: trialBalance resource type 
description: A trial balance object in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# trialBalance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a trial balance in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get trialBalance](../api/dynamics-trialbalance-get.md)|trialBalance|Gets a trial balance object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|number|string|The G/L Account number for the trialBalance item|
|accountId|GUID|The unique identifier for the G/L account of the record.|
|accountType|string|The account type of the G/L account of the record.|
|display|string|The G/L Account name for the trialBalance item.|
|totalDebit|string|Represents total debit amount in G/L Account.|
|totalCredit|string|Represents total credit amount in G/L Account.|
|balanceAtDateDebit|string|Represents positive Balance at Date amount in G/L Account.|
|balanceAtDateCredit|string|Represents negative Balance at Date amount in G/L Account.|
|dateFilter|date|The date filter used to calculate the trialBalance items.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
    "number": "string",
    "accountId": "GUID",
    "accountType": "string",
    "display": "string",
    "totalDebit": "string",
    "totalCredit": "string",
    "balanceAtDateDebit": "string",
    "balanceAtDateCredit": "string",
    "dateFilter": "date"
}

```



