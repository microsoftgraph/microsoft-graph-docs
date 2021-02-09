---
title: "siteSource resource type"
description: "The container for a site associated with a custodian."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# siteSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a site associated with a [custodian](custodian.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List siteSources](../api/custodian-list-sitesources.md)|[siteSource](../resources/sitesource.md) collection|Get a list of **siteSource** objects and their properties.|
|[Create siteSource](../api/custodian-post-sitesources.md)|[siteSource](../resources/sitesource.md)|Create a new **siteSource** object.|
|[Get siteSource](../api/sitesource-get.md)|[siteSource](../resources/sitesource.md)|Read the properties and relationships of a **siteSource** object.|
|[Delete siteSource](../api/sitesource-delete.md)|None|Delete a **siteSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **siteSource**.|
|createdDateTime|DateTimeOffset|The date and time the **siteSource** was created.|
|displayName|String|The display name of the **siteSource**. This will be the name of the SharePoint site.|
|id|String| The ID of the **siteSource**. This is not the ID of the actual site.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|site|[site](../resources/site.md)|The SharePoint site associated with the **siteSource**.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteSource",
  "baseType": "microsoft.graph.dataSource",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.siteSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)"
}
```
