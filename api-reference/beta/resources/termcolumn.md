---
author: swapnil1993
title:  "termColumn resource type"
description: "The termColumn resource indicates that the column's values contains taxonomy data."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# termColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Indicates that the column's values contains taxonomy data.

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| allowMultipleValues | Boolean | Specifies whether the column will allow more than one value   
| parentTerm     | microsoft.graph.termStore.term | Specifies the term guid whose children can be selected as column's value.  
| showFullyQualifiedName | Boolean | Specifies whether to display the entire term path or only the term label.  
| termSet      | microsoft.graph.termStore.set | Termset whose children can be selected as column's value. 

## JSON representation

Here is a JSON representation of a **termColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.termColumn" } -->

```json
{
    "allowMultipleValues": true,
    "parentTerm": { "@type": "microsoft.graph.termStore.term" },
    "showFullyQualifiedName": false,
    "termSet": { "@type": "microsoft.graph.termStore.set" }
}
```

