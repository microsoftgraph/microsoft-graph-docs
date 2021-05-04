---
title: "accessPackageAnswer resource type"
description:  "The complex type for answers to an accessPackageQuestion that are stored on an accessPackageAssignmentRequest."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The complex type of a requestor's provided answer to an [accessPackageQuestion](../resources/accesspackagequestion.md). The actual answer will be a subtype of this complex type, either [accessPackageAnswerString](../resources/accesspackageanswerstring.md) or [accessPackageAnswerChoice](../resources/accesspackageanswerchoice.md). These answers will be stored on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answeredQuestion|[accessPackageQuestion](../resources/accesspackagequestion.md)|The question the answer is for. Required and Read-only.|
|displayValue|String|The display value of the answer. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAnswer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAnswer",
  "displayValue": "String",
  "answeredQuestion": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```

