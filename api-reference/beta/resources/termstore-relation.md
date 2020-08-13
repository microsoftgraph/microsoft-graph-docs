---
title: "relation resource type"
description: "Represents the relationship between terms in a term store."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# relation resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the relationship between [terms](../resources/termstore-term.md) in a term [store]. Currently two types of relationships are supported: pin and reuse. 

In a pin relationship, a term can be pinned under a different term in a different term set. In a pinned relationship, new children to the term can only be added in the term set in which the term was created. Any change in the hierarchy under the term is reflected across the sets in which the term was pinned. 

The reuse relationship is similar to the pinned relationship except that changes to the reused term can be made from any hierarchy in which the term is reused. Also, a change in hierarchy made to the reused term does not get reflected in the other term sets in which the term is reused.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List relations](../api/termstore-term-list-relations.md)|[microsoft.graph.termstore.relation](../resources/termstore-relation.md) collection|Retrieve a list of **relation** objects.|
|[Create relation](../api/termstore-relation-post.md)|[microsoft.graph.termstore.relation](../resources/termstore-relation.md)|Create a new **relation** object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the relation.|
|relationship|String|The type of relation. Possible values are: `pin`, `reuse`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fromTerm|[microsoft.graph.termStore.term](../resources/termstore-term.md)|The from [term] of the relation. The term from which the relationship is defined. A null value would indicate the relation is directly with the [set]. |
|set|[microsoft.graph.termStore.set](../resources/termstore-set.md)|The [set] in which the relation is relevant.|
|toTerm|[microsoft.graph.termStore.term](../resources/termstore-term.md)|The to [term] of the relation. The term to which the realtionship is defined.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.relation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.relation",
  "id": "String (identifier)",
  "relationship": "String"
}
```

[microsoft.graph.termStore.term]: termstore-term.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.relations]: termstore-relation.md
[microsoft.graph.termStore.relation]: termstore-relation.md
[store]: ../resources/termstore-store.md
[term]: ../resources/termstore-term.md
[set]: ../resources/termstore-set.md

<!--
{
  "type": "#page.annotation",
  "description": "TermRelation is the entity for mapping relations between different terms",
  "keywords": "termRelation,facet,resource",
  "section": "documentation",
  "tocPath": "TermRelation",
  "tocBookmarks": {
    "Resources/termStore.relation": "#"
  },
  "suppressions": []
}
-->
