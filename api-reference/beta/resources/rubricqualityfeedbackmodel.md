---
title: "rubricQualityFeedbackModel resource type"
description: "Feedback related to a specific quality of an educationRubric"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# rubricQualityFeedbackModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Feedback related to a specific [quality](rubricquality.md) of an [educationRubric](educationrubric.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|feedback|[itemBody](itembody.md)|Specific feedback for one quality of this rubric.|
|qualityId|String|The ID of the [rubricQuality](rubricquality.md) that this feedback is related to.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricQualityFeedbackModel",
  "baseType": null
}-->

```json
{
  "feedback": {"@odata.type": "microsoft.graph.itemBody"},
  "qualityId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricQualityFeedbackModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

