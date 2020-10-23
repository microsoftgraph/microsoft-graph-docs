---
title: "rubricQualitySelectedColumnModel resource type"
description: "Indicates the rubricLevel selected by the teacher when grading an educationRubric"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# rubricQualitySelectedColumnModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the [rubricLevel](rubriclevel.md) selected by the teacher when grading an [educationRubric](educationrubric.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|columnId|String|ID of the selected level for this quality.|
|qualityId|String|ID of the associated quality.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricQualitySelectedColumnModel",
  "baseType": null
}-->

```json
{
  "columnId": "String",
  "qualityId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricQualitySelectedColumnModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

