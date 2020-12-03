---
title: "educationCourse resource type"
description: "Represents the course information for a class."
author: "mlafleur"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationCourse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the course information for a class. It is used within [educationClass](educationclass.md).

## Properties

| Property     | Type   | Description                               |
| :----------- | :----- | :---------------------------------------- |
| courseNumber | String | Unique identifier for the course.         |
| description  | String | Description of the course.                |
| displayName  | String | Name of the course.                       |
| externalId   | String | ID of the course from the syncing system. |
| subject      | String | Subject of the course.                    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationCourse"
}-->

```json
{
  "courseNumber": "String",
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "subject": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationCourse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


