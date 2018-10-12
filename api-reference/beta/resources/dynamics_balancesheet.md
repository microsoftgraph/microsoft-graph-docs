---
title: balanceSheet resource type 
description: A balance sheet in Dynamics 365 Business Central.
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

# balanceSheet resource type
Represents a balanceSheet object in Dynamics 365 Business Central. A balance sheet is a statement of the assets, liabilities, and capital of a business at a specific point in time.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get balanceSheet](../api/dynamics_balancesheet_get.md)|balanceSheet|Get a balanceSheet object.|

## Properties
| Property	   | Type	|Description|
|:-------------|:-------|:----------|
|lineNumber    |numeric |The balanceSheet item line number.|
|display       |string  |The balanceSheet item display name.|
|balance       |numeric |The balanceSheet item balance.|
|lineType      |string  |The balanceSheet item line type can be: header, detail, total, or spacer.|
|indentation   |numeric |The balanceSheet item indentation used in report layout.|
|dateFilter    |date    |The date filter used to calculate the balanceSheet items.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
    "lineNumber": "int",
    "display": "string",
    "balance": "decimal",
    "lineType": "string",
    "indentation": "int",
    "dateFilter": "date"
}

```
