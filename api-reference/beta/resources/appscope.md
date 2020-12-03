---
title: "appScope resource type"
description: "An app scope is a scope defined and understood by a specific application."
localization_priority: Normal
author: "sureshja"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# appScope resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The scope of a role assignment determines the set of resources for which the principal has been granted access. An app scope is a scope defined and understood by a specific application. The other type of scope is directory scope. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. 

This is employed in both the single principal, single scope entity and multiple principal, multiple scope entities.

## Methods
None

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| id | string | Id of an app-specific container or resource representing the scope of the assignment. Usually the immutable id of the resource. The scope of an assignment determines the set of resources for which the principal has been granted access. This property is required. |
| type | String | Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. This property is read only. |
| displayName | string | Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. This property is read only. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appScope"
}-->

```json
{
  "id": "String (identifier)",
  "type": "String",
  "displayName": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "appScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

