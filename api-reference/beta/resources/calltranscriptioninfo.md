---
title: "callTranscriptionInfo resource type"
description: "Represents a single DTMF event."
author: "rzhang"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# callTranscriptionInfo resource type

Namespace: microsoft.graph

Represents a single DTMF event.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| state | String | Possible values are: `notStarted`, `active`, `inactive`. |
| lastModifiedDateTime | DateTime | The state modified time in UTC. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.callTranscriptionInfo"
}-->
```json
{
  "state": "notStarted | active | inactive",
  "lastModifiedDateTime": "String (timestamp)"
}
```
