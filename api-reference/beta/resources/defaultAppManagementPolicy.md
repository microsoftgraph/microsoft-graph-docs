---
title: "Application auth method tenant default policy "
description: "Application auth method tenant default policy enforces app management operation restrictions."
author: "saumadan"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# defaultAppManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Tenant wide application auth method policy type enforces app management operation restrictions for all applications and service principals.

## Methods

| Method                                                | Return type                                                             | Description                                                                         |
| :---------------------------------------------------- | :---------------------------------------------------------------------- | :---------------------------------------------------------------------------------- |
| [Get](../api/defaultAppManagementPolicy-get.md)       | [tenantAppManagementPolicy](../resources/defaultAppManagementPolicy.md) | Read the default app management policy set for applications and service principals. |
| [Update](../api/defaultAppManagementPolicy-update.md) | None                                                                    | Updates the default app management policy for applications and service principals.  |

## Properties

| Property                     | Type                                                                     | Description                                                           |
| :--------------------------- | :----------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| id                           | String                                                                   | The default policy identifier.                                        |
| displayName                  | String                                                                   | The display name of the default policy.                               |
| description                  | String                                                                   | The description of the default policy.                                |
| isEnabled                    | Boolean                                                                  | Denotes if the policy is enabled.                                     |
| applicationRestrictions      | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to application objects.            |
| servicePrincipalRestrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that will apply as default to Service Principal objects. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultAppManagementPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/defaultAppManagementPolicy",
  "id": "string (identifier)",
  "description": "string",
  "displayName": "string",
  "isEnabled": boolean,
  "applicationRestrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  },
  "servicePrincipalRestrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  }
}
```
