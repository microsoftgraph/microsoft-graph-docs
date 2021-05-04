---
title: "educationSynchronizationLicenseAssignment resource type"
description: "Represents the license information to assign to user accounts. The resource will be used to set up license assignments when creating new user accounts."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationLicenseAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the license information to assign to user accounts. The resource will be used to set up license assignments when creating new user accounts.

## Properties

| Property  | Type              | Description                                                                                    |
| :-------- | :---------------- | :--------------------------------------------------------------------------------------------- |
| appliesTo | String            | The user role type to assign to license. Possible values are: `student`, `teacher`, `faculty`. |
| skuIds    | String collection | Represents the SKU identifiers of the licenses to assign.                                      |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationLicenseAssignment"
}-->

```json
{
  "appliesTo": { "@odata.type": "microsoft.graph.educationUserRole" },
  "skuIds": ["String"]
}
```


