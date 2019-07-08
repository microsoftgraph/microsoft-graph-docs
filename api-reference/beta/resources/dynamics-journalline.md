---
title: journalLines resource type 
description: A journal line in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# journalLines resource type
Represents a line in a journal in Dynamics 365 Business Central.

## Methods

| Method                                                    | Return Type|Description         |
|:----------------------------------------------------------|:-----------|:-------------------|
|[Get journalLines](../api/dynamics-journalline-get.md)      |journalLines|Gets a journal line.   |
|[Post journalLines](../api/dynamics-create-journalline.md)  |journalLines|Creates a journal line.|
|[Patch journalLines](../api/dynamics-journalline-update.md) |journalLines|Updates a journal line.|
|[Delete journalLines](../api/dynamics-journalline-delete.md)|none        |Deletes a journal line.|

## Properties
| Property	           | Type	                |Description                                                        |
|:---------------------|:-----------------------|:------------------------------------------------------------------|
|id                    |GUID                    |The unique ID of the journal line. Non-editable.                   |
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
|lastModifiedDateTime  |datetime                |The last datetime the journal line was modified. Read-Only.        |

## Relationships

| Relationship | Type	                           |Description|
|:-------------|:----------------------------------|:----------|
|journalLine   |subpage of a journal               |Read-only. Cannot be accessed directly.|
|journalLine   |parent entity                      |Read-only. A Journal Line can be a parent entity of Dimension Lines.|
|accountId     |[account](dynamics-account.md)     |Read-only. An Account must exist in the Accounts table.|


## JSON representation

Here is a JSON representation of the resource.


```json
{
    "id": "GUID",
    "journalDisplayName": "string",
    "lineNumber": "integer",
    "accountId": "GUID",
    "accountNumber": "string",
    "postingDate": "date",
    "documentNumber": "string",
    "externalDocumentNumber": "string",
    "amount": "decimal",
    "description": "string",
    "comment": "string",
    "lastModifiedDateTime": "datetime"
}
```
