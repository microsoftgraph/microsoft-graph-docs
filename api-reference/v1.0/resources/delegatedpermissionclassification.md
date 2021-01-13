---
title: "delegatedPermissionClassification resource type"
description: "Used to specify the classification of a delegated permission."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# delegatedPermissionClassification resource type

Namespace: microsoft.graph

Used to specify the classification of a delegated permission.

Delegated permission classifications can be used in combination with user consent settings to choose which permissions a user is allowed to consent to. See [Configure how end-users consent to applications](/azure/active-directory/manage-apps/configure-user-consent) to learn more about permission classifications.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| id | String | A unique identifier for the **delegatedPermissionClassification** Key. Not nullable. Read-only. |
| classification | permissionClassificationType | The classification value being given. Possible value: `low`. Does not support `$filter`. |
| permissionId | Guid | The unique identifier (**id**) for the delegated permission listed in the **oauth2PermissionScopes** collection of the [servicePrincipal](servicePrincipal.md). Required on create. Does not support `$filter`. |
| permissionName | String | The claim value (**value**) for the delegated permission listed in the **oauth2PermissionScopes** collection of the [servicePrincipal](servicePrincipal.md). Does not support `$filter`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.delegatedPermissionClassification"
}-->

```json
{
  "id": "string (identifier)",
  "classification": "low",
  "permissionId": "string",
  "permissionName": "string"
}
```
