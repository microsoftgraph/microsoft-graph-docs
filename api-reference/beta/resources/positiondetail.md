---
title: "positionDetail resource type"
description: "positionDetail resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# positionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about positions related to entities within a user's [profile](profile.md).

## Properties

| Property       | Type                             | Description                                            |
|:---------------|:---------------------------------|:-------------------------------------------------------|
|company         |[companyDetail](companydetail.md) | Detail about the company or employer.                  |
|description     |String                            | Description of the position in question.               |
|endMonthYear    |Date                              | When the position ended.                               |
|jobTitle        |String                            | The title held when in that position.                  |
|role            |String                            | The role the position entailed.                        |
|startMonthYear  |Date                              | The start month and year of the position.              |
|summary         |String                            |Short summary of the position.                          |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.positionDetail",
  "baseType": null
}-->

```json
{
  "company": {"@odata.type": "microsoft.graph.companyDetail"},
  "description": "String",
  "endMonthYear": "String (timestamp)",
  "jobTitle": "String",
  "role": "String",
  "startMonthYear": "String (timestamp)",
  "summary": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "positionDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

