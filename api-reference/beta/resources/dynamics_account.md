---
title: accounts resource type | Microsoft Docs
description: An account object in Dynamics 365 Business Central.
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

# accounts resource type
Represents an account object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET accounts](../api/dynamics_account_get.md)|accounts|Get accounts object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the account.|
|number|string, maximum size 20|Specifies the number of the G/L account.|
|displayName|string, maximum size 50|Specifies the name of the G/L account.|
|category|string, maximum size 20|Specifies the category of the G/L account.|
|subCategory|string, maximum size 80|Specifies the subcategory of the account category of the G/L account.|
|blocked|boolean|Specifies that entries cannot be posted to the G/L account. **True** indicates account is blocked and posting is not allowed.|
|lastModifiedDateTime|datetime|The last datetime the account was modified.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
  "id": "GUID",
  "number": "string",
  "displayName": "string",
  "category": "string",
  "subCategory": "string",
  "blocked": "boolean",
  "lastModifiedDateTime": "datetime"
}

```
## See also
[Working with Dynamics 365 Business Central in Microsoft Graph](../resources/dynamics_overview.md)  
[Error Codes](../dynamics_error_codes.md)  
[Get Account](../api/dynamics_account_get.md)  
[Aged Accounts Payable](dynamics_agedaccountspayable.md)  
[Aged Accounts Receivable](dynamics_agedaccountsreceivable.md)  
