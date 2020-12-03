---
title: "conditionalAccessApplications resource type"
description: "Represents applications and user actions included in and excluded from the policy scope."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# conditionalAccessApplications resource type

Namespace: microsoft.graph

Represents the applications and user actions included in and excluded from the policy.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeApplications | String collection | The list of application IDs the policy applies to, unless explicitly excluded (in excludeApplications). Can also be set to `All`. |
| excludeApplications | String collection | The list of application IDs explicitly excluded from the policy. |
| includeUserActions | String collection | User actions to include. For example, `urn:user:registersecurityinfo` |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeApplications",
    "excludeApplications",
    "includeUserActions"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessApplications"
}-->

```json
{
  "includeApplications": ["String"],
  "excludeApplications": ["String"],
  "includeUserActions": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessApplications resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

