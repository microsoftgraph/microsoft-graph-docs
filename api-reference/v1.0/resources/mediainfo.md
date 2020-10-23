---
title: "mediaInfo resource type"
description: "The media information used in actions for prompts."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# mediaInfo resource type

Namespace: microsoft.graph

The media information used in actions for prompts.

## Properties
| Property	     | Type	   | Description                      |
|:---------------|:--------|:---------------------------------|
| resourceId     | String  | Optional. Used to uniquely identity the resource. If passed in, the prompt uri will be cached against this resourceId as a key. |
| uri            | String  | Path to the prompt that will be played. Currently supports only Wave file (.wav) format, single-channel, 16-bit samples with a 16,000 (16KHz) sampling rate. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mediaInfo"
}-->
```json
{
  "resourceId": "String",
  "uri": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mediaInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

