---
title: "accessPackageTextInputQuestion resource type"
description: "Child of accessPackageQuestion that has text input as the question's answer format."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageTextInputQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A child of **accessPackageQuestion** that has text input as an answer.

Inherits from [accessPackageQuestion](../resources/accesspackagequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the question. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isRequired|Boolean|Indicates whether the requestor is required to supply an answer or not. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isSingleLineQuestion|Boolean|Indicates whether the answer will be in single or multiple line format.|
|sequence|Int32|Relative position of this question when displaying a list of questions to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|text|[accessPackageLocalizedContent](../resources/accesspackagelocalizedcontent.md)|The text of the question to show to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageTextInputQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
  "id": "String (identifier)",
  "isRequired": "Boolean",
  "text": {
    "@odata.type": "microsoft.graph.accessPackageLocalizedContent"
  },
  "sequence": "Integer",
  "isSingleLineQuestion": "Boolean"
}
```

