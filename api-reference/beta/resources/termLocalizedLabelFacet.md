---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Term Label
doc_type: "resourcePageType"
description: "Describes the facet for labels of terms in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# LocalizedLabel resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **microsoft.graph.termStore.localizedLabel** resource represents the term-label of a [microsoft.graph.termStore.term] used in the [microsoft.graph.termStore.store].

Identifies the labels associated with a given term. Inherits from [microsoft.graph.termStore.localizedName] .

##### JSON representation

```json
{
  "isDefault" : "boolean",
  "languageTag" :  "string",
  "name" : "string"
}
```

## Properties

| Property name         | Type    | Description                                                          |
|:----------------------|:--------|:---------------------------------------------------------------------|
| isDefault                | boolean            | Whether label is default label or not.
| languageTag              | string             | Language tag for the label
| name                     | string             | Name of the label




[microsoft.graph.termStore.term]: term.md
[microsoft.graph.termStore.localizedName]: termStoreLocalizedNameFacet.md
[microsoft.graph.termStore.store]: termStore.md


<!--
{
  "type": "#page.annotation",
  "description": "TermLocalizedLabelFacet is the facet for containing the label of a term",
  "keywords": "termLocalizedLabelFacet,facet,resource",
  "section": "documentation",
  "tocPath": "TermLocalizedLabelFacet",
  "tocBookmarks": {
    "Resources/termStore.termLocalizedLabel": "#"
  },
  "suppressions": []
}
-->
