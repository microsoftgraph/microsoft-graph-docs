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

Represents the course information for a class. It is used within [educationClass](educationclass.md).

## Properties

| Property     | Type   | Description                               |
| :----------- | :----- | :---------------------------------------- |
| courseNumber | String | Unique identifier for the course.         |
| description  | String | Description of the course.                |
| displayName  | String | Name of the course.                       |
| externalId   | String | ID of the course from the syncing system. |
| subject      | String | Subject of the course.                    |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationCourse"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationCourse",
  "subject": "String",
  "courseNumber": "String",
  "description": "String",
  "displayName": "String",
  "externalId": "String"
}
```
