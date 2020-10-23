---
title: "conditionalAccessLocations resource type"
description: "Represents locations included in and excluded from the policy scope."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# conditionalAccessLocations resource type

Namespace: microsoft.graph

Represents locations included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeLocations | String collection | Location IDs in scope of policy unless explicitly excluded, `All`, or `AllTrusted`. |
| excludeLocations | String collection | Location IDs excluded from scope of policy. |

## JSON representation

The following is a JSON representation of the resource.

## Relationships

None.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeLocations",
    "excludeLocations"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessLocations",
  "baseType": null
}-->

```json
{
  "excludeLocations": ["String"],
  "includeLocations": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessLocations resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

