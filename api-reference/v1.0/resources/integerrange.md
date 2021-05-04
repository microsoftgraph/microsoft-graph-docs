---
title: integerRange resource type
description: Represents an inclusive range of integers described by two Int64 boundaries.
author: nilakhan
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# integerRange resource type

Namespace: microsoft.graph

Represents an inclusive range of integers described by two Int64 boundaries.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|start|Int64|The inclusive lower bound of the integer range.|
|end|Int64|The inclusive upper bound of the integer range.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.integerRange"
}
-->
```json
{
    "start": 12345,
    "end": 12345
}
```