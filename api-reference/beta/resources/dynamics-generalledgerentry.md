---
title: "generalLedgerEntry resource type"
description: "Represents an generalLedgerEntry object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# generalLedgerEntry resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an generalLedgerEntry object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get generalLedgerEntry](../api/dynamics-generalledgerentry-get.md) | [generalLedgerEntry](dynamics-generalledgerentry.md) | Read properties and relationships of generalLedgerEntry object. |
| [Update](../api/dynamics-generalledgerentry-update.md) | [generalLedgerEntry](dynamics-generalledgerentry.md) | Update generalLedgerEntry object. |
| [Delete](../api/dynamics-generalledgerentry-delete.md) | None | Delete generalLedgerEntry object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accountId|Guid||
|accountNumber|String||
|creditAmount|Decimal||
|debitAmount|Decimal||
|description|String||
|documentNumber|String||
|documentType|String||
|id|String| Read-only.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|postingDate|Date||

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
|postingDate|Date|Date of posting.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.generalLedgerEntry",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "accountId": "Guid",
  "accountNumber": "String",
  "creditAmount": 1024,
  "debitAmount": 1024,
  "description": "String",
  "documentNumber": "String",
  "documentType": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "postingDate": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "generalLedgerEntry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->