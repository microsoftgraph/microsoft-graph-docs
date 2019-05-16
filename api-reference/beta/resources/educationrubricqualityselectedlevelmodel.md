---
title: "educationRubricQualitySelectedLevelModel resource type"
description: "Selected level for one quality of a rubric"
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# educationRubricQualitySelectedLevelModel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Selected level for one [educationRubricQuality](educationrubricquality.md) of an [educationRubric](educationrubric.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|qualityId|String|Id of the quality for which this feedback is given.|
|levelId|String|The id of the selected level.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricQualitySelectedLevelModel"
}-->

```json
{
  "qualityId": "String",
  "levelId": "String",
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubricQualitySelectedLevelModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
