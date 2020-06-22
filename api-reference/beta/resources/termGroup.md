---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: TermGroup
doc_type: "resourcePageType"
description: "Describes the termGroup entity in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---

# Group resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **group** resource represents the group used in the [microsoft.graph.termStore.store].

## JSON representation

Here is a JSON representation of a **group** resource.

```json
{
  "id": "string",
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "scope" : "microsoft.graph.termStore.groupScope",
  "displayName": "string",  

  /*  relationships  */
  "sets" : [{"@odata.type" : "microsoft.graph.termStore.set"}]

}
```

## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| createdDateTime      | DateTimeOffset     | Date and time of group creation. Read-only.
| description          | string             | Description giving details on the term usage.
| id                   | string             | Unique identifier of group. Read-Only
| displayName          | string             | Name of group
| scope                | enum               | Returns type of group. 

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| sets           | [microsoft.graph.termStore.set][] collection | All termSets under the termGroup


## Methods

| Method                                                   | Return type       |    Description
|:---------------------------------------------------------|:------------------|:---------------------
| [Create termGroup](../api/termGroup-post.md)                     | [microsoft.graph.termStore.set] | Create a termGroup in termStore.
| [Delete termGroup](../api/termGroup-delete.md)                     | None |  Delete termGroup.
| [Get termGroup](../api/termGroup-get.md)                           | [microsoft.graph.termStore.set] | Retrieve data of a termGroup in termStore.

[identitySet]: identitySet.md
[microsoft.graph.termStore.set]: termSet.md
[microsoft.graph.termStore.store]: termStore.md

<!--
{
  "type": "#page.annotation",
  "description": "TermGroup is the entity used for managing permissions for the termSets in termStore",
  "keywords": "termGroup,facet,resource",
  "section": "documentation",
  "tocPath": "TermGroup",
  "tocBookmarks": {
    "Resources/termStore.group": "#"
  },
  "suppressions": []
}
-->
