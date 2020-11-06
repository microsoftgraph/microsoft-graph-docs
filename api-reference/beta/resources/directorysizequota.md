---
title: "directorySizeQuota resource type"
description: "Represents a company's used and total directory quota."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# directorySizeQuota resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a company's used and total directory quota.

## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|used|Int32| Used amount of the directory quota. |
|total|Int32| Total amount of the directory quota.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySizeQuota"
}-->

```json
{
  "used": 123,
  "total": 1234
}
```
