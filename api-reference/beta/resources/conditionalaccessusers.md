---
title: "conditionalAccessUsers resource type"
description: "Represents users, groups, and roles included in and excluded from the policy scope."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# conditionalAccessUsers resource type

Represents users, groups, and roles included in and excluded from the policy scope.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `includeUsers` | String collection | User IDs in scope of policy unless explicitly excluded, or `None` or `ALL` or `GuestsOrExternalUsers`. |
| `excludeUsers` | String collection | User IDs excluded from scope of policy and/or `GuestsOrExternalUsers`. |
| `includeGroups` | String collection | Group IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeGroups` | String collection | Group IDs excluded from scope of policy. |
| `includeRoles` | String collection | Role IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeRoles` | String collection | Role IDs excluded from scope of policy. |

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
  "@odata.type": "microsoft.graph.conditionalaccessusers"
}-->

```JSON
{
  "includeUsers": [ "String" ],
  "excludeUsers": [ "String" ],
  "includeGroups": [ "String" ],
  "excludeGroups": [ "String" ],
  "includeRoles": [ "String" ],
  "excludeRoles": [ "String" ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditionalaccessusers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->