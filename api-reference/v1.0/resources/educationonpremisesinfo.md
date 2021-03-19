---
title: "educationOnPremisesInfo resource type"
description: "Additional information used to associate an on-premises Active Directory user account to their Azure AD user object."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# On Premises Info resource type

Namespace: microsoft.graph

Additional information used to associate an on-premises Active Directory user account to their Azure AD user object.

## Properties

| Property    | Type   | Description                                                |
| :---------- | :----- | :--------------------------------------------------------- |
| immutableId | String | Unique identifier for the user object in Active Directory. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationOnPremisesInfo"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationOnPremisesInfo",
  "immutableId": "String"
}
```
