---
title: "playPromptOperation resource type"
description: "The playPrompt operation to obtain the result of the playPrompt action."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# playPromptOperation resource type

Namespace: microsoft.graph

The playPrompt operation to obtain the result of the playPrompt action.

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | Unique Client Context string. Max limit is 256 chars.                              |
| id                  | String                      | Read-only.                                                                         |
| resultInfo          | [resultInfo](resultinfo.md) | The result information. Read-only.                                |
| status              | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`.               |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.playPromptOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "playPromptOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

