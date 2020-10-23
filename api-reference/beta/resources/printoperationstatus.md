---
title: printOperationStatus resource type
description: Represents the current status of a long-running Universal Print operation.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printOperationStatus complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of a long-running Universal Print operation.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|printOperationProcessingState|The printOperation's current processing state. Valid values are described in the following table. Read-only.|
|description|String|A human-readable description of the printOperation's current processing state. Read-only.|

### printOperationProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|notStarted|0|The operation has not yet started.|
|running|1|The operation is running.|
|succeeded|2|The operation completed successfully.|
|failed|3|The operation failed.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printOperationStatus"
}-->

```json
{
    "state": "String",
    "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printOperationStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

