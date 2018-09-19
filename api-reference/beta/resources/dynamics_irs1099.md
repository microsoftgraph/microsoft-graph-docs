---
title: irs1099Codes resource type 
description: An IRS 1099 Code object in Dynamics 365 Business Central.
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

# irs1099Codes resource type
Represents an irs1099Codes object in Dynamics 365 Business Central. IRS 1099 codes are used for reporting to the IRS.

## Methods

| Method                                                 | Return Type|Description            |
|:-------------------------------------------------------|:-----------|:----------------------|
|[Get irs1099Codes](../api/dynamics_irs1099_get.md)      |irs1099Codes|Gets an IRS 1099 code. |
|[Post irs1099Codes](../api/dynamics_create_irs1099.md)  |irs1099Codes|Creates an IRS 1099 code.|
|[Patch irs1099Codes](../api/dynamics_irs1099_update.md) |irs1099Codes|Update an IRS 1099 code.|
|[Delete irs1099Codes](../api/dynamics_irs1099_delete.md)|none        |Delete an IRS 1099 code.|

## Properties
| Property	         | Type 	|Description                                      |
|:-------------------|:-------|:------------------------------------------------|
|id                  |GUID    |The unique ID of the IRS 1099 Code. Non-editable.|
|code                |string  |Specifies the IRS 1099 Code.                     |
|displayName         |string  |Specifies the IRS 1099 Code display name.        |
|minimumReportable   |decimal |Specifies the minimum value for this box that must be reported to the IRS on a 1099 form.|
|lastModifiedDateTime|datetime|The last datetime the IRS 1099 Code was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the irs1099Codes.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "minimumReportable": "decimal",
  "lastModifiedDateTime": "datetime"
}

```

