---
title: "educationSynchronizationLicenseAssignment resource type"
description: "Represents the license information to assign to user accounts. The resource will be used to set up license assignments when creating new user accounts."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationSynchronizationLicenseAssignment resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the license information to assign to user accounts. The resource will be used to set up license assignments when creating new user accounts.

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **appliesTo** | string | The user role type to assign to license. Possible values are: `student`, `teacher`.         |
| **skuIds** | collection of strings |  Represents the SKU identifiers of the licenses to assign.        |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationLicenseAssignment"
}-->

```json
{
    "appliesTo": {"@odata.type": "microsoft.graph.educationUserRole"},
    "skuIds": ["String"]
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationsynchronizationlicenseassignment.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
