---
title: "mediaPrompt resource type"
description: "The mediaPrompt type."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# mediaPrompt resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The mediaPrompt type.

## Properties

| Property    | Type                      | Description                                                                     |
| :---------- | :------------------------ | :------------------------------------------------------------------------------ |
| loop        | Int32                     | The loop count. 0 value indicates to loop infinitely. The default value is `1`. |
| mediaInfo   | [mediaInfo](mediainfo.md) | The media information                                                           |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mediaPrompt"
}-->

```json
{
  "loop": 1024,
  "mediaInfo": { "@odata.type": "#microsoft.graph.mediaInfo" }
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.mediaPrompt"
}-->
```json
{
  "mediaInfo": {
    "uri": "https://cdn.contoso.com/beep.wav",
    "resourceId": "1D6DE2D4-CD51-4309-8DAA-70768651088E"
  },
  "loop": 5
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mediaPrompt resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
