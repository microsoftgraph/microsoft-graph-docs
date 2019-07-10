---
title: "journalLine resource type"
description: "Represents an journalLine object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# journalLine resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an journalLine object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get journalLine](../api/dynamics-journalline-get.md) | [journalLine](dynamics-journalline.md) | Read properties and relationships of journalLine object. |
| [Update](../api/dynamics-journalline-update.md) | [journalLine](dynamics-journalline.md) | Update journalLine object. |
| [Delete](../api/dynamics-journalline-delete.md) | None | Delete journalLine object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                    |string                    |The unique ID of the journal line. Non-editable.                   |
|journalDisplayName    |string, maximum size 10 |The display name of the journal that this line belongs to. Read-Only.|
|lineNumber            |integer                 |The number of the journal line.                                    |
|accountId             |GUID                    |The unique ID of the account that the journal line is related to.  |
|accountNumber         |string, maximum size 20 |The number of the account that the journal line is related to.     |
|postingDate           |date                    |The date that the journal line is posted.                          |
|documentNumber        |string, maximum size 20 |Specifies a document number for the journal line.                  |
|externalDocumentNumber|string, maximum size 20 |Specifies an external document number for the journal line.        |
|amount                |decimal                 |Specifies the total amount (including VAT) that the journal line consists of.|
|description           |string, maximum size 50 |The description of the journal line, provided by the user or autocreated.|
|comment               |string, maximum size 250|A user specified comment on the journal line.                      |
|lastModifiedDateTime  |datetime                |The last datetime the journal line was modified. Read-Only. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. |


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.journalLine",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "accountId": "Guid",
  "accountNumber": "String",
  "amount": 1024,
  "comment": "String",
  "description": "String",
  "documentNumber": "String",
  "externalDocumentNumber": "String",
  "id": "String (identifier)",
  "journalDisplayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lineNumber": 1024,
  "postingDate": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "journalLine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->