---
title: "educationOnPremisesInfo resource type"
description: "Additional information used to associate an on-premises Active Directory user account to their Azure AD user object."
author: "mlafleur"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# educationOnPremisesInfo resource type

Namespace: microsoft.graph

Additional information used to associate an on-premises Active Directory user account to their Azure AD user object.

## Properties

| Property    | Type   | Description                                               |
| :---------- | :----- | :-------------------------------------------------------- |
| immutableId | String | Unique identifier for the user object in Active Directory. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOnPremisesInfo"
}-->

```json
{
  "immutableId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationOnPremisesInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


