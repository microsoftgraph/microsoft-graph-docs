---
title: "set resource type"
description: "Represents a set in a term store."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# set resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the set used in a term [store]. The set represents a unit which contains a collection of hierarchical terms. A [group] can contain multiple sets.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sets](../api/termstore-group-list-sets.md)|collection [microsoft.graph.termStore.set] | Returns list of sets contained within a [group] of a term [store] |
|[Create set](../api/termstore-set-post.md)|[microsoft.graph.termStore.set](../resources/termstore-set.md)|Create a new set object in a term [store].|
|[Create term](../api/termstore-term-post.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md)|Create a new [term] object in a term [store].|
|[Get set](../api/termstore-set-get.md)|[microsoft.graph.termStore.set](../resources/termstore-set.md)| Get a set object in a term [store].|
|[Get term](../api/termstore-term-get.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md)| Get a [term] object in a term [store].|
|[Update set](../api/termstore-set-update.md)|[microsoft.graph.termStore.set](../resources/termstore-set.md)|Update the properties of a set object in a term [store].|
|[Delete set](../api/termstore-set-delete.md)|None|Deletes a set object in a term [store].|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of set creation. Read-only.|
|description|String|Description giving details on the term usage.|
|id|String|Unique identifier. Read-only.|
|localizedNames|[microsoft.graph.termStore.localizedName](../resources/termstore-localizedname.md) collection|Name of the set for each languageTag.|
|properties|[microsoft.graph.keyValue](../resources/keyvalue.md) collection|Custom properties for the set.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|children|[microsoft.graph.termStore.term](../resources/termstore-term.md) collection|Children terms of set in term [store].|
|parentGroup|[microsoft.graph.termStore.group](../resources/termstore-group.md)|The parent [group] that contains the set.|
|relations|[microsoft.graph.termStore.relation](../resources/termstore-relation.md) collection|Indicates which terms have been pinned or reused directly under the set.|
|terms|[microsoft.graph.termStore.term](../resources/termstore-term.md) collection|All the terms under the set.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.set",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.set",
  "id": "String (identifier)",
  "localizedNames": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedName"
    }
  ],
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "properties": [
    {
      "@odata.type": "microsoft.graph.termStore.keyValue"
    }
  ]
}
```

[microsoft.graph.termStore.term]: termstore-term.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.group]: termstore-group.md
[microsoft.graph.termStore.relation]: termstore-relation.md
[microsoft.graph.termStore.store]: termstore-store.md
[microsoft.graph.termStore.localizedName]: termstore-localizedname.md
[store]: ../resources/termstore-store.md
[group]: ../resources/termstore-group.md
[set]: ../resources/termstore-set.md
[term]: ../resources/termstore-term.md


<!--
{
  "type": "#page.annotation",
  "description": "TermSet is the entity containing the particular taxonomy for a tenant",
  "keywords": "termSet,facet,resource",
  "section": "documentation",
  "tocPath": "TermSet",
  "tocBookmarks": {
    "Resources/termStore.set": "#"
  },
  "suppressions": []
}
-->


