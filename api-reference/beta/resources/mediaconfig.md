---
title: "mediaConfig resource type"
description: "The media configuration used to connect to a call."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# mediaConfig resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The media configuration used to connect to a call.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| removeFromDefaultAudioGroup | Boolean |  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "removeFromDefaultAudioGroup"
  ],
  "@odata.type": "microsoft.graph.mediaConfig"
}-->
```json
{
  "removeFromDefaultAudioGroup": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mediaConfig resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
