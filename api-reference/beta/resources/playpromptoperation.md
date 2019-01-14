---
title: "playPromptOperation resource type"
description: "The playPrompt operation to obtain the result of the playPrompt action."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# playPromptOperation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The playPrompt operation to obtain the result of the playPrompt action.

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | The client context.                                                                |
| completionReason    | String                      | Possible values are: `unknown`, `completedSuccessfully`, `mediaOperationCanceled`. |
| createdDateTime     | DateTimeOffset              | The start time of the operation.                                                   |
| id                  | String                      | Read-only.                                                                         |
| lastActionDateTime  | DateTimeOffset              | The time of the last action of the operation.                                      |
| resultInfo          | [resultInfo](resultInfo.md) | The result information. Read-only. Server generated.                               |
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
  "completionReason": "unknown | completedSuccessfully | mediaOperationCanceled",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "playPromptOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
