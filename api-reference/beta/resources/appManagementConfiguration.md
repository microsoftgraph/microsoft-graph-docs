---
title: "appManagementConfiguration resource type"
description: "App management configuration complex type."
author: "saumadan"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# registrationEnforcement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

App management configuration object that contains properties which can be configured to enable various restrictions.

## Properties

| Property            | Type                                                                                     | Description                                                                                    |
| :------------------ | :--------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| passwordCredentials | [graph.passwordCredentialConfiguration](../resources/passwordCredentialConfiguration.md) | Collection of password restrictions settings to be applied to Application or Service Principal |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.appManagementConfiguration",
  "passwordCredentials": {
    "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
  }
}
```
