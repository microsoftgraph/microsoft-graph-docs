---
apiDocType: resourcePageType
---
---
title: retainedEarningsStatement resource type 
description: A retained earnings statement object in Dynamics 365 Business Central.
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

# retainedEarningsStatement resource type
Represents an retained earnings statement in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description          |
|:-------------|:-------------|:--------------------|
|[Get retainedEarningsStatement](../api/dynamics_retainedearningsstatement_get.md)|retainedEarningsStatement|Get a retained earnings statement object.|

## Properties
| Property	| Type	|Description                                                           |
|:----------|:------|:---------------------------------------------------------------------|
|lineNumber |numeric|The retainedEarningsStatement item line number.                       |
|display    |string |The retainedEarningsStatement item display name.                      |
|netChange  |numeric|The retainedEarningsStatement item Net Change.                        |
|lineType   |string |The retainedEarningsStatement item line type can be: header, detail, total, or spacer.|
|indentation|numeric|The retainedEarningsStatement item indentation used in report layout. |
|dateFilter |date   |The date filter used to calculate the retainedEarningsStatement items.|


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
