---
title: "educationStudent resource type"
description: "Additional information added to an educationUser that is present when the primaryRole of a user is `student`."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationStudent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `student`.

> [!IMPORTANT]
> When using Delegated permission scopes, Graph will only return the `externalId` properties. All other properties require Application scopes.

## Properties

| Property       | Type            | Description                                     |
| :------------- | :-------------- | :---------------------------------------------- |
| birthDate      | Date            | Birth date of the student.                      |
| externalId     | String          | ID of the student in the source system.         |
| gender         | educationGender | Possible values are: `female`, `male`, `other`. |
| grade          | String          | Current grade level of the student.             |
| graduationYear | String          | Year the student is graduating from the school. |
| studentNumber  | String          | Student Number.                                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationStudent"
}-->

```json
{
  "birthDate": "String (timestamp)",
  "externalId": "String",
  "gender": "educationGender",
  "grade": "String",
  "graduationYear": "String",
  "studentNumber": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationStudent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


