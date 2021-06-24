---
title: "educationTerm resource type"
description: "A term. This represents a designated portion of the academic year. It is used within educationClass."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationTerm resource type

Namespace: microsoft.graph

A term. This represents a designated portion of the academic year. It is used within [educationClass](educationclass.md).

## Properties

| Property    | Type   | Description                       |
| :---------- | :----- | :-------------------------------- |
| displayName | String | Display name of the term.         |
| externalId  | String | ID of term in the syncing system. |
| startDate   | Date   | Start of the term.                |
| endDate     | Date   | End of the term.                  |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationTerm"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationTerm",
  "externalId": "String",
  "startDate": "Date",
  "endDate": "Date",
  "displayName": "String"
}
```
