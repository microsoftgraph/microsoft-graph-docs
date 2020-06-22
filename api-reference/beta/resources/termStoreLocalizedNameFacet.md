---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: TermStore localized name facet
doc_type: "resourcePageType"
description: "Facet for localized names in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# TermStoreLocalizedName resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **microsoft.graph.termStore.localizedName** resource represents the localized name used in the termStore. For more info see [microsoft.graph.termStore.localizedLabel].
It identifies a name in the localized language.

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




[microsoft.graph.termStore.localizedLabel]: termLocalizedLabelFacet.md

<!--
{
  "type": "#page.annotation",
  "description": "TermLocalizedName is the facet for containing the name of termGroup",
  "keywords": "termLocalizedLNameFacet,facet,resource",
  "section": "documentation",
  "tocPath": "TermLocalizedNameFacet",
  "tocBookmarks": {
    "Resources/termStore.termLocalizedName": "#"
  },
  "suppressions": []
}
-->
