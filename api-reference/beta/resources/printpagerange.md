---
title: printPageRange resource type
description: Specifies the range of pages to be printed.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printPageRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the range of pages to be printed.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|startPage|Int32|The start page (inclusive) for the range. Read-only.|
|endPage|Int32|The end page (inclusive) for the range. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printPageRange"
}-->

```json
{
  "startPage": 123456,
  "endPage": 123456
}
```


