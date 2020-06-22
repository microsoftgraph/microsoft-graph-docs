---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Term LocalizedDescription facet
doc_type: "resourcePageType"
description: "Describes the facet for localized description in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# TermStoreLocalizedDescription resource type

The **microsoft.graph.termStore.localizedDescription** resource represents the localized description used to describe a term in the [microsoft.graph.termStore.store]. For more info see [microsoft.graph.termStore.term].

##### JSON representation

```json
{
  "languageTag" :  "string",
  "name" : "string"
}
```

## Properties

| Property name         | Type    | Description                                                          |
|:----------------------|:--------|:---------------------------------------------------------------------|
| languageTag              | string             | Language tag for the label
| name                     | string             | Name in localized language




[microsoft.graph.termStore.term]: term.md
[microsoft.graph.termStore.store]: termStore.md

<!--
{
  "type": "#page.annotation",
  "description": "TermLocalizedDescriptionFacet is the facet for containing the description of a set",
  "keywords": "termLocalizedDescriptionFacet,facet,resource",
  "section": "documentation",
  "tocPath": "TermLocalizedDescriptionFacet",
  "tocBookmarks": {
    "Resources/termStore.termLocalizedDescription": "#"
  },
  "suppressions": []
}
-->
