---
title: "accessPackageQuestion resource type"
description: "The complex type for questions configured on an access package assignment policy."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the `accessPackageQuestion` property of an [access package assignment policy](accesspackageassignmentpolicy.md). 

Subtypes include [accessPackageTextInputQuestions](accesspackagetextinputquestion.md) and [accessPackageMultipleChoiceQuestions](accesspackagemultiplechoicequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| ID of the question.|
|isRequired|Boolean| Whether the requestor is required to supply an answer or not.|
|sequence|Int32| Relative position of this question when displaying a list of questions to the requestor.|
|text|[accessPackageLocalizedContent](../resources/accesspackagelocalizedcontent.md)|The text of the question to show to the requestor.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageQuestion",
  "id": "String (identifier)",
  "isRequired": "Boolean",
  "text": {
    "@odata.type": "microsoft.graph.accessPackageLocalizedContent"
  },
  "sequence": "Integer"
}
```

