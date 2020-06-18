---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: TermStore
---

# TermStore resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **store** resource represents the term-store for taxonomy.



## JSON representation

Here is a JSON representation of a **store** resource.

```json
{
  "id": "string",
  "defaultLanguageTag" : "string",
  "languageTags" : ["string"],   

  /*  relationships  */
  "groups" : [{"@odata.type" : "microsoft.graph.termStore.group"}] ,
  "sets" : [{"oData.type" : "microsoft.graph.termStore.set"}]
}
```


## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| defaultLanguageTag | string | Default language of the termStore.
| id                   | string             | Unique identifier of termStore. Read-Only
| languageTags     | string collection  | List of languages of termStore. 

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| groups           | [microsoft.graph.termStore.group][] collection | Collection of all groups available in the termStore.
| sets               | [microsoft.graph.termStore.set][] collection | Collection of all sets available in the termStore. 


## Methods

| Method                                                   | Return type       |    Description
|:---------------------------------------------------------|:------------------|:---------------------
| [Get a termStore](../api/termStore-get.md)                     | [microsoft.graph.termStore.store] | Get the termStore

[identitySet]: identitySet.md
[microsoft.graph.termStore.group]: termGroup.md
[microsoft.graph.termStore.set]: termSet.md
[microsoft.graph.termStore.store]: termStore.md

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
