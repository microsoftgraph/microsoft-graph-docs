---
title: "operation resource type"
description: "The status of a long-running operation."
localization_priority: Normal
author: "billbliss"
ms.prod: ""
doc_type: resourcePageType
---

# operation resource type

Namespace: microsoft.graph

The status of a long-running operation.

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.operation"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "notStarted | running | completed | failed"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime| DateTimeOffset |The start time of the operation.|
|lastActionDateTime| DateTimeOffset |The time of the last action of the operation.|
|status|operationStatus|The current status of the operation: `notStarted`, `running`, `completed`, `failed` |

<!-- uuid: 13fa92b1-3b41-498b-aab1-f943464a124f
2018-03-30 10:29:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

