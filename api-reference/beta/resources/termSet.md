---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: TermSet
---
# Set resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **set** resource represents the set used in the [microsoft.graph.termStore.store].


## JSON representation

Here is a JSON representation of a **set** resource.


```json
{
  "id": "string",
  "createdDateTime": "string (timestamp)",
  "description": "string",  
  "localizedNames": [{"@odata.type": "microsoft.graph.termStore.localizedName"}],
  "properties": [{"@odata.type": "microsoft.graph.keyValue"}],
  
  /*  relationships  */
  "children" : [{"@odata.type" : "microsoft.graph.termStore.term"}],
  "parentGroup" : {"odata.type" : "microsoft.graph.termStore.group"},
  "relations" : [{"@odata.type" : "microsoft.graph.termStore.relation"}] ,
  "terms" :  [{"@odata.type" : "microsoft.graph.termStore.term"}]
}
```


## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| createdDateTime      | DateTimeOffset     | Date and time of set creation. Read-only.
| description          | string             | Description giving details on the term usage.
| id                   | string             | Unique identifier of set. Read-only
| localizedNames       | [microsoft.graph.termStore.localizedName] collection             | Name of set for each languageTag.
| properties        | [microsoft.graph.keyValue]     | custom properties for set.

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| children           | [microsoft.graph.termStore.term] collection           | Children terms of termSet
|parentGroup | [microsoft.graph.termStore.group] | Group containing the particular set
| relations              | [microsoft.graph.termStore.relation] collection   | To indicate which terms have been pinned or reused directly under the termSet.
| terms                | [microsoft.graph.termStore.term] collection | All the terms under the set.

## Methods

| Method                                                   | Return type       |    Description
|:---------------------------------------------------------|:------------------|:---------------------
| [Create termSet](../api/termSet-post.md)                     | [microsoft.graph.termStore.set] | Create a termSet in termStore.
| [Delete termSet](../api/termSet-delete.md)                     | None |  Delete termSet.
| [Get termSet](../api/termSet-get.md)                           | [microsoft.graph.termStore.set] | Retrieve data of a termSet in termStore.

[microsoft.graph.termStore.term]: term.md
[microsoft.graph.termStore.set]: termSet.md
[microsoft.graph.termStore.group]: termGroup.md
[microsoft.graph.termStore.relation]: termRelation.md
[microsoft.graph.termStore.store]: termStore.md
[microsoft.graph.termStore.localizedName]: termstoreLocalizedNameFacet.md
[microsoft.graph.keyValue]: termStoreKeyValue.md

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
