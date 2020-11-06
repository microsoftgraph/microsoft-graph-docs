---
title: "audioDuckingConfiguration resource type"
description: "Parameters for ducking of other sources (phasing in and out of other sources.)"
author: "ananmishr"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# audioDuckingConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Parameters for ducking of other sources (phasing in and out of other sources.)

## Properties

| Property      | Type     | Description                                                                     |
| :------------ | :------- | :-------------------------------------------------------------------------------|
| lowerLevel    | Int64    | The volume of sources in percent when the sources are being ducked.             |
| rampActive    | Int64    | The amount of time (in milliseconds) it takes for ducked sources to "fade out". |
| rampInactive  | Int64    | The amount of time (in milliseconds) it takes for ducked sources to "fade in".  |
| upperLevel    | Int64    | The volume of sources in percent when the sources are not being ducked.         |

> **Note:** Ramp duration cannot be more than 5,000 milliseconds.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioDuckingConfiguration"
}-->
```json
{
  "lowerLevel": 20,
  "rampActive": 1000,
  "rampInactive": 1000,
  "upperLevel": 100
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "audioDuckingConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


