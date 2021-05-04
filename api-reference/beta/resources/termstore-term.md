---
title: "term resource type"
description: "Defines a term entity in a term store."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# term resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a term used in a term [store]. A term can be used to represent an object which can then be used as a metadata to tag content. Multiple terms can be organized in a hierarchical manner within a [set].

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List children](../api/termstore-term-list-children.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md) collection|Get the first level children of a term in a term [store].|
|[List relations](../api/termstore-term-list-relations.md)|[microsoft.graph.termStore.relation](../resources/termstore-relation.md) collection|Get the relations of a term in a term [store].|
|[Create relation](../api/termstore-relation-post.md)|[microsoft.graph.termStore.relation](../resources/termstore-relation.md)|Create a new relation for a term or a [set] in a term [store].|
|[Create term](../api/termstore-term-post.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md)|Create a new term object in a term [store].|
|[Get term](../api/termstore-term-get.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md)|Read the properties and relationships of a term object in a term  [store].|
|[Update term](../api/termstore-term-update.md)|[microsoft.graph.termStore.term](../resources/termstore-term.md)|Update the properties of a term object in a term [store].|
|[Delete term](../api/termstore-term-delete.md)|None|Delete a term object in a term [store].|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of term creation. Read-only|
|descriptions|[microsoft.graph.termStore.localizedDescription](../resources/termstore-localizeddescription.md) collection|Description about term that is dependent on the languageTag|
|id|String|Unique identifier of term. Read-Only|
|labels|[microsoft.graph.termStore.localizedLabel](../resources/termstore-localizedlabel.md) collection|Label metadata for a term|
|lastModifiedDateTime|DateTimeOffset|Last date and time of term modification. Read-only|
|properties|[microsoft.graph.keyValue](../resources/keyvalue.md) collection|Collection of properties on the term|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|children|[microsoft.graph.termStore.term](../resources/termstore-term.md) collection|Children of current term|
|relations|[microsoft.graph.termStore.relation](../resources/termstore-relation.md) collection|To indicate which terms are related to the current term as either pinned or reused|
|set|[microsoft.graph.termStore.set](../resources/termstore-set.md)|The [set] in which the term is created|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.term",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.term",
  "id": "String (identifier)",
  "labels": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedLabel"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "descriptions": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedDescription"
    }
  ],
  "properties": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ]
}
```

[store]: ../resources/termstore-store.md
[set]: ../resources/termstore-set.md
[term]: ../resources/termstore-term.md
[group]: ../resources/termstore-group.md

<!--
{
  "type": "#page.annotation",
  "description": "Term is the entity used for tagging in termStore",
  "keywords": "term,facet,resource",
  "section": "documentation",
  "tocPath": "Terms",
  "tocBookmarks": {
    "Resources/termstore-term": "#"
  },
  "suppressions": []
}
-->


