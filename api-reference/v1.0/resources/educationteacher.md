---
title: "educationTeacher resource type"
description: "Additional information added to an educationUser that is present when the primaryRole of a user is `teacher`."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# Teacher resource type

Namespace: microsoft.graph

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `teacher`.

## Properties

| Property      | Type   | Description                             |
| :------------ | :----- | :-------------------------------------- |
| externalId    | String | ID of the teacher in the source system. |
| teacherNumber | String | Teacher number.                         |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationTeacher"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationTeacher",
  "teacherNumber": "String",
  "externalId": "String"
}
```
