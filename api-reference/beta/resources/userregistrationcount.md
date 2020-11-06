---
title: "userRegistrationCount resource type"
description: "Represents the registration count and status for users in your tenant."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# userRegistrationCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the registration count and status for users in your tenant.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| registrationCount | Int64 | Provides the registration count for your tenant. |
| registrationStatus | String | Represents the status of user registration. Possible values are: `registered`, `enabled`, `capable`, and `mfaRegistered`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userRegistrationCount",
  "baseType": null
}-->

```json
{ 
  "registrationStatus":"String", 
  "registrationCount": 23423
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userRegistrationCount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

