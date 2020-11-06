---
title: "timeRange resource type"
description: "A time range resource with a start and end time."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# timeRange resource type

Namespace: microsoft.graph

A time range resource with a start and end time.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endTime|TimeOfDay|End time for the time range.|
|startTime|TimeOfDay|Start time for the time range.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeRange",
  "baseType": null
}-->

```json
{
  "endTime": "String (timestamp)",
  "startTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
