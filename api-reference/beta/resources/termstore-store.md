---
title: "store resource type"
description:  "Describes the top-level store in the termStore"
author: mpathak123
ms.author: mopathak
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
doc_type: resourcePageType
---

# store resource type

Namespace: microsoft.graph.termStore

The **store** resource represents the term-store for taxonomy.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get store](../api/termstore-store-get.md) | [store](../resources/termstore-store.md) | Read the properties and relationships of a [store](../resources/termstore-store.md) object.
|[Update store](../api/termstore-store-update.md) | [store](../resources/termstore-store.md) | Update the properties of a [store](../resources/termstore-store.md) object.

## Properties
|Property|Type|Description
|:---|:---|:---
|defaultLanguageTag | String | Default language of the termStore
|id|String | Unique identifier of termStore. Read-Only
|languageTags | String collection | List of languages of termStore

## Relationships
|Relationship|Type|Description
|:---|:---|:---
|groups |[group](../resources/termstore-group.md) collection | Collection of all groups available in the termStore
|sets | [set](../resources/termstore-set.md) collection | Collection of all sets available in the termStore

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.store",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.store",
  "id": "String (identifier)",
  "defaultLanguageTag": "String",
  "languageTags": [
    "String"
  ]
  /*  relationships  */
  "groups" : [{"@odata.type" : "microsoft.graph.termStore.group"}] ,
  "sets" : [{"oData.type" : "microsoft.graph.termStore.set"}]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "TermStore is the top-level entity used for managing taxonomy for a client",
  "keywords": "termStore,facet,resource",
  "section": "documentation",
  "tocPath": "TermStore",
  "tocBookmarks": {
    "Resources/termStore.store": "#"
  },
  "suppressions": []
}
-->
