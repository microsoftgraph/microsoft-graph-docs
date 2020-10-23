---
title: "conditionalAccessUsers resource type"
description: "Represents users, groups, and roles included in and excluded from the policy scope."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# conditionalAccessUsers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents users, groups, and roles included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeUsers | String collection | User IDs in scope of policy unless explicitly excluded, or `None` or `All` or `GuestsOrExternalUsers`. |
| excludeUsers | String collection | User IDs excluded from scope of policy and/or `GuestsOrExternalUsers`. |
| includeGroups | String collection | Group IDs in scope of policy unless explicitly excluded, or `All`. |
| excludeGroups | String collection | Group IDs excluded from scope of policy. |
| includeRoles | String collection | Role IDs in scope of policy unless explicitly excluded, or `All`. |
| excludeRoles | String collection | Role IDs excluded from scope of policy. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeUsers",
    "excludeUsers",
    "includeGroups",
    "excludeGroups",
    "includeRoles",
    "excludeRoles"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessUsers",
  "baseType": null
}-->

```json
{
  "excludeGroups": ["String"],
  "excludeRoles": ["String"],
  "excludeUsers": ["String"],
  "includeGroups": ["String"],
  "includeRoles": ["String"],
  "includeUsers": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessUsers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

