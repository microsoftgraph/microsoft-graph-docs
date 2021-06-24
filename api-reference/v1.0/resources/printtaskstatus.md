---
title: printTaskStatus resource type
description: Represents the current execution status of a printTask.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printTaskStatus resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents the current execution status of a [printTask](printtask.md). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|state|printTaskProcessingState|The current processing state of the [printTask](printtask.md). Valid values are described in the following table.|
|description|String|A human-readable description of the current processing state of the [printTask](printtask.md).|

### printTaskProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|pending|0|Task execution is pending.|
|processing|1|Task execution is in progress.|
|completed|2|Task execution has completed.|
|aborted|3|Task execution was aborted.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printTaskStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTaskStatus",
  "state": "String",
  "description": "String"
}
```

