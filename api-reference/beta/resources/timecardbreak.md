---
title: "timeCardBreak resource type"
description: "Represents a specific timecard break."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeCardBreak resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific [timeCard](timecard.md) break.

## Properties
|Property               |Type           |Description                                                                |
|-----------------------|---------------|---------------------------------------------------------------------------|
| breakId			        |`Edm.string`  |Id of the `timeCardBreak`|
| start			        |`self.timeCardEvent`    | The start event of the `timeCardBreak`                                                   |
| end			        |`self.timeCardEvent`    | The start event of the `timeCardBreak`                                                 |
| notes			        |`microsoft.graph.itemBody`  | Notes about the `timeCardBreak`                                                 |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCardBreak"
}-->
```json
{
    "breakId":"string",
    "notes":{
        "content": "Lunch break",
        "contentType": "text"
    },
    "start":{
        "dateTime":"String (timestamp)",
        "atApprovedLocation":true,
        "notes":{
            "content": "Starting break late to make up for late clockin",
            "contentType": "text"
        },
    },
    "end":null
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeCardBreak resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
