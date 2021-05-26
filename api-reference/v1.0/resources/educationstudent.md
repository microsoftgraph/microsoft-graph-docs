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

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `student`.

## Properties

| Property       | Type            | Description                                                               |
| :------------- | :-------------- | :------------------------------------------------------------------------ |
| birthDate      | Date            | Birth date of the student.                                                |
| externalId     | String          | ID of the student in the source system.                                   |
| gender         | educationGender | The possible values are: `female`, `male`, `other`, `unknownFutureValue`. |
| grade          | String          | Current grade level of the student.                                       |
| graduationYear | String          | Year the student is graduating from the school.                           |
| studentNumber  | String          | Student Number.                                                           |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationStudent"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationStudent",
  "graduationYear": "String",
  "grade": "String",
  "birthDate": "DateTimeOffset",
  "gender": "String",
  "studentNumber": "String",
  "externalId": "String"
}
```
