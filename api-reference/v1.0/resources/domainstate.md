---
title: "domainState resource type"
description: "Represents the status of asynchronous operations scheduled on a domain."
author: "adimitui"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# domainState resource type

Namespace: microsoft.graph

Represents the status of asynchronous operations scheduled on a domain.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| lastActionDateTime | DateTimeOffset | Timestamp for when the last activity occurred. The value is updated when an operation is scheduled, the asynchronous task starts, and when the operation completes. |
| operation | String | Type of asynchronous operation. The values can be *ForceDelete* or *Verification* |
| status | String | Current status of the operation. <br> *Scheduled* - Operation has been scheduled but has not started. <br> *InProgress* - Task has started and is in progress. <br> *Failed* - Operation has failed. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainState"
}-->

```json
{
  "lastActionDateTime": "String (timestamp)",
  "operation": "String",
  "status": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

