---
title: cashFlowStatement resource type | Microsoft Docs
description: A cash flow statement object in Dynamics 365 Business Central.
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

# cashFlowStatement resource type
Represents an cashFlowStatement object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[GET cashFlowStatement](../api/dynamics_cashflowstatement_get.md)|cashFlowStatement|Get a cashFlowStatement object.|

## Properties
| Property	   | Type	|Description                              |
|:-------------|:-------|:----------------------------------------|
|lineNumber    |numeric |The cashFlowStatement item line number.  |
|display       |string  |The cashFlowStatement item display name. |
|netChange     |numeric |The cashFlowStatement item Net Change.   |
|lineType      |string  |The cashFlowStatement item line type can be: header, detail, total, or spacer.|
|indentation   |numeric |The cashFlowStatement item indentation used in report layout.|
|dateFilter    |date    |The date filter used to calculate the cashFlowStatement items.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
    "lineNumber": "int",
    "display": "string",
    "netChange": "decimal",
    "lineType": "string",
    "indentation": "int",
    "dateFilter": "date"
}

```
## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Cash Flow Statement](../api/dynamics_cashflowstatement_get.md)  
[Balance Sheet](dynamics_balancesheet.md)  
