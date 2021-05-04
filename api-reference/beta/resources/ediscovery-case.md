---
title: "case resource type"
description: "In the context of eDiscovery, contains custodians, holds, collections, review sets, and exports."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: "resourcePageType"
---

# case resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of eDiscovery, contains custodians, holds, collections, review sets, and exports. For details, see [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List case](../api/ediscovery-case-list.md) | [microsoft.graph.ediscovery.case](ediscovery-case.md) collection | Retrieve a list of [case](../resources/ediscovery-case.md) objects.|
| [Create case](../api/ediscovery-case-post.md) | [microsoft.graph.ediscovery.case](ediscovery-case.md) | Create a new **case** object. |
| [Get case](../api/ediscovery-case-get.md) | [microsoft.graph.ediscovery.case](ediscovery-case.md) | Retrieve the properties and relationships of a **case** object. |
| [Update case](../api/ediscovery-case-update.md) | [microsoft.graph.ediscovery.case](ediscovery-case.md) | Update the properties of a **case** object. |
| [Delete case](../api/ediscovery-case-delete.md) | None | Delete a **case** object. |
| [Close case](../api/ediscovery-case-close.md)        | None                                              | Close an eDiscovery case. For details, see [Close a case](/microsoft-365/compliance/close-or-delete-case#close-a-case). |
| [Reopen case](../api/ediscovery-case-reopen.md)      | None                                              | Reopen an eDiscovery case that was closed. For details, see [Reopen a closed case](/microsoft-365/compliance/close-or-delete-case#reopen-a-closed-case).|
| Custodians |
| [List custodians](../api/ediscovery-case-list-custodians.md)   | [microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md) collection |Get a list of the [custodian](../resources/ediscovery-custodian.md) objects and their properties.|
| [Create custodian](../api/ediscovery-case-post-custodians.md)  | [microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md)           |Create a new [custodian](../resources/ediscovery-custodian.md) object. After the custodian object is created, you will need to create the custodian's [userSource](../resources/ediscovery-usersource.md) to reference their mailbox and OneDrive for Business site.|
| Legal holds |
| [List legalHolds](../api/ediscovery-case-list-legalholds.md)   | [microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md) collection | Get the [legalHolds](../resources/ediscovery-legalhold.md) that are applied to a case.|
| [Create legalHold](../api/ediscovery-case-post-legalholds.md)  | [microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md)           | Create a new [legalHold](../resources/ediscovery-legalhold.md) object.|
| Review sets |
| [List reviewSets](../api/ediscovery-case-list-reviewsets.md)   | [microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md) collection | Get the list of [reviewSets](../resources/ediscovery-reviewset.md) from a **case** object.|
| [Create reviewSet](../api/ediscovery-case-post-reviewsets.md)  | [microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md)           | Create a new [reviewSet](../resources/ediscovery-reviewset.md) object. The request body contains the display name of the review set, which is the only writable property.|
| Case settings |
| [Get settings](../api/ediscovery-settings-get.md)|[microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md)|Read the properties and relationships of a [microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md) object. |
| [Update settings](../api/ediscovery-settings-update.md)|[microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md)|Update the properties of a [microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md) object. |
| [resetToDefault](../api/ediscovery-settings-resettodefault.md)|None|Reset all settings to the default values. |
| Source collections |
| [List sourceCollections](../api/ediscovery-case-list-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get the [sourceCollection](../resources/ediscovery-sourcecollection.md) from a **case** object.|
| [Create sourceCollection](../api/ediscovery-case-post-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Create a new **sourceCollection** object.|
| Tags |
| [List tags](../api/ediscovery-case-list-tags.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Retrieve a list of [tag](../resources/ediscovery-tag.md) objects from an eDiscovery case.|
| [Create tag](../api/ediscovery-case-post-tags.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md)|Create a new tag for the specified case. The tags are used in review sets while reviewing content.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|closedBy|[identitySet](/graph/api/resources/identityset)|The user who closed the case.|
|closedDateTime|DateTimeOffset|The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|createdBy|[identitySet](/graph/api/resources/identityset)|The user who created the case.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|
|id|String| The ID for the eDiscovery case. Read-only. |
|lastModifiedBy|[identitySet](/graph/api/resources/identityset)|The last user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset| The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|status|microsoft.graph.ediscovery.caseStatus| The case status. Possible values are `unknown`, `active`, `pendingDelete`, `closing`, `closed`, and `closedWithError`. For details, see the following table.|

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
|custodians|[microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md) collection| Returns a list of case **custodian** objects for this **case**.  Nullable.|
|legalHolds|[microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md) collection| Returns a list of case **legalHold** objects for this **case**.  Nullable. |
|noncustodialDataSources|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) collection| Returns a list of case **noncustodialDataSource** objects for this **case**.  Nullable. |
|operations|[microsoft.graph.ediscovery.caseOperation](../resources/ediscovery-caseoperation.md) collection| Returns a list of case **operation** objects for this **case**. Nullable. |
|reviewSets|[microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md) collection| Returns a list of **reviewSet** objects in the case. Read-only. Nullable. |
|Settings|[microsoft.graph.ediscovery.settings](../resources/ediscovery-settings.md) collection| Returns a list of **settings** objects in the case. Read-only. Nullable. |
|sourceCollections|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Returns a list of **sourceCollection** objects associated with this case.|
|tags|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Returns a list of **tag** objects associated to this case.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
 
  ],
  "@odata.type": "microsoft.graph.ediscovery.case"
}-->

```json
{
  "@odata.type": "#microsoft.graph.ediscovery.case",
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
  "description": "case resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
