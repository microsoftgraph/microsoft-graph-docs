---
title: "legalHold resource type"
description: "legalHold resource type"
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# legalHold resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a legal hold. Legal holds are holds that are tied to an eDiscovery case. Legal holds should not be confused with retention holds, which are used to control retention policies for Microsoft 365 content. eDiscovery legal holds are for holding content indefinitely for litigation, internal investigations, and other legal actions where content needs to be protected against deletion. For more information, see [Manage holds in Advanced eDiscovery](/microsoft-365/compliance/managing-holds)

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List legalHolds](../api/ediscovery-case-list-legalholds.md)|[microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md) collection|Get a list of the  **legalHold** objects and their properties.|
|[Create legalHold](../api/ediscovery-case-post-legalholds.md)|[microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md)|Create a new **legalHold** object.|
|[Get legalHold](../api/ediscovery-legalhold-get.md)|[microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md)|Read the properties and relationships of a **legalHold** object.|
|[Update legalHold](../api/ediscovery-legalhold-update.md)|[microsoft.graph.ediscovery.legalHold](../resources/ediscovery-legalhold.md)|Update the properties of a **legalHold** object.|
|[Delete legalHold](../api/ediscovery-legalhold-delete.md)|None|Delete a **legalHold** object.|
|[List siteSources](../api/ediscovery-legalhold-list-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md) collection|Get the list of [siteSource](../resources/ediscovery-sitesource.md) objecs associated with a legal hold.|
|[Create siteSource](../api/ediscovery-legalhold-post-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md)|Create a new siteSource object.|
|[List userSources](../api/ediscovery-legalhold-list-usersources.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) collection|Get the list of [userSource](../resources/ediscovery-usersource.md) objects associated with a legal hold.|
|[Create userSource](../api/ediscovery-legalhold-post-usersources.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md)|Create a new **userSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|KQL query that specifies content to be held in the specified locations. To learn more, see [Keyword queries and search conditions for Content Search and eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions).  To hold all content in the specified locations, leave **contentQuery** blank. |
|createdBy|[identitySet](../resources/identityset.md)|The user who created the legal hold. |
|createdDateTime|DateTimeOffset|The date and time the legal hold was created. |
|description|String| The legal hold description. |
|displayName|String| The display name of the legal hold. |
|errors|String collection|Lists any errors that happened while placing the hold. |
|id|String|The ID for the eDiscovery case. Read-only. Inherited from [entity](../resources/entity.md). |
|isEnabled|Boolean|Indicates whether the hold is enabled and actively holding content. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|the user who last modified the legal hold.|
|lastModifiedDateTime|DateTimeOffset|The date and time the legal hold was last modified. |
|status|microsoft.graph.ediscovery.legalHoldStatus|The status of the legal hold. Possible values are: `Pending`, `Error`, `Success`, `UnknownFutureValue`.|

### legalHoldStatus values

|Member|Description|
|:---|-----------|
|Pending| The hold distribution process is in progress. |
|Error| There was an error when the hold was applied. For details, see the errors property of the legalHold object. |
|Success| The hold was successfully applied and is holding the specified content. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md) collection|Data source entity for SharePoint sites associated with the legal hold. |
|userSources|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) collection| Data source entity for a the legal hold. This is the container for a mailbox and OneDrive for Business site.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.legalHold",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.legalHold",
  "id": "String (identifier)",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isEnabled": "Boolean",
  "status": "String",
  "contentQuery": "String",
  "errors": [
    "String"
  ],
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```
