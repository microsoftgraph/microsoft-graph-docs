---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Term
---
# Term resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **term** resource represents the term used in the [microsoft.graph.termStore.store].


## JSON representation

Here is a JSON representation of a **term** resource.

```json
{
  "createdDateTime": "string (timestamp)",  
  "descriptions": [{"@odata.type" : "microsoft.graph.termStore.localizedDescription"}],
  "id": "string",  
  "labels" : [{"@odata.type": "microsoft.graph.termStore.localizedLabel"}],
  "lastModifiedDateTime": "string (timestamp)",
  "properties": [{"@odata.type": "microsoft.graph.keyValue"}],

   /*  relationships  */
  "children" : [{"@odata.type" : "microsoft.graph.termStore.term"}],
  "set" : {"@odata.type" : "microsoft.graph.termStore.set"}, 
  "relations" : [{"@odata.type" : "microsoft.graph.termStore.relation"}],  
  
}
```


## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| createdDateTime      | DateTimeOffset     | Date and time of term creation. Read-only.
| descriptions          | [microsoft.graph.termStore.localizedDescription] collection            | Description about term that is dependent on the languageTag.
| id                   | string             | Unique identifier of term. Read-Only.
| labels                | [microsoft.graph.termStore.localizedLabel][] collection          | Label meta-data for a term.
| lastModifiedDateTime | DateTimeOffSet     | Last date and time of term modification. Read-only
| properties       | [microsoft.graph.keyValue][] | Collection of properties on the term.

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| children           | [microsoft.graph.termStore.term][] collection | Children of current term
| relations          | [microsoft.graph.termStore.relation] collection | To indicate which terms are related to the current term as either pinned or reused.  
| set              | [microsoft.graph.termStore.set]                | The set in which the term is created.

## Methods

| Method                                                   | Return type       |    Description
|:---------------------------------------------------------|:------------------|:---------------------
| [Create term](../api/term-post.md)                      | term | Creates a new term
| [Delete term](../api/term-delete.md)                     | None | Delete a term in a termStore
| [Get term](../api/term-get.md)                           | term | Retrieve data for a term in a termStore
| [List children](../api/term-children.md)             | Collection of terms | List all children terms of current term. 
| [Pin term](../api/term-pin.md)                        | None | Pin a term under another term
| [Reuse term](../api/term-reuse.md)                        | None | Reuse a term under another term.


[microsoft.graph.termStore.localizedLabel]: termLocalizedLabelFacet.md
[microsoft.graph.termStore.term]: term.md
[microsoft.graph.termStore.set]: termSet.md
[microsoft.graph.termStore.relations]: termRelation.md
[microsoft.graph.termStore.localizedDescription]: termLocalizedDescriptionFacet.md
[microsoft.graph.keyValue]: keyValue.md
[microsoft.graph.termStore.store]: termStore.md

<!--
{
  "type": "#page.annotation",
  "description": "Term is the entity used for tagging in termStore",
  "keywords": "term,facet,resource",
  "section": "documentation",
  "tocPath": "Terms",
  "tocBookmarks": {
    "Resources/termStore.term": "#"
  },
  "suppressions": []
}
-->
