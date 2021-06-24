---
title: "reviewSet resource type"
description: "Represents static set of electronically stored information collected for use in a litigation, investigation, or regulatory request."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: "resourcePageType"
---

# reviewSet resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents static set of electronically stored information collected for use in a litigation, investigation, or regulatory request.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List reviewSets](../api/ediscovery-case-list-reviewsets.md) | [microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md) collection | Get a collection of **reviewset** objects. |
| [Create reviewSet](../api/ediscovery-case-post-reviewsets.md) | [microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md) | Create a new **reviewset**. |
| [Get reviewSet](../api/ediscovery-reviewset-get.md) | [microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md) | Read the properties and relationships of a **reviewSet** object. |
| [List queries](../api/ediscovery-reviewsetquery-list.md)|[microsoft.graph.ediscovery.reviewSetQuery](../resources/ediscovery-reviewsetquery.md) collection|Get a list of **reviewSetQuery** resources.|
| [export](../api/ediscovery-reviewset-export.md) | None | Initiate an export of data from the **reviewset**. |
| [addToReviewSet](../api/ediscovery-reviewset-addtoreviewset.md)|None|Add data from a **sourceCollection** to a **reviewset**.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy        | [identitySet](/graph/api/resources/identityset) | The user who created the review set. Read-only. |
|createdDateTime  |DateTimeOffset| The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|displayName      |String| The review set name. The name is unique with a maximum limit of 64 characters. |
|id               |String| The review set unique identifier. Read-only. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
| queries |[microsoft.graph.ediscovery.reviewSetQuery](ediscovery-reviewsetquery.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.ediscovery.reviewSet",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSet",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reviewSet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
