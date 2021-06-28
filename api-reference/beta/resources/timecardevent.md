---
title: "timeCardEvent resource type"
description: "Represents a specific timecard event."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeCardEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific [timeCard](timecard.md) event.

## Properties
|Property               |Type           |Description                                                                |
|-----------------------|---------------|---------------------------------------------------------------------------|
| dateTime 			        |`Edm.dateTimeOffset`  |The time the entry is recorded. |
| atApprovedLocation |`Edm.boolean `  |Indicates whether the entry was recorded at the approved location. |
| notes			        |[itemBody](itembody.md)  | Notes about the **timeCardEvent**.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCardEvent"
}-->
```json
{
   "atApprovedLocation":true,
   "notes":{ "@odata.type":"microsoft.graph.itemBody" }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeCardEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
