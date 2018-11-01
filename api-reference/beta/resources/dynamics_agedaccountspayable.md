---
apiDocType: resourcePageType
---
---
title: agedAccountsPayable resource type 
description: An aged accounts payable object in Dynamics 365 Business Central.
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

# agedAccountsPayable resource type
Represents an agedAccountsPayable object in Dynamics 365 Business Central, which is showing the aging of a vendor account.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get agedAccountsPayable](../api/dynamics_agedaccountspayable_get.md)|agedAccountsPayable|Get agedAccountsPayable object|

## Properties
| Property	    | Type	   |Description                                 |
|:--------------|:---------|:-------------------------------------------|
|vendorId       |GUID      |The unique ID of vendor.                    |
|vendorNumber   |string    |Specifies vendor's number.                  |
|name           |string    |Specifies vendor's name.                    |
|currencyCode   |string    |Specifies the currency.                     |
|balanceDue     |numeric   |Specifies the total balance due to the vendor.|
|currentAmount  |numeric   |Specifies balance before first aging period.|
|period1Amount  |numeric   |Specifies balance in the first aging period.|
|period2Amount  |numeric   |Specifies balance in the second aging period.|
|period3Amount  |numeric   |Specifies balance in the third aging period.|
|agedAsOfDate   |date|Specifies period start date used to calculate aging periods.|
|periodLengthFilter|string |Specifies the length of the periods. Acceptable values for the time units are: D, WD, W, M, Q, or Y. C, meaning current time unit based on date, can be specified as a prefix to the time unit.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
    "vendorId": "GUID",
    "vendorNumber": "string",
    "name": "string",
    "currencyCode": "string",
    "balanceDue": "decimal",
    "currentAmount": "decimal",
    "period1Amount": "decimal",
    "period2Amount": "decimal",
    "period3Amount": "decimal",
    "agedAsOfDate": "date",
    "periodLengthFilter": "string"
}

```
