---
title: "Application auth method application or service principal object policy "
description: "Application auth method policy for targeted application or service principal to enforces app management operation restrictions."
author: "saumadan"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# appManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Application auth method tenant app management policy type enforces app management operation restrictions for all applications and service principals.

## Methods

| Method                                                         | Return type                                                                | Description                                                                                                            |
| :------------------------------------------------------------- | :------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| [List](../api/applicationAuthMethodResourcePolicy-get.md)      | [appManagementPolicy](../resources/applicationAuthMethodResourcePolicy.md) | Returns a list of app management policies created for applications and service principals along with their properties. |
| [Create](../api/applicationAuthMethodResourcePolicy-get.md)    | [appManagementPolicy](../resources/applicationAuthMethodResourcePolicy.md) | Creates an app management policy that can be assigned to an application or service principal object.                   |
| [Get](../api/applicationAuthMethodResourcePolicy-get.md)       | [appManagementPolicy](../resources/applicationAuthMethodResourcePolicy.md) | Gets a single app management policy object.                                                                            |
| [Update](../api/applicationAuthMethodResourcePolicy-update.md) | None                                                                       | Updates an app management policy.                                                                                      |
| [Delete](../api/applicationAuthMethodResourcePolicy-update.md) | None                                                                       | Deletes an app management policy from the collection of policies in appManagementPolicies.                             |

## Properties

| Property     | Type                                                                     | Description                                                                         |
| :----------- | :----------------------------------------------------------------------- | :---------------------------------------------------------------------------------- |
| id           | String                                                                   | The policy identifier.                                                              |
| displayName  | String                                                                   | The display name of the policy.                                                     |
| description  | String                                                                   | The description of the policy.                                                      |
| isEnabled    | Boolean                                                                  | Denotes if the policy is enabled.                                                   |
| restrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply to applications or service principal object.                |
| appliesTo    | [directoryObject](../resources/directoryobject.md)                       | Collection of resources to which a policy is applied. This is a read-only property. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appManagementPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

```json
[{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/appManagementPolicies",
  "id": "string (identifier)",
  "description": "string",
  "displayName": "string",
  "isEnabled": boolean,
  "restrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  },
  "servicePrincipalRestrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  }
}]
```
