---
title: "educationIdentityDomain resource type"
description: "Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the identity creation configuration. "
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationIdentityDomain resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the [identity creation configuration](educationidentitycreationconfiguration.md).

## Properties

| Property  | Type   | Description                                                                                        |
| :-------- | :----- | :------------------------------------------------------------------------------------------------- |
| appliesTo | String | The user role type to assign to the license. Possible values are: `student`, `teacher`, `faculty`. |
| name      | String | Represents the domain for the user account.                                                        |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationIdentityDomain"
}-->

```json
{
  "appliesTo": { "@odata.type": "microsoft.graph.educationUserRole" },
  "name": "String"
}
```


