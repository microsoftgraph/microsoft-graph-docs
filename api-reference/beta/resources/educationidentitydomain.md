---
title: "educationIdentityDomain resource type"
description: "Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the identity creation configuration. "
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationIdentityDomain resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the [identity creation configuration](educationidentitycreationconfiguration.md). 

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **appliesTo** | string |  The user role type to assign to license. Possible values are: `student`, `teacher`.      |
| **name** | string |  Represents the domain for the user account.         |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationIdentityDomain"
}-->

```json
{
    "appliesTo": {"@odata.type": "microsoft.graph.educationUserRole"},
    "name": "String"
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationidentitydomain.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
