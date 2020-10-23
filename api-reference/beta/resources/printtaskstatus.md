---
title: printTaskStatus resource type
description: Represents the current execution status of a printTask.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTaskStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current execution status of a [printTask](printtask.md). 

>**Note:** Applications that register task triggers are responsible for updating task statuses when processing is finished, unless the related print job has been redirected to another printer.

For details about how to use this resource to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
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
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTaskStatus"
}-->

```json
{
  "state": {"@odata.type": "microsoft.graph.printTaskProcessingState"},
  "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTaskStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


