---
title: printOperationStatus resource type
description: Represents the current status of a long-running Universal Print operation.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printOperationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents the current status of a long-running Universal Print operation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
  "@odata.type": "microsoft.graph.printOperationStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printOperationStatus",
  "state": "String",
  "description": "String"
}
```

