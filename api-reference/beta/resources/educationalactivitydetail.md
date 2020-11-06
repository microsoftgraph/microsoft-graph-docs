---
title: "educationalActivityDetail resource type"
description: "educationalActivityDetail resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# educationalActivityDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents additional detail about an undergraduate, graduate, postgraduate degree or other educational activity that a user has undertaken and is used within an [educationalActivity](educationalActivity.md) resource.

## Properties

| Property     | Type        | Description                                                   |
|:-------------|:------------|:--------------------------------------------------------------|
|abbreviation  |String       |Shortened name of the degree or program (example: PhD, MBA)    |
|activities    |String       |Extracurricular activities undertaken alongside the program.   |
|awards        |String       |Any awards or honors associated with the program.              |
|description   |String       |Short description of the program provided by the user.         |
|displayName   |String       |Long-form name of the program that the user has provided.      |
|fieldsOfStudy |String       |Majors and minors associated with the program. (if applicable) |
|grade         |String       |The final grade, class, GPA or score.                          |
|notes         |String       |Additional notes the user has provided.                        |
|webUrl        |String       |Link to the degree or program page.                            |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationalActivityDetail",
  "baseType": null
}-->

```json
{
  "abbreviation": "String",
  "activities": "String",
  "awards": "String",
  "description": "String",
  "displayName": "String",
  "fieldsOfStudy": "String",
  "grade": "String",
  "notes": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationalActivityDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

