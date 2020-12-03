---
title: generalLedgerEntries resource type 
description: A general ledger entry in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# generalLedgerEntries resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a generalLedgerEntry object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get generalLedgerEntries](../api/dynamics-generalledgerentries-get.md)|generalLedgerEntries|Get a G/L entry object.|

## Properties
| Property	         | Type	                 |Description                                  |
|:-------------------|:----------------------|:--------------------------------------------|
|id                  |numeric                |The unique ID of the G/L Entry.              |
|postingDate         |date                   |Specifies the posting date of the G/L Entry. |
|documentNumber      |string, maximum size 20|Specifies the document number of the G/L Entry.|
|documentType        |string                 |Specifies the document type of the G/L Entry.|
|accountId           |GUID                   |Specifies the accountId of the G/L Entry.    |
|accountNumber       |string, maximum size 20|Specifies the accountNumber of the G/L Entry.|
|description         |string, maximum size 50|Specifies the description of the G/L Entry.  |
|debitAmount         |numeric                |Specifies the debitAmount of the G/L Entry.  |
|creditAmount        |numeric                |Specifies the creditAmount of the G/L Entry. |
|lastModifiedDateTime|datetime               |The last datetime the G/L Entry was modified.|


## Relationships
None

## JSON representation

Here is a JSON representation of the resource.


```json
{
  "id": "int",
  "postingDate": "Date",
  "documentNumber": "string",
  "documentType": "string",
  "accountId": "GUID",
  "accountNumber": "string",
  "description": "string",
  "debitAmount": "decimal",
  "creditAmount": "decimal",
  "lastModifiedDateTime": "datetime"
}

```



