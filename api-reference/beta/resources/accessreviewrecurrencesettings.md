---
title: "accessReviewRecurrenceSettings resource type"
description: "Specifies that the access review recurs at regular intervals."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewRecurrenceSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewRecurrenceSettings** resource type is used in the [accessReviewSettings](accessreviewsettings.md) resource and specifies that the access review recurs at regular intervals.

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| recurrenceType | String | The recurrence interval. Possible vaules: `onetime`, `weekly`, `monthly`, `quarterly`, `halfyearly` or `annual`.                                                                   |
| recurrenceEndType | String | How the recurrence ends. Possible values: `never`, `endBy`, `occurrences`, or `recurrenceCount`. If it is `never`, then there is no explicit end of the recurrence series. If it is `endBy`, then the recurrence ends at a certain date. If it is `occurrences`, then the series ends after `recurrenceCount` instances of the review have completed. |
| durationInDays | Int32 | The duration in days for recurrence. |
| recurrenceCount | Int32 | The count of recurrences, if the value of **recurrenceEndType** is `occurrences`, or 0 otherwise. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewRecurrenceSettings"
}-->
```json
{
  "recurrenceType": "string",
  "recurrenceEndType": "string",
  "durationInDays": 1024,
  "recurrenceCount": 1024
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "accessReviewRecurrenceSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->