---
title: "timeCardEntry resource type"
description: "Represents a specific timecard entry."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeCardEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific [timeCard](timecard.md) entry.

## Properties
|Property               |Type           |Description                                                                |
|-----------------------|---------------|---------------------------------------------------------------------------|
| clockInEvent       |`self.timeCardEvent`    | The clock-in event of the `timeCard`                                           |
| clockOutEvent			        |`self.timeCardEvent`  |The clock-out event of the `timeCard` |
| breaks 	|`Collection(self.timeCardBreak)`    |The list of breaks associated with the `timeCard`|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCardEntry"
}-->
```json
{
    "clockInEvent":{
      "dateTime":"String (timestamp)",
      "atApprovedLocation":true,
      "notes":null
   },
   "clockOutEvent":null,
   "breaks":[
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
                 "content": "Started my break 5 minutes early",
                 "contentType": "text"
            },
         },
         "end":null
      }
   ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timecardentry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
