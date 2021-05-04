---
title: "reviewSetQuery resource type"
description: "Represents a review set query, which is used to query and cull data stored in an eDiscovery reviewSet."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: "resourcePageType"
---

# reviewSetQuery resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a review set query, which is used to query and cull data stored in an eDiscovery [reviewSet](ediscovery-reviewset.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List queries](../api/ediscovery-reviewsetquery-list.md) | [microsoft.graph.ediscovery.reviewSetQuery](ediscovery-reviewsetquery.md) collection | List the review set queries in a review set. |
| [Create queries](../api/ediscovery-reviewsetquery-post.md) | [microsoft.graph.ediscovery.reviewSetQuery](ediscovery-reviewsetquery.md) | Create a new review set query. |
| [Get queries](../api/ediscovery-reviewsetquery-get.md) | [microsoft.graph.ediscovery.reviewSetQuery](ediscovery-reviewsetquery.md) | Read the properties and relationships of a **reviewSetQuery** object. |
| [Update reviewSetQuery](../api/ediscovery-reviewsetquery-update.md) | None | Update a review set query. |
| [Delete reviewSetQuery](../api/ediscovery-reviewsetquery-delete.md) | None | Delete review set query. |
| [applyTags](../api/ediscovery-reviewsetquery-applytags.md)|None|Apply tags to documents that match the specified query.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| createdBy | [identitySet](/graph/api/resources/identityset) | The user who created the query. |
| createdDateTime |DateTimeOffset| The time and date when the query was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
| displayName | String | The name of the query.|
| id |String| The unique identifier of the query. Read-only.|
| lastModifiedBy | [identitySet](/graph/api/resources/identityset) | The user who last modified the query. |
| lastModifiedDateTime |DateTimeOffset | The date and time the query was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
| query | String | The query string in KQL (Keyword Query Language) query. For details, see [Document metadata fields in Advanced eDiscovery](/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery).  This field maps directly to the keywords condition.  You can refine searches by using fields listed in the *searchable field name* paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.ediscovery.reviewSetQuery",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSetQuery",
  "query": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reviewSetQuery resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
