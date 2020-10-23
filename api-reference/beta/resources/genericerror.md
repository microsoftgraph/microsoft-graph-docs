---
title: "genericError resource type"
description: "A general-purpose error."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "svpsiva"
---

# genericError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A general-purpose error.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| message | String | The error message. |
| code | String | The error code. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.genericError"
}-->

```json
{
  "message": "String",
  "code": "String"
}
```


