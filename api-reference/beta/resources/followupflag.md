---
title: "followupFlag resource type"
description: "Allows setting a flag for the user to follow up on an item later. Supported items include message and contact."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: ""
---

# followupFlag resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows setting a flag for the user to follow up on an item later. Supported items include [message](message.md) and [contact](contact.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|completedDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time that the follow-up was finished.|
|dueDateTime|**dateTimeTimeZone**|The date and time that the follow-up is to be finished.|
|flagStatus|String|The status for follow-up for an item. Possible values are `notFlagged`, `complete`, and `flagged`.|
|startDateTime|**dateTimeTimeZone**|The date and time that the follow-up is to begin.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.followupFlag"
}-->

```json
{
  "completedDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "dueDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "flagStatus": "String",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "followupFlag resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
