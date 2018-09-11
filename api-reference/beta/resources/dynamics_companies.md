---
title: companies resource type | Microsoft Docs
description: A company in Dynamics 365 Business Central.
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

# companies resource type
Represents a companies resource type in Dynamics 365 Business Central. 

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[GET companies](../api/dynamics_companies_get.md)|companies|Get a company.|

## Properties
| Property	      | Type |Description                             |
|:----------------|:-----|:---------------------------------------|
|id               |GUID  |The unique ID of the company. Read-Only.|
|name             |string|Specifies the Company.                  |
|displayName      |string|Specifies the company display name.     |
|systemVersion    |string|Specifies the internal version of the company.|
|businessProfileId|string|Specifies the Business Profile ID linked to the company.|


## Relationships
None

## JSON representation

Here is a JSON representation of the company.

```json
{
  "id": "GUID",
  "name": "string",
  "displayName": "string",
  "systemVersion": "string",
  "businessProfileId": "string"
}

```

## See Also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Companies](../api/dynamics_companies_get.md)  
[Company Information](dynamics_companyinformation.md)  
[Get Company Information](../api/dynamics_companyinformation_get.md)  
[Update Company Information](../api/dynamics_companyinformation_update.md)  
