---
title: "skypeForBusinessParticipantActivityUserCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "kszb"
---

# skypeForBusinessParticipantActivityUserCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| im                | Int64  |
| audioVideo        | Int64  |
| appSharing        | Int64  |
| web               | Int64  |
| dialInOut3rdParty | Int64  |
| reportRefreshDate | Date   |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.skypeForBusinessParticipantActivityUserCounts"
} -->

```json
{
  "im": 1024,
  "audioVideo": 196,
  "appSharing": 196,
  "web": 196,
  "dialInOut3rdParty": 196,
  "reportRefreshDate": "Date",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```


