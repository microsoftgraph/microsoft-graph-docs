---
title: "journal resource type"
description: "Represents an journal object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# journal resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an journal object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get journal](../api/dynamics-journal-get.md) | [journal](dynamics-journal.md) | Read properties and relationships of journal object. |
| [Create journalLine](../api/dynamics-journal-post-journallines.md) | [journalLine](dynamics-journalline.md) | Create a new journalLine by posting to the journalLines collection. |
| [List journalLines](../api/dynamics-journal-list-journallines.md) | [journalLine](dynamics-journalline.md) collection | Get a journalLine object collection. |
| [Update](../api/dynamics-journal-update.md) | [journal](dynamics-journal.md) | Update journal object. |
| [Delete](../api/dynamics-journal-delete.md) | None | Delete journal object. |
|[Post](../api/dynamics-journal-post.md)|None||

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string                 |The unique ID of the journal. Non-editable.           |
|code                |string, maximum size 10| The code of the journal.                             |
|displayName         |string, maximum size 50| The display name of the journal.                     |
|balancingAccountId|Guid|Id of the balancing account.                                               |
|balancingAccountNumber|String|Account number of the balancing account.                             |
|lastModifiedDateTime|datetime               |The last datetime the journal was modified. Read-Only.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Nullable.|
|journalLines|[journalLine](dynamics-journalline.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.journal",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "balancingAccountId": "Guid",
  "balancingAccountNumber": "String",
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "journal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->