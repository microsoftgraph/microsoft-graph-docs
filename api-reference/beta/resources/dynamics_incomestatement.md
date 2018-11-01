---
apiDocType: resourcePageType
---
---
title: incomeStatement resource type 
description: An incomeStatement in Dynamics 365 Business Central.
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

# incomeStatement resource type
Represents an income statement in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get incomeStatement](../api/dynamics_incomestatement_get.md)|incomeStatement|Get an income statement object.|

## Properties
| Property	| Type	|Description                                                 |
|:----------|:------|:-----------------------------------------------------------|
|lineNumber |numeric|The incomeStatement item line number.                       |
|display    |string |The incomeStatement item display name.                      |
|netChange  |numeric|The incomeStatement item Net Change.                        |
|lineType   |string |The incomeStatement item line type can be: header, detail, total, or spacer.|
|indentation|numeric|The incomeStatement item indentation used in report layout. |
|dateFilter |date   |The date filter used to calculate the incomeStatement items.|


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
