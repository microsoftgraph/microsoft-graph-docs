---
title: "siteSource resource type"
description: "The container for a site associated with a custodian."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# siteSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a site associated with a [custodian](ediscovery-custodian.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List siteSources](../api/ediscovery-custodian-list-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md) collection|Get a list of **siteSource** objects and their properties.|
|[Create siteSource](../api/ediscovery-custodian-post-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md)|Create a new **siteSource** object.|
|[Get siteSource](../api/ediscovery-sitesource-get.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md)|Read the properties and relationships of a **siteSource** object.|
|[Delete siteSource](../api/ediscovery-sitesource-delete.md)|None|Delete a **siteSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **siteSource**.|
|createdDateTime|DateTimeOffset|The date and time the **siteSource** was created.|
|displayName|String|The display name of the **siteSource**. This will be the name of the SharePoint site.|
|id|String| The ID of the **siteSource**. The site source can be retrieved at any time with [Get site](../api/site-get.md) - https://graph.microsoft.com/v1.0/sites/{siteId}|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|site|[site](../resources/site.md)|The SharePoint site associated with the **siteSource**.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.siteSource",
  "baseType": "microsoft.graph.ediscovery.dataSource",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.siteSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)"
}
```
