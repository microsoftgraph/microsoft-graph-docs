---
title: "ediscoveryCase resource type"
description: "eDiscovery cases are containers that contain custodians, holds, collections, review sets, and exports."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "compliance"
doc_type: "resourcePageType"
---

# ediscoveryCase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

eDiscovery cases are containers that contain custodians, holds, collections, review sets, and exports.  Learn more about cases and [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List ediscoveryCases](../api/ediscoverycase-list.md)          | [ediscoveryCase](ediscoverycase.md) collection   | Get a list of eDiscovery cases.|
| [Get ediscoveryCase](../api/ediscoverycase-get.md)            | [ediscoveryCase](ediscoverycase.md)               | Read eDiscovery case properties. |
| [Create ediscoveryCase](../api/ediscoverycase-post.md)        | [ediscoveryCase](ediscoverycase.md)               | Create a new **ediscoveryCase** by posting to the cases collection. |
| [Update ediscoveryCase](../api/ediscoverycase-update.md)      | [ediscoveryCase](ediscoverycase.md)               | Update an eDiscovery case. |
| [Delete ediscoveryCase](../api/ediscoverycase-delete.md)      | None                                              | Delete an eDiscovery case. |
| [Close ediscoveryCase](../api/ediscoverycase-close.md)        | None                                              | Close an eDiscovery case. |
| [Reopen ediscoveryCase](../api/ediscoverycase-reopen.md)      | None                                              | Reopen a closed eDiscovery case.|
| [List custodians](../api/custodian-get.md)   | [custodian](../resources/custodian.md) collection |Get the custodian resources from the custodians navigation property.|
| [Create custodians](../api/ediscoverycase-post-custodians.md)  | [custodian](../resources/custodian.md)           |Create a new custodian object.|
| [List reviewSets](../api/reviewset-list.md)   | [reviewSet](../resources/reviewset.md) collection | Get the reviewSet resources from the reviewSets navigation property.|
| [Create reviewSets](../api/reviewset-post.md)  | [reviewSet](../resources/reviewset.md)           | Create a new reviewSet object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|closedBy|[identitySet](/graph/api/resources/identityset)|The user who closed the case.|
|closedDateTime|DateTimeOffset|The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|createdBy|[identitySet](/graph/api/resources/identityset)|The user who created the case.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|
|id|String| The ID for the eDiscovery case. Read-only. |
|lastModifiedBy|[identitySet](/graph/api/resources/identityset)|The last user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset| The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|status|String| The case status. Possible values are `unknown`, `active`, `pendingDelete`, `closing`, `closed`, and `closedWithError`. For details see the following table.|

### caseStatus values

|Member|Description|
|:----|-----------|
| unknown | Case status is unknown. |
| active | Case is active. |
| pendingDelete | Case was deleted, but the delete has not been fully transacted. |
| closing | Case was closed, but the operation has not been fully transacted. |
| closed | The case is closed. |
| closedWithError | The case is closed, but there were errors releasing holds in the case. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|custodians|[custodian](../resources/custodian.md) collection| People in an organization who may possess data relevant to the case. |
|reviewSets|[reviewSet](reviewset.md) collection| Collection of review sets in the case. Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
 
  ],
  "@odata.type": "microsoft.graph.ediscoveryCase"
}-->

```json
{
  "@odata.type": "#microsoft.graph.ediscoveryCase",
  "description": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ediscoveryCase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
