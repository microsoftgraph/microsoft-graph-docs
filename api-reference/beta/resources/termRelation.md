---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: TermRelation
doc_type: "resourcePageType"
description: "Describes the entity for relations between terms in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---

# TermRelation resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **microsoft.graph.termStore.relation** resource represents the relations between [microsoft.graph.termStore.term]. Currently two types of relations are supported between terms, the types are“pin” and “reuse” . In a “pin” relationship a term(“A”) can be pinned under a different term in a different termSet. In a pinned relationship new children to the term(“A”) can only be added in termSet in which term(“A”) was created. In terms of the UI any change in the hierarchy under term(“A”) gets reflected across termSets in which term(“A”) was pinned. The reused relationship is similar to the pinned except that changes to the reused term can be made from any hierarchy in which the term gets reused. Also in terms of UI changes in hierarchy made to the reused term do not get reflected in the other termSets where the term gets reused.


## JSON representation

Here is a JSON representation of a **microsoft.graph.termStore.term** resource.

```json
{
  "id": "string",  
  "relationship" : "microsoft.graph.termStore.relationType" ,

  /*  relationships */
  "fromTerm" : { "@odata.type" : "microsoft.graph.termStore.term"},
  "toTerm" : { "@odata.type" : "microsoft.graph.termStore.term"},
  "set" : { "@odata.type" : "microsoft.graph.termStore.set"}
}
```


## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| id                   | string             | Id of [microsoft.graph.termStore.relation]
| relationship         | enum               | Type of relation could be pin or reuse.

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| fromTerm           | [microsoft.graph.termStore.term][]          | The from term of the relation. A null value would indicate the relation is directly with the termSet.
| toTerm             | [microsoft.graph.termStore.term][]          | The to term of the relation. Cannot be a null value.
| set              | [microsoft.graph.termStore.set]                | The set in which the term relevant. A null value would mean relation exists between the two terms in every set.




[microsoft.graph.termStore.term]: term.md
[microsoft.graph.termStore.set]: termSet.md
[microsoft.graph.termStore.relations]: termRelation.md
[microsoft.graph.termStore.relation]: termRelation.md

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
