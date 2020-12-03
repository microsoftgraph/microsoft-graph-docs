---
title: "policyBase resource type"
description: "Represents an abstract base type for policy types to inherit from."
localization_priority: Normal
author: "lujiangfeng666"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# policyBase resource type

Namespace: microsoft.graph

Represents an abstract base type for policy types to inherit from.

## Methods

None

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.policyBase",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "policyBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
