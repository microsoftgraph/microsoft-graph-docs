---
title: "educationTeacher resource type"
description: "Additional information added to an educationUser that is present when the primaryRole of a user is `teacher`."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationTeacher resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `teacher`.

> [!IMPORTANT]
> When using Delegated permission scopes, Graph will only return the `externalId` properties. All other properties require Application scopes.

## Properties

| Property      | Type   | Description                                  |
| :------------ | :----- | :------------------------------------------- |
| externalId    | String | Id of the Teacher in external source system. |
| teacherNumber | String | Teacher number.                              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationTeacher"
}-->

```json
{
  "externalId": "String",
  "teacherNumber": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationTeacher resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


