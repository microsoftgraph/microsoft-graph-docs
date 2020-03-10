---
title: "appScope resource type"
description: "The scope of a role assignment determines the set of resources for which the principal has been granted access. An app scope is a scope defined and understood by a specific application. The other type of scope is directory scope. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. "
localization_priority: Normal
author: "abhijeetsinha"
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

| Property    | Type   | IsRequired | Description                                                                                                                                                                                                                                 |
| ----------- | ------ | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id          | string | Yes        | Id of an app-specific container or resource representing the scope of the assignment. Usually the immutable id of the resource. The scope of an assignment determines the set of resources for which the principal has been granted access. |
| type        | String | No         | **Read-only** property describing the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. |
| displayName | string | No         | **Read-only** property providing the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id.                                   |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "id": "String (identifier)",
  "type": "String",
  "displayName": "String"
}
```
